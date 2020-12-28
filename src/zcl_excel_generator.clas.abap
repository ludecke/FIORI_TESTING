class ZCL_EXCEL_GENERATOR definition
  public
  create public .

public section.

"MARTIN: Empty class


*"* public components of class ZCL_EXCEL_GENERATOR
*"* do not include other source files here!!!
  "interfaces /SAPSRM/IF_EXCEL_TYPES .

  types:
    begin of ty_xml_strings,
                 worksheet_id         type int4,
                 worksheet_part_id    type int4,
                 worksheet_part_count type int4,
                 part_xml_string      type xstring,
               end of ty_xml_strings .
  types:
    begin of ty_table_workbook_record,
                 worksheet_id type int4,
                 worksheet_name type string,
                 worksheet_xml_string  type xstring,
               end of ty_table_workbook_record .
  types:
    tt_xml_strings  type table of ty_xml_strings .
  types:
    tt_table_workbook_record  type table of ty_table_workbook_record .

  methods CREATE_XL_DOCUMENT
    importing
      !IV_FILE_NAME type STRING optional
      !IV_RETURN_CONTENT type ABAP_BOOL default SPACE
      "!IT_VALIDATION type /SAPSRM/IF_EXCEL_TYPES~TY_T_FLD_VALIDATION optional
    exporting
      !EV_CONTENT type XSTRING.
      "!EO_MESSAGE_HANDLER type ref to /SAPSRM/CL_EXCEL_MSG_HANDLER .
  methods INITIALIZE
    importing
      "!IV_XL_METADATA type /SAPSRM/T_XL_METADATA_INT optional
     " !IT_WORKBOOK_DATA type ZT_XL_WORKBOOK_DATA
      !IV_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB optional.
      "!IV_PROCESS_TYPE type ZPO_DOC_TYPE optional .
  protected section.
*"* protected components of class ZCL_EXCEL_GENERATOR
*"* do not include other source files here!!!
private section.

  types:
*"* private components of class ZCL_EXCEL_GENERATOR
*"* do not include other source files here!!!
    begin of ty_table_info,
              id type char10,
              type type string,
              target type string,
             end of ty_table_info .
  types:
    tt_table_info type table of ty_table_info .
  types:
    begin of ty_content_type,
              partname type string,
              contenttype type string,
             end of ty_content_type .
  types:
    tt_content_types type table of ty_content_type .
  types:
    begin of ty_window_def,
              windowheight type int4,
              windowwidth  type int4,
              xwindow      type int4,
              ywindow      type int4,
             end of ty_window_def .
  types:
    begin of ty_wsheet_meta,
              name      type string,
              id        type string,
              state     type string,
              sheetid   type string,
              "sheetmeta type /sapsrm/t_xl_sheet_meta,
              end of ty_wsheet_meta .
  types:
    tt_wsheet_meta type table of ty_wsheet_meta .

 " data GT_META_INFO type /SAPSRM/T_XL_METADATA_INT .
"  data GT_ALL_XMLS type TT_XML_STRINGS .
"  data GT_WORKBOOK_XML_RECS type TT_TABLE_WORKBOOK_RECORD .
"  data GV_FILE_NAME type STRING .
"  data GT_STRING_TAB type STRING_TABLE .
"  data GT_SORTED_STRING_TAB type /SAPSRM/T_XL_STRING_POS .
"  class-data GV_MSG_CLASS type SYMSGID value '/SAPSRM/EXCEL' ##NO_TEXT.  " .
"  data GO_MSG_HANDLER type ref to /SAPSRM/CL_EXCEL_MSG_HANDLER .
"  data MT_WORKBOOK_DATA type ZT_XL_WORKBOOK_DATA .
"  data AT_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB .
"  data AT_PROCESS_TYPE type ZPO_DOC_TYPE .

  methods GET_EXCEL_COL_POSITION
    importing
      !IV_COUNT type I
    returning
      value(EV_POSITION) type STRING .
  methods OUTPUT_XL_DOCUMENT
    importing
      !IV_RETURN_CONTENT type ABAP_BOOL
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_WORKBOOK_XML
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_WB2WS_RELS
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_XL2WB_RELS
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_CONTENT_TYPES_XML
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_DOCPROPS_APP_XML
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_DOCPROPS_CORE_XML
    returning
      value(RV_XSTRING) type XSTRING .
  methods GENERATE_SHARED_STRING_XML
    returning
      value(RV_XSTRING) type XSTRING .
  methods GET_SHARED_STRING_LOCATION
    importing
      !IV_STRING type STRING
    returning
      value(RV_LOCATION) type STRING .
  methods PREPARE_SHARED_STRING_TABLE .
  methods GENERATE_STYLES_XML
    returning
      value(RV_XSTRING) type XSTRING .
ENDCLASS.



CLASS ZCL_EXCEL_GENERATOR IMPLEMENTATION.


  METHOD create_xl_document.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                     &*
*& Created    : 08-Aug-2019                                           &*
*& Description: US 21916 - Excel Download                             &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*


  ENDMETHOD.                    "create_xl_document


  method GENERATE_CONTENT_TYPES_XML.


  endmethod.                    "GENERATE_CONTENT_TYPES_XML


  method GENERATE_DOCPROPS_APP_XML.

  endmethod.                    "GENERATE_DOCPROPS_APP_XML


  method GENERATE_DOCPROPS_CORE_XML.



  endmethod.                    "GENERATE_DOCPROPS_CORE_XML


  method GENERATE_SHARED_STRING_XML.



  endmethod.                    "GENERATE_SHARED_STRING_XML


  METHOD generate_styles_xml.




  ENDMETHOD.                    "GENERATE_STYLES_XML


  method GENERATE_WB2WS_RELS.

  endmethod.                    "GENERATE_WB2WS_RELS


  METHOD generate_workbook_xml.


  ENDMETHOD.                    "GENERATE_WORKBOOK_XML


  method GENERATE_XL2WB_RELS.


  endmethod.                    "GENERATE_XL2WB_RELS


  method GET_EXCEL_COL_POSITION.
* This method returns the column name like A, B, AH given the column number as input


  endmethod.                    "GET_EXCEL_COL_POSITION


  method GET_SHARED_STRING_LOCATION.


  endmethod.                    "GET_SHARED_STRING_LOCATION


  METHOD initialize.


  ENDMETHOD.                    "INITIALIZE


  METHOD output_xl_document.


  ENDMETHOD.                    "OUTPUT_XL_DOCUMENT


  METHOD prepare_shared_string_table.

*
  ENDMETHOD.                    "prepare_shared_string_table
ENDCLASS.
