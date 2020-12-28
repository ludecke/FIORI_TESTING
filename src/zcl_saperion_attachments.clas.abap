class ZCL_SAPERION_ATTACHMENTS definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IV_CLASSNAME type ZCLASSNAME default 'DEFAULT' .
  methods UPLOAD_ATTACHMENT
    importing
      value(IW_DATA) type XSTRING
      value(IW_FILENAME) type STRING
    exporting
      !EW_SAPERIONID type CHAR255
      !ES_ERROR type STRING .
  methods DOWNLOAD_ATTACHMENT
    importing
      value(IW_XHDOC) type STRING
    exporting
      !EW_CONTENT type XSTRING
      !EW_FILENAME type STRING
      !ES_ERROR type STRING .
  class-methods UPDATE_ATT_DATA .
  methods DELETE_ATTACHMENT
    importing
      !IW_XHDOC type STRING
    exporting
      !ES_ERROR type STRING .
  methods UPDATE_ATTACHMENT
    importing
      !IW_XHDOC type STRING
      !IW_FILENAME type STRING
    exporting
      !ES_ERROR type STRING .
  methods COPY_ATTACHMENT
    importing
      value(I_XHDOC) type STRING
      !I_ECS_UPL type CHAR1 optional
      !I_ONLY_ECS type CHAR1 optional
      !I_FILENAME type STRING optional
      !I_PR_IMPORT type CHAR1 optional
    exporting
      !E_ECS_FILE_PATH type ZECS_FOLDER_PATH
      !E_ECS_ERROR type STRING
      !E_XHDOC type STRING
      !EW_FILENAME type STRING
      !ES_ERROR type STRING .
  PROTECTED SECTION.
private section.

  data GV_PORT type ZSPRN_PORT .
  data GV_USERNAME type ZSPRN_TAG .
  data GV_PASSWORD type ZSPRN_HANDLE .
  data GV_ARCHIEVE_PORT type ZSPRN_ARCH_PORT .
  data GV_CLASSNAME type ZCLASSNAME .

  methods SAPERION_OPERATIONS
    importing
      value(IS_INPUT) type char1 optional
      value(IW_DATA) type XSTRING optional
      value(IW_FILENAME) type STRING optional
      !IW_INDICATOR type C
      !IW_SAPERION_FILE_ID type STRING optional
      value(IW_XHDOC) type STRING optional
    exporting
      !ES_SAPERIONID type CHAR255
      !EW_CONTENT type XSTRING
      !EW_FILENAME type STRING
      !ES_ERROR type STRING .
ENDCLASS.



CLASS ZCL_SAPERION_ATTACHMENTS IMPLEMENTATION.


  METHOD constructor.
"    CONSTANTS: lc_default TYPE Zsprn_clnts-classname VALUE 'GLOBUS'.
"    SELECT SINGLE classname, "NPSCC-31043
"                  username,
"                  password,
"                  auth_port,
"                  archieve_port
"             FROM Zsprn_clnts
"             INTO ( @gv_classname, @gv_username, @gv_password , @gv_port, @gv_archieve_port )"NPSCC-31043
"            WHERE classname = @iv_classname.
"    IF sy-subrc IS NOT INITIAL.
"      SELECT SINGLE classname, "NPSCC-31043
"                    username,
"                    password,
"                    auth_port,
"                    archieve_port
"               FROM Zsprn_clnts
"               INTO ( @gv_classname, @gv_username, @gv_password , @gv_port, @gv_archieve_port )"NPSCC-31043
"              WHERE classname = @lc_default.
"      IF sy-subrc IS NOT INITIAL.
"        CLEAR: gv_password, gv_port, gv_username.
"      ENDIF.
"    ELSE.
"      gv_classname  = iv_classname.
"    ENDIF.
"    IF gv_classname = 'DEFAULT'.
"      gv_classname = lc_default.
"    ENDIF.
  ENDMETHOD.


 METHOD copy_attachment.
"***********************************************************************
"* Author             : VIGSANK                                        *
"* Title              : Copy Attachment                                *
"* Date               : 01/01/2017                                     *
"* Module             : ProCure                                        *
"*_____________________________________________________________________*
"* DESCRIPTION ()                                                      *
"*  Copy attachments from Partner's Saperion storage to GLOBUS's       *
"*  Saperion storage. This is done to ensure that attachments are not  *
"*  lost even if Partner system decides to delete attachments.         *
"***********************************************************************
"    DATA: lo_saperion_att TYPE REF TO Zcl_saperion_attachments,
"          ls_saperionid   TYPE char255,
"          ls_token        TYPE string,
"          ls_xstring      TYPE xstring,
"          ls_stream       TYPE xstring,
"          ls_filename     TYPE string,
"          ls_error        TYPE string.
"    CLEAR : es_error, e_ecs_error, ew_filename, e_xhdoc, e_ecs_file_path,ls_filename,ls_saperionid. " NPSARCH 2192 18.03.2020
"*   Download based on the Saperion Object Key
"    IF lo_saperion_att IS NOT BOUND.
"      CREATE OBJECT lo_saperion_att
"        EXPORTING
"          iv_classname = gv_classname.    " Class name
"      ls_token = i_xhdoc.

"      lo_saperion_att->download_attachment(
"       EXPORTING
"          iw_xhdoc = ls_token
"*          i_classname = i_classname  "KAUSING*open attachment from f1light
"         IMPORTING
"          ew_content  = ls_xstring
"          ew_filename = ls_filename
"          es_error    = ls_error
"      ).
"      IF ls_error IS INITIAL.
"        ls_stream = ls_xstring.
"        ew_filename = ls_filename.
"      ELSE.
"        es_error = ls_error.
"      ENDIF.
"    ENDIF.

"*   Upload copy to Globus Saperion
"    IF ls_stream IS NOT INITIAL AND
"       lo_saperion_att IS BOUND.

"      IF i_only_ecs IS INITIAL. "PR ECS implementation

"        CALL METHOD lo_saperion_att->upload_attachment
"          EXPORTING
"            iw_data       = ls_xstring
"            iw_filename   = ls_filename
"          IMPORTING
"            ew_saperionid = ls_saperionid    " Saperion ID
"            es_error      = es_error.

"        IF ls_saperionid IS NOT INITIAL.
"          e_xhdoc = ls_saperionid.
"        ENDIF.
"      ENDIF.

"*     BoC - PR ECS implementation
"      SELECT SINGLE low FROM tvarvc
"             INTO @DATA(ls_ecs)
"             WHERE name = 'ZECS_ACTIVE'
"               AND type = 'P'.
"      IF sy-subrc IS INITIAL AND ls_ecs EQ 'X'. "ECS Check
"        IF i_ecs_upl IS NOT INITIAL OR
"           i_only_ecs IS NOT INITIAL.
"          DATA:go_ecs_operation TYPE REF TO Zcl_ecs_operation.        " ECS class
"          CREATE OBJECT go_ecs_operation.

"*         BoC - NPSARCH 1606 - Handling blank filename
"          IF ls_filename IS INITIAL.
"            ls_filename = i_filename.
"          ENDIF.
"*         EoC - NPSARCH 1606 - Handling blank filename

"** Begin of INS KAMUPPA NPSCC 28186 23.03.20220
"          IF i_pr_import IS NOT INITIAL AND i_filename IS NOT INITIAL.
"            ls_filename = i_filename.
"            ew_filename = ls_filename.      "NPSCC-30540/0054030179 - Attachment issue - For Globus
"          ENDIF.
"** End of INS KAMUPPA NPSCC 28186 23.03.20220
"          CALL METHOD go_ecs_operation->upload_attachment
"            EXPORTING
"              im_content       = ls_xstring
"              im_filename      = ls_filename
"            IMPORTING
"              lv_ecs_file_path = e_ecs_file_path
"              lv_error         = e_ecs_error.

"          IF e_ecs_error IS NOT INITIAL.
"            e_ecs_error = 'Connection issue occured during ECS attachment upload'.
"          ENDIF.
"        ENDIF.
"      ENDIF.
"*     EoC - PR ECS implementation
"    ENDIF.
  ENDMETHOD.


  METHOD delete_attachment.
"***********************************************************************
"* Author             : JVASUDE/VIGSANK                                *
"* Title              : Download Attachment                            *
"* Date               : 2017-08-25                                     *
"* Module             : Procure-(EPIC) PO: Process Requisition         *
"*                      in Sourcing Cockpit                            *
"*_____________________________________________________________________*
"* DESCRIPTION                                                         *
"*  US 370 - Saperion Attachment deletion via web service        *
"*                 using Doc ID                                        *
"***********************************************************************
"    DATA w_text TYPE string.
"*   Download attachment from Saperion.
"    me->saperion_operations(
"      EXPORTING
"        iw_xhdoc      = iw_xhdoc      " Saperion Doc ID
"        iw_indicator  = 'R'
"       " Indicator R = Remove
"      IMPORTING
"*        ew_content    = ew_content    " Downloaded content - XSTRING
"*        ew_filename   = ew_filename   " File Name
"        es_error      = w_text        "Error Comments
"    ).

"    IF w_text IS INITIAL.
"      CLEAR es_error.
"    ELSE.
"      es_error = w_text.
"    ENDIF.

  ENDMETHOD.


  METHOD download_attachment.
"***********************************************************************
"* Author             : JVASUDE/VIGSANK                                *
"* Title              : Download Attachment                            *
"* Date               : 2017-08-25                                     *
"* Module             : Procure-(EPIC) PR: Process Requisition         *
"*                      in Sourcing Cockpit                            *
"*_____________________________________________________________________*
"* DESCRIPTION                                                         *
"*  US 2015/1489 - Saperion Attachment Download via web service        *
"*                 using Doc ID                                        *
"***********************************************************************
"    DATA w_text TYPE string.
"*   Download attachment from Saperion.
"    me->saperion_operations(
"      EXPORTING
"        iw_xhdoc      = iw_xhdoc      " Saperion Doc ID
"        iw_indicator  = 'D'
"*        i_classname   = i_classname   " Classname  "KAUSING*open attachment from f1light
"       " Indicator D = Download
"      IMPORTING
"        ew_content    = ew_content    " Downloaded content - XSTRING
"        ew_filename   = ew_filename   " File Name
"        es_error      = w_text        "Error Comments
"    ).

"    IF w_text IS INITIAL.
"      CLEAR es_error.
"      EXIT.
"    ELSE.
"      es_error = w_text.
"    ENDIF.
  ENDMETHOD.


  METHOD saperion_operations.
"***********************************************************************
"* Author             : JVASUDE/VIGSANK                                *
"* Title              : Download Attachment                            *
"* Date               : 2017-08-25                                     *
"* Module             : Procure-(EPIC) PR: Process Requisition         *
"*                      in Sourcing Cockpit                            *
"*_____________________________________________________________________*
"* DESCRIPTION                                                         *
"*  US 2015/1489 - Saperion Attachment upload/download via web service *
"*               - Step 1: Login Saperion                              *
"*               - Step 2: Determine request: Upload/Download          *
"*               - Step 3: Use method Create_Content in case of Upload *
"*               - Step 4: Use method Get_Content in case of Download  *
"***********************************************************************
"*&----------------------------------------------&*
"    "Local Declarations
"    DATA: w_port_aut        TYPE prx_logical_port_name                 VALUE IS INITIAL,
"          "obj_authent       TYPE REF TO Zco_sa_ws_authentication  VALUE IS INITIAL,
"          w_text            TYPE string                                VALUE IS INITIAL,
"          obj_root          TYPE REF TO cx_root                        VALUE IS INITIAL,
"          "f_login_input     TYPE Zlogin1                          VALUE IS INITIAL,
"          "f_login_output    TYPE Zlogin_response1                 VALUE IS INITIAL,
"          w_port            TYPE prx_logical_port_name                 VALUE IS INITIAL,
"          "obj_archive       TYPE REF TO Zco_sa_ws_archive_service VALUE IS INITIAL,
"          w_token           TYPE string                                VALUE IS INITIAL.
"          "f_output          TYPE Zcreate_response1                VALUE IS INITIAL,
"          "f_content_i       TYPE Zget_content1                    VALUE IS INITIAL,
"          "f_content_o       TYPE Zget_content_response1           VALUE IS INITIAL,
"          "f_delete          TYPE Zdelete1                         VALUE IS INITIAL,
"          "f_delete_response TYPE Zdelete_response1                VALUE IS INITIAL,
"          "f_update          TYPE Zupdate1                         VALUE IS INITIAL,
"          "f_update_response TYPE Zupdate_response1                VALUE IS INITIAL,
"          "f_metadatas       TYPE Zsa_ws_property VALUE IS INITIAL.
"    "Local Constants
"    CONSTANTS: "c_port_aut   TYPE prx_logical_port_name VALUE 'SAPERION_AUTHENTICATION',      --- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"      c_mandat     TYPE string                VALUE 'GLOBUS',
"*               c_f1light    TYPE string                VALUE 'F1LIGHT',
"      c_login_type TYPE int4                  VALUE 3,
"      "c_port       TYPE string                VALUE 'SAPERION_ARCHIVE',                      --- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"      c_1          TYPE char1                 VALUE '1',
"      c_append     TYPE string                VALUE 'APPEND'.
"*-------------------------------------------------&*
"*-------------------------------------------------&*
"*Start of code for Saperion upload/Download functionality
"*   Get Saperion web service login details from variant table.

"    "Begin of changes -- JVASUDE -- 6th February,2020
"    "Changes for US: NPSARCH-1719 -- Handling of multiple SAPERION url/credentials
"    TRY.
"*        SELECT SINGLE low high FROM tvarvc
"*               INTO ( f_login_input-login-username,f_login_input-login-password )
"*               WHERE name = 'SAPERION_USERNAME'
"*                 AND type = 'S'
"*                 AND numb = '0001'.
"*        IF sy-subrc IS NOT INITIAL.
"*          EXIT.
"*        ENDIF.
"        "f_login_input-login-username = gv_username.
"        "f_login_input-login-password = gv_password.
"        "End of changes -- JVASUDE -- 6th February,2020
"        "Changes for US: NPSARCH-1719 -- Handling of multiple SAPERION url/credentials
"*       Move port details to login data
"        MOVE: "c_port_aut   TO w_port_aut,           "Port for authentication                     --- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"              gv_port      TO w_port_aut.                                                       "--- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"              "gv_classname TO f_login_input-login-mandant,"Mandat "NPSCC - 31043
"*              c_mandat     TO f_login_input-login-mandant,"Mandat "NPSCC - 31043
"              "c_login_type TO f_login_input-login-type."login type

"*       Begin of changes by KASUING*open attachment for f1light
"*        IF i_classname EQ 'F1Light'.
"*          MOVE: c_f1light TO f_login_input-login-mandant. "Mandat
"*        ENDIF.
"*       End of changes by KAUSING*open attachment from f1light

"*       Create object for SAPERION authentication
"        "CREATE OBJECT obj_authent
"         " EXPORTING
"          "  logical_port_name = w_port_aut.

"*       Login Webservice passing the credentials
"      "  CALL METHOD obj_authent->login
"       "   EXPORTING
"        "    input  = f_login_input
"         " IMPORTING
"          "  output = f_login_output.      "Output from the login session to Saperion

"*       Obtain token after successful Login
"       " w_token = f_login_output-login_response-return. "Token of the login session

"*     Get error message, if any.
"*     Error may occur when SAPERION web service is down.
"      CATCH cx_ai_system_fault INTO obj_root.
"        w_text = obj_root->get_text( ).
"    ENDTRY.

"*   Proceed with downloading/uploading if login was successful
"    IF w_text IS INITIAL.

"*     Create object for ARCHIVE service
"      TRY .
"*          MOVE: c_port TO w_port.           --- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"          MOVE: gv_archieve_port TO w_port. "--- NPSARCH-1719 -- 6th feb,2020 -- JVASUDE
"          "CREATE OBJECT obj_archive
"           ""  logical_port_name = w_port.

"*       Get error message, if any.
"*       Error may occur when SAPERION web service is down.
"        CATCH cx_ai_system_fault INTO obj_root.
"          w_text = obj_root->get_text( ).
"      ENDTRY.

"*     Check if request is for Download/Upload
"      IF iw_indicator = 'U'. "Upload
"        IF  w_text IS INITIAL.
"          "MOVE: w_token TO is_input-create-token.

"*         Passing 1 to Version Comment. This field is not relevant for
"*         SAPERION as well.
"          "is_input-create-version_comment = c_1.
"          "is_input-create-container-mode = c_append.
"          "APPEND INITIAL LINE TO is_input-create-container-content
"           "          ASSIGNING FIELD-SYMBOL(<fs_content>).
"          IF sy-subrc EQ 0.
"*           Populate file and content
"            "<fs_content>-filename = iw_filename.
"            "<fs_content>-position = 1.
"            "<fs_content>-content  = iw_data.
"          ENDIF.
"         " UNASSIGN: <fs_content>.

"*         Create attachment in SAPERION. If archival
"*         is successful, Doc ID will be returned
"          TRY.
"              CALL METHOD obj_archive->create
"                EXPORTING
"                  input  = is_input
"                IMPORTING
"                  output = f_output.

"*           Get error message, if any.
"*           Error may occur when SAPERION web service is down.
"            CATCH cx_root INTO obj_root.
"              w_text = obj_root->get_text( ).
"          ENDTRY.

"*         Send Doc ID as output
"          IF f_output IS NOT INITIAL.
"            MOVE:f_output-create_response-return-hdoc TO es_saperionid.
"          ENDIF.
"        ENDIF.

"      ELSEIF iw_indicator = 'D' . "Download
"*       Fill token and Doc ID
"        f_content_i-get_content-token           = w_token.
"        f_content_i-get_content-xhdoc           = iw_xhdoc.
"        f_content_i-get_content-element_number  = 1.

"*       Download data in XSTRING format
"        TRY .
"            CALL METHOD obj_archive->get_content        "Get content method to get the
"              EXPORTING                                 "File for a particular value of XHDOC
"                input  = f_content_i
"              IMPORTING
"                output = f_content_o.                   "output structure cotaining the file

"            ew_content = f_content_o-get_content_response-return-content. "Content
"            ew_filename = f_content_o-get_content_response-return-filename."Filename

"*         Get error message, if any.
"*         Error may occur when SAPERION web service is down.
"          CATCH cx_root INTO obj_root.
"            w_text = obj_root->get_text( ).
"        ENDTRY.

"      ELSEIF iw_indicator = 'R'. "Delete document

"*       Fill token and Doc ID
"        f_delete-delete-token           = w_token.
"        f_delete-delete-xhdoc           = iw_xhdoc.

"*       Download data in XSTRING format
"        TRY .
"            CALL METHOD obj_archive->delete
"              EXPORTING
"                input  = f_delete
"              IMPORTING
"                output = f_delete_response.



"*         Get error message, if any.
"*         Error may occur when SAPERION web service is down.
"          CATCH cx_root INTO obj_root.
"            w_text = obj_root->get_text( ).
"        ENDTRY.

"*&-----------------------------------------------------&*
"*&-----------------------------------------------------&*
"      ELSEIF iw_indicator = 'M'. "Delete document
"*   Delclarations of Constants
"        CONSTANTS: "_mandat   TYPE string VALUE 'COFICO',
"*               c_username TYPE string VALUE 'globus_s_proQ_ext_rw',
"*               c_password TYPE string VALUE 'proQCredentials2017_infosys',
"          c_ddc      TYPE string VALUE  'globusdokumente',
"          c_content  TYPE string VALUE 'COFICO10Y',
"          c_conttype TYPE string VALUE 'SYSCONTENTTYPE',
"          c_string   TYPE  string  VALUE 'String'.
"*&----------------------------------------------------------------------&*
"*       Fill token and Doc ID
"        f_content_i-get_content-token           = w_token.
"        f_content_i-get_content-xhdoc           = iw_xhdoc.
"        f_content_i-get_content-element_number  = 1.

"*       Download data in XSTRING format
"        TRY .
"            CALL METHOD obj_archive->get_content        "Get content method to get the
"              EXPORTING                                 "File for a particular value of XHDOC
"                input  = f_content_i
"              IMPORTING
"                output = f_content_o.                   "output structure cotaining the file

"*            ew_content = f_content_o-get_content_response-return-content. "Content
"*            ew_filename = f_content_o-get_content_response-return-filename."Filename

"*         Get error message, if any.
"*         Error may occur when SAPERION web service is down.
"          CATCH cx_root INTO obj_root.
"            w_text = obj_root->get_text( ).
"        ENDTRY.
"*&----------------------------------------------------------------------&*

"*       Fill token and Doc ID
"        f_update-update-token = w_token.
"        f_update-update-xhdoc = iw_xhdoc.
"*        f_update-update-metadatas = t_metadatas.


"        APPEND INITIAL LINE TO f_update-update-metadatas
"                ASSIGNING FIELD-SYMBOL(<fs_property>).
"        IF sy-subrc EQ 0.
"*      <fs_property>-type = c_string.
"*      <fs_property>-value = iw_data.
"          f_metadatas-name    = c_conttype.
"          f_metadatas-type    = c_string.
"          f_metadatas-value   = f_content_o-get_content_response-return-content.
"          APPEND f_metadatas TO f_update-update-metadatas.
"          CLEAR f_metadatas.
"        ENDIF.


"*         Passing 1 to Version Comment. This field is not relevant for
"*         SAPERION as well.
"        f_update-update-version_comment = c_1.
"        f_update-update-container-mode = c_append.
"        APPEND INITIAL LINE TO f_update-update-container-content
"                             ASSIGNING <fs_content>.
"        IF sy-subrc EQ 0.
"*           Populate file and content
"          <fs_content>-filename = iw_filename.
"          <fs_content>-position = 1.
"          <fs_content>-content  = f_content_o-get_content_response-return-content.
"        ENDIF.
"        UNASSIGN:<fs_content>.

"*       Download data in XSTRING format
"        TRY .
"            CALL METHOD obj_archive->update
"              EXPORTING
"                input  = f_update
"              IMPORTING
"                output = f_update_response.
"*              CATCH cx_ai_system_fault.    "
"*              CATCH Zcx_sa_ws_dbexception.    "
"*              CATCH Zcx_sa_ws_repository_exce.    "
"*              CATCH Zcx_sa_ws_exception.    "


"*         Get error message, if any.
"*         Error may occur when SAPERION web service is down.
"          CATCH cx_root INTO obj_root.
"            w_text = obj_root->get_text( ).
"        ENDTRY.



"*&-----------------------------------------------------&*
"*Update attachment data in Saperion


"      ENDIF.
"    ENDIF.

"*   Populate Error Comments
"    es_error = w_text.
  ENDMETHOD.


  method UPDATE_ATTACHMENT.
***********************************************************************
* Author             : JVASUDE/VIGSANK                                *
* Title              : Download Attachment                            *
* Date               : 2017-08-25                                     *
* Module             : Procure-(EPIC) PR: Process Requisition         *
*                      in Sourcing Cockpit                            *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
*  US 370 - Saperion Attachment deletion via web service        *
*                 using Doc ID                                        *
***********************************************************************
"    DATA w_text TYPE string.
"*   Download attachment from Saperion.
"    me->saperion_operations(
"      EXPORTING
"        iw_xhdoc      = iw_xhdoc      " Saperion Doc ID
"        iw_indicator  = 'M'
"       " Indicator M = Modify
"      IMPORTING
"*        ew_content    = ew_content    " Downloaded content - XSTRING
"*        ew_filename   = ew_filename   " File Name
"        es_error      = w_text        "Error Comments
"    ).

"    IF w_text IS INITIAL.
"      CLEAR es_error.
"    ELSE.
"      es_error = w_text.
"    ENDIF.

  endmethod.


  METHOD update_att_data.
**&------------------------------------------------------------------&*
**          Local Declarations
*    DATA: w_slug           TYPE string,
*          t_str            TYPE  STANDARD TABLE OF string,
*          obj_saperion_att TYPE REF TO Zcl_saperion_attachments,
*          w_saperionid     TYPE char255,
*          f_key_tab        TYPE /iwbep/s_mgw_name_value_pair,
*          w_objid          TYPE crmd_orderadm_h-object_id VALUE IS INITIAL,
*          t_key_tab        TYPE /iwbep/t_mgw_name_value_pair,
*          t_x_attach       TYPE STANDARD TABLE OF bbp_pds_att_t VALUE IS INITIAL,
*          t_attach         TYPE STANDARD TABLE OF bbp_pds_att_t VALUE IS INITIAL,
*          f_x_attach       TYPE bbp_pds_att_t VALUE IS INITIAL,
*          w_set_guid       TYPE bbp_guid VALUE IS INITIAL,
*          w_guid1          TYPE bbp_guid VALUE IS INITIAL,
*          obj_cos          TYPE REF TO Zcl_carry_out_sourcing VALUE IS INITIAL,
*          f_header         TYPE bbp_pds_po_header_d VALUE IS INITIAL,
*          f_changed_header TYPE bbp_pds_po_header_d,
*          f_header_u       TYPE bbp_pds_po_header_u,
*          w_internal_ind   TYPE bbp_att_internal VALUE IS INITIAL,
*          t_messages       TYPE STANDARD TABLE OF bbp_pds_messages,
*          w_changed(1)     TYPE c,
*          w_file_size      TYPE sdok_fsize VALUE IS INITIAL.
*
**&------------------------------------------------------------------&*
*
*
**&-----------------------------------------------------&*
**&-----------------------------------------------------&*
*
*        IF obj_cos IS NOT BOUND.
*          CREATE OBJECT obj_cos.
*        ENDIF.
*
**Get the Attachment details of the PO via the below BAPI.
*        CALL FUNCTION 'BBP_PD_PO_GETDETAIL'
*          EXPORTING
*            i_object_id = w_objid
*          IMPORTING
*            e_header    = f_header
*            et_attach   = t_attach.
**Also for further use... Create a new GUID that might be required if we are performing the Insert operation in BBP_PDATT.
*        CALL FUNCTION 'GUID_CREATE'
*          IMPORTING
*            ev_guid_16 = w_guid1.
*
***"-- Get latest GUID from PO.
**        DATA: l_class TYPE REF TO Zcl_carry_out_sourcing,
**              lv_guid TYPE bbp_guid.
*
**        CREATE OBJECT l_class.
*
*
**        CALL METHOD l_class->get_current_version_guid
**          EXPORTING
**            iv_object_id = w_objid   " Transaction ID
**          IMPORTING
**            ev_guid      = w_set_guid.   " Globally Unique identifier
*
**Get the current GUID that is linked to the PO number in SRM
*        CALL METHOD obj_cos->get_current_version_guid
*          EXPORTING
*            iv_object_id = w_objid   " Transaction ID
*          IMPORTING
*            ev_guid      = w_set_guid.   " Globally Unique identifier
**Now we loop on the incoming PO attachments from  FIORI and map the same to the structure for Updating BBP_PDATT
*
*        MOVE: w_slug   TO f_x_attach-description,       "File name is stored in description
*             'BBP_L_DOC'                 TO f_x_attach-loio_class,         "LOIO CLASS
*             w_saperionid TO f_x_attach-objkey.             "LOIO OBJKEY.
*
**Now we read the attachments linked to this PO and check if they are matchng the ones we got from FIORI
*        "If they match that means they are already present in BBP_PDATT and so this will be an UPDATE Scenario
*        "Otherwise it will be an insert scenario in which a new attachment is added from FIORI screen that needs to be saved to BBP_PDATT
*
*        SORT t_attach BY description ASCENDING creationtime DESCENDING.
*        READ TABLE t_attach ASSIGNING FIELD-SYMBOL(<fs_attach>) WITH KEY "guid = <fs_attachments>-guid
*                                                                          description = w_slug.
*        IF sy-subrc EQ 0.
*          MOVE: <fs_attach>-p_guid            TO f_x_attach-p_guid,               "Parent Guid..Guid of the PO
*                <fs_attach>-creationtime      TO f_x_attach-creationtime,  "Creation time
*                <fs_attach>-loio_objid        TO f_x_attach-loio_objid,       "LOIO_OBJID
*                <fs_attach>-guid              TO f_x_attach-guid,                   "GUID
*                <fs_attach>-internal_ind      TO f_x_attach-internal_ind,
*                <fs_attach>-phio_fsize        TO f_x_attach-phio_fsize,
*                <fs_attach>-changed_by        TO f_x_attach-changed_by,
*                abap_true                     TO f_key_tab-value,
*                'O'                           TO f_x_attach-phio_mode,
*            <fs_attach>-phio_class            TO f_x_attach-phio_class,
*            <fs_attach>-phio_objid            TO f_x_attach-phio_objid .
*
*          TRY.
*              CALL METHOD cl_abap_tstmp=>systemtstmp_syst2utc
*                EXPORTING
*                  syst_date = sy-datum
*                  syst_time = sy-uzeit
*                IMPORTING
*                  utc_tstmp = f_x_attach-changetime.    " UTC Time Stamp in Short Form (YYYYMMDDhhmmss)
*            CATCH cx_parameter_invalid_range.    "
*          ENDTRY.
*
*          .
*        ELSE.
*          MOVE: w_set_guid                    TO f_x_attach-p_guid,       "Parent Guid
*                w_guid1                       TO f_x_attach-loio_objid,            "LOIO OBJID
*                w_guid1                       TO f_x_attach-guid,                  "GUID
*                abap_false                    TO f_key_tab-value,
*                w_file_size                   TO f_x_attach-phio_fsize,
*                sy-uname                      TO f_x_attach-changed_by,
*                'N'                           TO f_x_attach-phio_mode,
*                'BBP_P_DOC'                   TO f_x_attach-phio_class,
*                w_guid1                       TO f_x_attach-phio_objid .
*
*          IF w_internal_ind = 'I'.                     "internal_ind.
*            f_x_attach-internal_ind = abap_true.
*          ELSEIF  w_internal_ind = 'E'.
*            f_x_attach-internal_ind = abap_false.
**          ELSE.
*          ENDIF.
*
*          TRY.
*              CALL METHOD cl_abap_tstmp=>systemtstmp_syst2utc
*                EXPORTING
*                  syst_date = sy-datum
*                  syst_time = sy-uzeit
*                IMPORTING
*                  utc_tstmp = f_x_attach-creationtime.    " UTC Time Stamp in Short Form (YYYYMMDDhhmmss)
*            CATCH cx_parameter_invalid_range.    "
*          ENDTRY.
*
*        ENDIF.
*
*        f_key_tab-name = 'Indicator'.
*        APPEND f_key_tab TO  t_key_tab.
*
*        APPEND f_x_attach TO t_x_attach.
*        CLEAR: f_x_attach.
*        UNASSIGN:<fs_attach>.
*
*
*        MOVE-CORRESPONDING f_header TO f_header_u.
*
*        CALL FUNCTION 'BBP_PD_PO_UPDATE'
*          EXPORTING
*            i_park     = abap_true
*            i_header   = f_header_u
*            i_save     = abap_false
*            it_attach  = t_x_attach
*          IMPORTING
*            e_changed  = w_changed
*            es_header  = f_changed_header
*          TABLES
*            e_messages = t_messages.
*
*        CALL FUNCTION 'BBP_PD_PO_SAVE'
*          EXPORTING
*            iv_header_guid = f_changed_header-guid.
*
*        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
*          EXPORTING
*            wait = abap_true.
*
**&--------------------------------------------------------&*
**&--------------------------------------------------------&*

  ENDMETHOD.


  METHOD upload_attachment.
"***********************************************************************
"* Author             : JVASUDE/VIGSANK                                *
"* Title              : Download Attachment                            *
"* Date               : 2017-08-25                                     *
"* Module             : Procure-(EPIC) PR: Process Requisition         *
"*                      in Sourcing Cockpit                            *
"*_____________________________________________________________________*
"* DESCRIPTION                                                         *
"*  US 2015/1489 - Saperion Attachment Upload via web service          *
"*                 using Doc ID                                        *
"***********************************************************************
"*   Local Delclarations
"    DATA: w_mandat    TYPE string VALUE IS INITIAL,
"          "w_username  TYPE string VALUE IS INITIAL,      --- NPSARCH-- 1719 -- 6th February,2020 -- JVASUDE
"          "w_password  TYPE string VALUE IS INITIAL,      --- NPSARCH-- 1719 -- 6th February,2020 -- JVASUDE
"          w_ddc       TYPE string VALUE IS INITIAL,
"          w_content   TYPE string VALUE IS INITIAL,
"          w_conttype  TYPE string VALUE IS INITIAL,
"          w_text      TYPE string,
"          f_input     TYPE Zcreate1 VALUE IS INITIAL,
"          f_metadatas TYPE Zsa_ws_property VALUE IS INITIAL.

"*   Delclarations of Constants
"    CONSTANTS: c_mandat   TYPE string VALUE 'GLOBUS',
"*               c_username TYPE string VALUE 'globus_s_proQ_ext_rw',
"*               c_password TYPE string VALUE 'proQCredentials2017_infosys',
"               c_ddc      TYPE string VALUE  'globusdokumente',
"               "c_content  TYPE string VALUE 'COFICO10Y',
"               c_conttype TYPE string VALUE 'SYSCONTENTTYPE',
"               c_string   TYPE  string  VALUE 'String'.

"    "Begin of changes -- JVASUDE -- 6th February,2020
"    "Changes for US: NPSARCH-1719 -- Handling of multiple SAPERION url/credentials
"*   Get login data from variant table.
"*    SELECT SINGLE low high FROM tvarvc
"*           INTO ( w_username, w_password )
"*           WHERE name = 'SAPERION_USERNAME'
"*             AND type = 'S'
"*             AND numb = '0001'.
"    "End of changes -- JVASUDE -- 6th February,2020
"    "Changes for US: NPSARCH-1719 -- Handling of multiple SAPERION url/credentials
"*   Configurations for uplaoding file to SAPERION
"    MOVE:
"         c_mandat   TO w_mandat,   "Get Mandat detials
"         c_ddc      TO w_ddc,      "Get DDC details
"*          c_content  TO w_content, "Content
"          c_conttype TO w_conttype."Content Type

"    f_input-create-definition = w_ddc.

"    APPEND INITIAL LINE TO f_input-create-metadatas
"                 ASSIGNING FIELD-SYMBOL(<fs_property>).
"    IF sy-subrc EQ 0.
"      <fs_property>-type = c_string.
"      <fs_property>-value = iw_data.
"      f_metadatas-name    = w_conttype.
"      f_metadatas-type    = c_string.
"      f_metadatas-value   = w_content.
"      APPEND f_metadatas TO f_input-create-metadatas.
"      CLEAR f_metadatas.
"    ENDIF.

"* BoC - NPSCC - 31084 Attachment from diff. SAPERION instance
"    CONSTANTS: lc_globus TYPE Zsprn_clnts-classname VALUE 'GLOBUS'.
"    SELECT SINGLE classname, "NPSCC-31043
"                  username,
"                  password,
"                  auth_port,
"                  archieve_port
"             FROM Zsprn_clnts
"             INTO ( @gv_classname, @gv_username, @gv_password , @gv_port, @gv_archieve_port )"NPSCC-31043
"            WHERE classname = @lc_globus.
"    IF sy-subrc IS NOT INITIAL.
"      CLEAR: gv_password, gv_port, gv_username.
"    ENDIF.
"* EoC - NPSCC - 31084 Attachment from diff. SAPERION instance

"*   Upload data to SAPERION and get DOC ID in return
"    me->saperion_operations(
"      EXPORTING
"        is_input      = f_input       " Proxy Structure (generated)
"        iw_data       = iw_data       " File data in XSTRING format
"        iw_filename   = iw_filename   " Filename
"        iw_indicator  = 'U'           " U = Upload
"      IMPORTING
"        es_saperionid = ew_saperionid " Char255
"        es_error      = w_text        "Error Comments
"    ).

"    IF w_text IS INITIAL.
"      CLEAR es_error.
"    ELSE.
"      es_error = w_text.
"    ENDIF.

  ENDMETHOD.
ENDCLASS.
