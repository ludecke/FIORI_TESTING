class ZCL_ECS_OPERATION definition
  public
  final
  create public .

public section.

  methods DELETE_ATTACHMENT
    importing
      value(IM_ECS_PATH) type ZECS_FOLDER_PATH optional
    exporting
      value(ES_ERROR) type STRING .
  methods UPLOAD_ATTACHMENT
    importing
      value(IM_CONTENT) type XSTRING optional
      value(IM_FILENAME) type STRING
    exporting
      value(LV_ECS_FILE_PATH) type ZECS_FOLDER_PATH
      value(LV_ERROR) type STRING .
  methods DOWNLOAD_ATTACHMENT
    importing
      value(IM_ECS_PATH) type ZECS_FOLDER_PATH optional
    exporting
      value(ES_XSTRING) type XSTRING
      value(ES_ERROR) type STRING .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ECS_OPERATION IMPLEMENTATION.


  METHOD DELETE_ATTACHMENT.
***********************************************************************
* Author             : KAUSING                                        *
* Title              : Delete Attachments from ECS                    *
* Date               : 08-11-2018                                     *
* Request            : DSQK910981                                     *
*_____________________________________________________________________*
* DESCRIPTION : Method to delete attachemnt to ECS                    *
***********************************************************************
*---------------------------------------------
* Data Declarations
*---------------------------------------------
    DATA: lo_http_client TYPE REF TO if_http_client,               "HTTP Client
          ls_method      TYPE string,                              "HTTP Method
          ls_body_hash   TYPE string,                              "Body Hash
          ls_uri         TYPE string,                              "URI
          ls_mime        TYPE sdokmime,                            "MIME
          ls_host        TYPE string,                              "Host
          ls_auth        TYPE string,                              "Authorization
          ls_tstamp      TYPE string,                              "Timestamp
          ls_fields      TYPE tihttpnvp,                           "Header Fields
          ls_bucket      TYPE string,                              "Bucket
          lv_id          TYPE string,                              "ID
          lv_id1         TYPE string,                              "ID
          ls_ecs_dest    TYPE char10,                              "ECS Destination
          lv_filename    TYPE string,
          ls_access_key  TYPE string,                              "Access Key
          ls_secret_key  TYPE string,                              "Secret key
          lv_clear       TYPE c,                                   "Clear
*          lv_filename    TYPE string,                              "File name
          lv_attach_type TYPE char1,                               "Attachment type
          lv_created_at  TYPE tzntstmps,                           "Created At
          lv_filename1   TYPE string,                              "Filename
          lv_filename2   TYPE string, "GUCHAND
          lv_ext_type    TYPE string,
          lv_timestamp   TYPE string.

*---------------------------------------------
* Clear Variables
*---------------------------------------------
    CLEAR: ls_method, ls_body_hash, ls_uri, ls_mime, ls_host, ls_auth, ls_tstamp, ls_fields,
           ls_bucket, ls_ecs_dest, ls_access_key, ls_secret_key, lv_created_at,
           lv_clear,  lv_filename, lv_attach_type, lv_id, lv_id1.

* Get ECS data.
* Fectch details required for ECS connection.
    SELECT name,
           value
      FROM Zecs_data
      INTO TABLE @DATA(lt_ecs_data)
      WHERE name IS NOT NULL.
    IF sy-subrc = 0.
      SORT lt_ecs_data BY name.
    ENDIF.

* Get ECS host
    READ TABLE lt_ecs_data ASSIGNING FIELD-SYMBOL(<fs_ecs_data>)
     WITH KEY name = 'ZECS_HOST' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_host = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Bucket
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_BUCKET' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_bucket = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Destination
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_DESTINATION' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_ecs_dest = <fs_ecs_data>-value.
    ENDIF.

* Get ECS access key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_ACCESS_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_access_key = <fs_ecs_data>-value.
    ENDIF.

* Get ECS secret key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_SECRET_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_secret_key = <fs_ecs_data>-value.
    ENDIF.

*   Create a HTTP Client based on preconfigured SM59 connection.
    CALL METHOD cl_http_client=>create_by_destination
      EXPORTING
        destination              = ls_ecs_dest
      IMPORTING
        client                   = lo_http_client
      EXCEPTIONS
        argument_not_found       = 1
        destination_not_found    = 2
        destination_no_authority = 3
        plugin_not_active        = 4
        internal_error           = 5
        OTHERS                   = 6.

    IF sy-subrc <> 0.
      CLEAR: lv_clear.               "Clear
    ELSE.
*   Set Protocol Version
      CALL METHOD lo_http_client->request->set_version
        EXPORTING
          version = if_http_request=>co_protocol_version_1_1.

*     Set HTTP method for download.
      ls_method = 'DELETE'.
      lo_http_client->request->set_method( 'DELETE' ).

    ENDIF.

*   URI compliance check.
    lv_filename = im_ecs_path.
    REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
*    lv_id1 = lv_id.

*   Encode URI
    CALL METHOD cl_http_utility=>escape_url
      EXPORTING
        unescaped = lv_filename
      RECEIVING
        escaped   = lv_filename.

    ls_uri = lv_filename.
*    CONCATENATE '/' lv_location '/' lv_id1 INTO ls_uri.

*   Set URI
    cl_http_utility=>set_request_uri(
                 request = lo_http_client->request
                 uri     = ls_uri ).

* Calculate Signature
    "CALL METHOD Zcl_ecs_storage=>calc_sign_v4
"      EXPORTING
"        i_aws_access_key = ls_access_key "Procross
"        i_aws_secret_key = ls_secret_key
"        i_bodyhash       = ls_body_hash
"        i_uri            = ls_uri
"        i_method         = ls_method
"        i_host           = ls_host
"      IMPORTING
"        e_auth_hdr       = ls_auth
"        e_tstamp         = ls_tstamp.

*   Set Host details in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'Host'    " Name of the header field
        value = ls_host.

* Set Auth. Signature in Header
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'Authorization'
        value = ls_auth ).

* For Reference
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'X-Authorization'
        value = ls_auth ).

* Set TimeStamp in ISO format in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'x-amz-date'    " Name of the header field
        value = ls_tstamp.

* Set SHA256 hashed payload
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'x-amz-content-sha256'
        value = ls_body_hash ).

* Verify Header Fields
    CALL METHOD lo_http_client->request->get_header_fields
      CHANGING
        fields = ls_fields.

* Send Request
    CALL METHOD lo_http_client->send
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3
        OTHERS                     = 4.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                 "Clear
        WHEN 2.
          CLEAR: lv_clear.                 "Clear
        WHEN 3.
          CLEAR: lv_clear.                 "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                 "Clear
      ENDCASE.
    ENDIF.

* Receive Response
    CALL METHOD lo_http_client->receive
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                "Clear
        WHEN 2.
          CLEAR: lv_clear.                "Clear
        WHEN 3.
          CLEAR: lv_clear.                "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                "Clear
      ENDCASE.
    ENDIF.
* Check Status
    CALL METHOD lo_http_client->response->get_status
      IMPORTING
        code   = DATA(lv_http_code)
        reason = DATA(lv_http_reason).

    IF NOT lv_http_code EQ 200.
* If error, pass error message
      DATA(lv_resp_error) = lo_http_client->response->get_cdata( ).
      es_error = lv_resp_error.
    ENDIF.
  ENDMETHOD.


  METHOD download_attachment.
***********************************************************************
* Author             : KAUSING                                        *
* Title              : Download Attachments from ECS                  *
* Date               : 08-11-2018                                     *
* Request            : DSQK910981                                     *
*_____________________________________________________________________*
* DESCRIPTION : Method to download attachemnt to ECS                  *
***********************************************************************
*---------------------------------------------
* Data Declarations
*---------------------------------------------
    DATA: lo_http_client TYPE REF TO if_http_client,               "HTTP Client
          ls_method      TYPE string,                              "HTTP Method
          ls_body_hash   TYPE string,                              "Body Hash
          ls_uri         TYPE string,                              "URI
          ls_mime        TYPE sdokmime,                            "MIME
          ls_host        TYPE string,                              "Host
          ls_auth        TYPE string,                              "Authorization
          ls_tstamp      TYPE string,                              "Timestamp
          ls_fields      TYPE tihttpnvp,                           "Header Fields
          ls_bucket      TYPE string,                              "Bucket
          lv_id          TYPE string,                              "ID
          lv_id1         TYPE string,                              "ID
          ls_ecs_dest    TYPE char10,                              "ECS Destination
          lv_filename    TYPE string,
          ls_access_key  TYPE string,                              "Access Key
          ls_secret_key  TYPE string,                              "Secret key
          lv_clear       TYPE c,                                   "Clear
*          lv_filename    TYPE string,                              "File name
          lv_attach_type TYPE char1,                               "Attachment type
          lv_created_at  TYPE tzntstmps,                           "Created At
          lv_filename1   TYPE string,                              "Filename
          lv_filename2   TYPE string, "GUCHAND
          lv_ext_type    TYPE string,
          lv_timestamp   TYPE string.

*---------------------------------------------
* Clear Variables
*---------------------------------------------
    CLEAR: ls_method, ls_body_hash, ls_uri, ls_mime, ls_host, ls_auth, ls_tstamp, ls_fields,
           ls_bucket, ls_ecs_dest, ls_access_key, ls_secret_key, lv_created_at,
           lv_clear,  lv_filename, lv_attach_type, lv_id, lv_id1.

* Get ECS data.
* Fectch details required for ECS connection.

      SELECT name,
             value
        FROM Zecs_data
        INTO TABLE @DATA(lt_ecs_data)
        WHERE name IS NOT NULL.
      IF sy-subrc = 0.
        SORT lt_ecs_data BY name.
      ENDIF.

* Get ECS host
    READ TABLE lt_ecs_data ASSIGNING FIELD-SYMBOL(<fs_ecs_data>)
     WITH KEY name = 'ZECS_HOST' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_host = <fs_ecs_data>-value.
    ENDIF.

* Get Body Hash - Empty
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_BODY_HASH' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_body_hash = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Bucket
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_BUCKET' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_bucket = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Destination
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_DESTINATION' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_ecs_dest = <fs_ecs_data>-value.
    ENDIF.

* Get ECS access key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_ACCESS_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_access_key = <fs_ecs_data>-value.
    ENDIF.

* Get ECS secret key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_SECRET_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_secret_key = <fs_ecs_data>-value.
    ENDIF.

*   Create a HTTP Client based on preconfigured SM59 connection.
    CALL METHOD cl_http_client=>create_by_destination
      EXPORTING
        destination              = ls_ecs_dest
      IMPORTING
        client                   = lo_http_client
      EXCEPTIONS
        argument_not_found       = 1
        destination_not_found    = 2
        destination_no_authority = 3
        plugin_not_active        = 4
        internal_error           = 5
        OTHERS                   = 6.

    IF sy-subrc <> 0.
      CLEAR: lv_clear.               "Clear
    ELSE.
*   Set Protocol Version
      CALL METHOD lo_http_client->request->set_version
        EXPORTING
          version = if_http_request=>co_protocol_version_1_1.

*     Set HTTP method for download.
      ls_method = 'GET'.
      lo_http_client->request->set_method( 'GET' ).

    ENDIF.

*   URI compliance check.
    lv_filename = im_ecs_path.
    REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
*    lv_id1 = lv_id.

*   Decode URI

*{ BOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
    SPLIT lv_filename AT '/' INTO DATA(ls_blank) DATA(ls_bucknam) DATA(ls_filename).
*       Encode URI
*        CALL METHOD cl_http_utility=>escape_url
*          EXPORTING
*            unescaped = ls_filename
*          RECEIVING
*            escaped   = ls_filename.

    ls_filename = escape( val = ls_filename format = cl_abap_format=>e_xss_url ).

    CONCATENATE '/' ls_bucknam '/' ls_filename INTO DATA(ls_tobeuri).

*} EOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian

*   Encode URI
    lv_filename = escape( val = lv_filename format = cl_abap_format=>e_xss_url ). "VIGSANK for Cloudian
*    CALL METHOD cl_http_utility=>escape_url
*      EXPORTING
*        unescaped = lv_filename
*      RECEIVING
*        escaped   = lv_filename.

    ls_uri = lv_filename.
*    CONCATENATE '/' lv_location '/' lv_id1 INTO ls_uri.


*   Set URI
    cl_http_utility=>set_request_uri(
                 request = lo_http_client->request
                 uri     = ls_uri ).


*{ BOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
    IF ls_tobeuri IS INITIAL.
      ls_uri = im_ecs_path.
    ELSE.
      REPLACE ALL OCCURRENCES OF '%2f' in ls_tobeuri WITH '/'.   " RKORADA NPSCC-31666 Attachments from icertis
      ls_uri =   ls_tobeuri.
    ENDIF.

*} EOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
* Calculate Signature
"    CALL METHOD Zcl_ecs_storage=>calc_sign_v4
"      EXPORTING
"        i_aws_access_key = ls_access_key "Procross
"        i_aws_secret_key = ls_secret_key
"        i_bodyhash       = ls_body_hash
"        i_uri            = ls_uri
"        i_method         = ls_method
"        i_host           = ls_host
"      IMPORTING
"        e_auth_hdr       = ls_auth
"        e_tstamp         = ls_tstamp.

*   Set Host details in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'Host'    " Name of the header field
        value = ls_host.

* Set Auth. Signature in Header
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'Authorization'
        value = ls_auth ).

* For Reference
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'X-Authorization'
        value = ls_auth ).

* Set TimeStamp in ISO format in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'x-amz-date'    " Name of the header field
        value = ls_tstamp.

* Set SHA256 hashed payload
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'x-amz-content-sha256'
        value = ls_body_hash ).

* Verify Header Fields
    CALL METHOD lo_http_client->request->get_header_fields
      CHANGING
        fields = ls_fields.

* Send Request
    CALL METHOD lo_http_client->send
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3
        OTHERS                     = 4.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                 "Clear
        WHEN 2.
          CLEAR: lv_clear.                 "Clear
        WHEN 3.
          CLEAR: lv_clear.                 "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                 "Clear
      ENDCASE.
    ENDIF.

* Receive Response
    CALL METHOD lo_http_client->receive
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                "Clear
        WHEN 2.
          CLEAR: lv_clear.                "Clear
        WHEN 3.
          CLEAR: lv_clear.                "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                "Clear
      ENDCASE.
    ENDIF.
* Check Status
    CALL METHOD lo_http_client->response->get_status
      IMPORTING
        code   = DATA(lv_http_code)
        reason = DATA(lv_http_reason).

    IF lv_http_code EQ 200.
* If success, pass stream
      DATA(lv_resp_get) = lo_http_client->response->get_data( ).
      es_xstring = lv_resp_get.
    ELSE.
      DATA(lv_resp_error) = lo_http_client->response->get_cdata( ).
* If error, pass error message
      es_error = lv_resp_error.
    ENDIF.
  ENDMETHOD.


  METHOD upload_attachment.
***********************************************************************
* Author             : KAUSING                                        *
* Title              : Upload Attachments from ECS                    *
* Date               : 08-11-2018                                     *
* Request            : DSQK910981                                     *
*_____________________________________________________________________*
* DESCRIPTION : Method to upload attachemnt to ECS                    *
***********************************************************************
*---------------------------------------------
* Data Declarations
*---------------------------------------------
    DATA: lo_http_client TYPE REF TO if_http_client,               "HTTP Client
          ls_method      TYPE string,                              "HTTP Method
          ls_body_hash   TYPE string,                              "Body Hash
          ls_uri         TYPE string,                              "URI
          ls_mime        TYPE sdokmime,                            "MIME
          ls_host        TYPE string,                              "Host
          ls_auth        TYPE string,                              "Authorization
          ls_tstamp      TYPE string,                              "Timestamp
          ls_fields      TYPE tihttpnvp,                           "Header Fields
          ls_bucket      TYPE string,                              "Bucket
          ls_ecs_dest    TYPE char10,                              "ECS Destination
          ls_access_key  TYPE string,                              "Access Key
          ls_secret_key  TYPE string,                              "Secret key
          lv_clear       TYPE c,                                   "Clear
          lv_filename    TYPE string,                              "File name
          lv_attach_type TYPE char1,                               "Attachment type
          lv_created_at  TYPE tzntstmps,                           "Created At
          lv_filename1   TYPE string,                              "Filename
          lv_filename2   TYPE string, "GUCHAND
          lv_ext_type    TYPE string,
          lv_offset      TYPE i,
          lv_len         TYPE i,
          lv_escfilename TYPE string,
          lv_timestamp   TYPE string.

*---------------------------------------------
* Clear Variables
*---------------------------------------------
    CLEAR: ls_method, ls_body_hash, ls_uri, ls_mime, ls_host, ls_auth, ls_tstamp, ls_fields,
           ls_bucket, ls_ecs_dest, ls_access_key, ls_secret_key, lv_created_at,
           lv_clear,  lv_filename, lv_attach_type, lv_offset, lv_len,lv_timestamp."KAMUPPA NPSCC-28186 20.03.2020

* Get ECS data.
* Fectch details required for ECS connection.
    SELECT name,
           value
      FROM Zecs_data
      INTO TABLE @DATA(lt_ecs_data)
      WHERE name IS NOT NULL.
    IF sy-subrc = 0.
      SORT lt_ecs_data BY name.
    ENDIF.

* Get ECS host
    READ TABLE lt_ecs_data ASSIGNING FIELD-SYMBOL(<fs_ecs_data>)
     WITH KEY name = 'ZECS_HOST' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_host = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Bucket
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_BUCKET' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_bucket = <fs_ecs_data>-value.
    ENDIF.

* Get ECS Destination
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_DESTINATION' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_ecs_dest = <fs_ecs_data>-value.
    ENDIF.

* Get ECS access key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_ACCESS_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_access_key = <fs_ecs_data>-value.
    ENDIF.

* Get ECS secret key
    READ TABLE lt_ecs_data ASSIGNING <fs_ecs_data>
     WITH KEY name = 'ZECS_SECRET_KEY' BINARY SEARCH.
    IF sy-subrc = 0.
      ls_secret_key = <fs_ecs_data>-value.
    ENDIF.

*   Create a HTTP Client based on preconfigured SM59 connection.
    CALL METHOD cl_http_client=>create_by_destination
      EXPORTING
        destination              = ls_ecs_dest
      IMPORTING
        client                   = lo_http_client
      EXCEPTIONS
        argument_not_found       = 1
        destination_not_found    = 2
        destination_no_authority = 3
        plugin_not_active        = 4
        internal_error           = 5
        OTHERS                   = 6.

    IF sy-subrc <> 0.
      CLEAR: lv_clear.
    ELSE.
*     Set Protocol Version
      CALL METHOD lo_http_client->request->set_version
        EXPORTING
          version = if_http_request=>co_protocol_version_1_1.

*     Set HTTP method for download.
      ls_method = 'PUT'.
      lo_http_client->request->set_method( 'PUT' ).
    ENDIF.

*   Calculate SHA256 for given HEX
"    TRY.
"        CALL METHOD Zcl_ecs_storage=>hash_sha256_for_hex
"          EXPORTING
"            i_xstring = im_content
"          RECEIVING
"            e_hash    = ls_body_hash.
"      CATCH cx_abap_message_digest.
"        CLEAR ls_body_hash.
"    ENDTRY.

*   Set Data to request
    lo_http_client->request->set_data( im_content ).

*   Prepare Request URI
*    e_filetype = ls_mime-extension.

    lv_len = strlen( im_filename ). "Npsarch 1579 *resolve dump isssue if the filename does not have extension
    FIND ALL OCCURRENCES OF '.' IN im_filename MATCH OFFSET lv_offset.
    lv_filename2 = im_filename+0(lv_offset).
    ADD 1 TO lv_offset.
    IF lv_offset LE lv_len. "Npsarch 1579 *resolve dump isssue if the filename does not have extension

      lv_ext_type = im_filename+lv_offset.
      CONDENSE lv_ext_type NO-GAPS. "KAMUPPA NPSCC-28186 20.03.2020
    ENDIF.  "Npsarch 1579 *resolve dump isssue if the filename does not have extension
*    SPLIT im_filename AT '.' INTO lv_filename2 lv_ext_type.
    "Begin of changes -- JVASUDE/KAMUPPA -- 24th march,2020 -- NPSCC-28186
    "Looks like SY-UZEIT get initialized only once in the same session
    "So timestamp remains the same for all ECS files. using GET TIMESTAMP instead
    GET TIME STAMP FIELD DATA(lv_tstamp).
    lv_timestamp = lv_tstamp.
*    CONCATENATE sy-datum sy-uzeit INTO lv_timestamp.
    "End of changes -- JVASUDE -- 24th march,2020
    CONCATENATE lv_filename2 lv_timestamp INTO lv_filename2 SEPARATED BY '_'.

*   URI compliance check.
    REPLACE ALL OCCURRENCES OF '\' IN lv_filename2 WITH '/'.

*   Encode URI
*    CALL METHOD cl_http_utility=>escape_url
*      EXPORTING
*        unescaped = lv_filename2
*      RECEIVING
*        escaped   = lv_filename1.
    MOVE: lv_filename2 TO lv_filename1.
    "VIGSANK for Cloudian

*   Encode URI

*{ BOC - RKORADA - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
    lv_escfilename = escape( val = lv_filename2 format = cl_abap_format=>e_xss_url ).

*   Set URI
    CONCATENATE '/' ls_bucket '/' lv_filename2 '.' lv_ext_type INTO lv_filename2.
    CONCATENATE '/' ls_bucket '/' lv_escfilename '.' lv_ext_type INTO lv_escfilename. "VIGSANK for cloudian
    CONCATENATE '/' ls_bucket '/' lv_filename1 '.' lv_ext_type INTO ls_uri.

*   Encode URI
    ls_uri = escape( val = ls_uri format = cl_abap_format=>e_xss_url )."VIGSANK for cloudian
*    CALL METHOD cl_http_utility=>escape_url
*      EXPORTING
*        unescaped = ls_uri
*      RECEIVING
*        escaped   = ls_uri.
*{ EOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
    cl_http_utility=>set_request_uri(
                 request = lo_http_client->request
                 uri     = ls_uri ).

*{ BOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian
    ls_uri = lv_escfilename.
*} EOC - RKORADA/VIGSANK - NPSARCH-1975 - Object Storage Change from ECS to Cloudian

*   Calculate Signature
"    CALL METHOD Zcl_ecs_storage=>calc_sign_v4
"      EXPORTING
"        i_aws_access_key = ls_access_key "Procross
"        i_aws_secret_key = ls_secret_key
"        i_bodyhash       = ls_body_hash
"        i_uri            = ls_uri
"        i_method         = ls_method
"        i_host           = ls_host
"      IMPORTING
"        e_auth_hdr       = ls_auth
        "e_tstamp         = ls_tstamp.

*   Set Host details in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'Host'    " Name of the header field
        value = ls_host.

* Set Auth. Signature in Header
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'Authorization'
        value = ls_auth ).

* For Reference
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'X-Authorization'
        value = ls_auth ).

* Set TimeStamp in ISO format in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'x-amz-date'    " Name of the header field
        value = ls_tstamp.

* Set ACL in Header
    CALL METHOD lo_http_client->request->set_header_field
      EXPORTING
        name  = 'x-amz-acl'    " Setting Permission
        value = 'authenticated-read'.
* Eoc - Check Permission

* Set SHA256 hashed payload
    CALL METHOD lo_http_client->request->set_header_field(
        name  = 'x-amz-content-sha256'
        value = ls_body_hash ).

* Send Request
    CALL METHOD lo_http_client->send
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3
        OTHERS                     = 4.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                 "Clear
        WHEN 2.
          CLEAR: lv_clear.                 "Clear
        WHEN 3.
          CLEAR: lv_clear.                 "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                 "Clear
      ENDCASE.
    ENDIF.

* Receive Response
    CALL METHOD lo_http_client->receive
      EXCEPTIONS
        http_communication_failure = 1
        http_invalid_state         = 2
        http_processing_failed     = 3.
    IF sy-subrc <> 0.
      CASE sy-subrc.
        WHEN 1.
          CLEAR: lv_clear.                "Clear
        WHEN 2.
          CLEAR: lv_clear.                "Clear
        WHEN 3.
          CLEAR: lv_clear.                "Clear
        WHEN OTHERS.
          CLEAR: lv_clear.                "Clear
      ENDCASE.
    ENDIF.
* Check Status
    CALL METHOD lo_http_client->response->get_status
      IMPORTING
        code   = DATA(lv_http_code)
        reason = DATA(lv_http_reason).

    IF lv_http_code EQ 200.
* If success, pass stream
      DATA(lv_resp_get) = lo_http_client->response->get_data( ).
      IF lv_resp_get IS NOT INITIAL.
        lv_ecs_file_path = lv_resp_get.
      ELSE.
        lv_ecs_file_path = lv_filename2.
      ENDIF.
    ELSE.
      DATA(lv_resp_error) = lo_http_client->response->get_cdata( ).
* If error, pass error message
      lv_error = lv_resp_error.
    ENDIF.


    CALL METHOD lo_http_client->close( ). " prevents 'No Memory for processing HTTP, HTTPS or SMTP queries'

  ENDMETHOD.
ENDCLASS.
