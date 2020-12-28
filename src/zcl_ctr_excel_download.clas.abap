CLASS zcl_ctr_excel_download DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_fldpos, "NPSCC - 32139 Price Split LC
        part      TYPE int4,
        vper_from TYPE int4,
        vper_to   TYPE int4,
      END OF ty_fldpos .

    METHODS generate_excel_stream
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS generate_excel_init_large_ctr
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
        !it_sheet_data   TYPE zt_xl_sheet_meta OPTIONAL
        !im_ctrguid      TYPE guid OPTIONAL
        !im_condstr      TYPE string OPTIONAL
        !im_emptyrows    TYPE int2 OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS update_epu_error_large_ctr
      IMPORTING
        !im_ctrguid  TYPE guid
        !it_avob_err TYPE zt_pd_avob_dt OPTIONAL .
    METHODS parse_excel
      IMPORTING
        !im_xstring    TYPE xstring
        !im_newcolkey  TYPE zt_xl_cols_meta OPTIONAL
        !im_split_dt   TYPE dats OPTIONAL
        !im_fldpos     TYPE ty_fldpos OPTIONAL
      EXPORTING
        !et_sheet_data TYPE zt_xl_sheet_meta .
    METHODS parse_large_contract
      IMPORTING
        !iv_slug           TYPE string
        !is_media_resource TYPE /iwbep/if_mgw_appl_types=>ty_s_media_resource
      EXPORTING
        !ex_return         TYPE bapiret2
        !ex_entity         TYPE zlarge_ctr_upld_res .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CTR_EXCEL_DOWNLOAD IMPLEMENTATION.


  METHOD generate_excel_init_large_ctr.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Swathi Reddy Dendi(SWDENDI)                 &*
*& Created    : 08-Jul-2020                                           &*
*& Description: US 28965 - NPM Excel Download                         &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*



  ENDMETHOD.


  METHOD generate_excel_stream.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Swathi Reddy Dendi(SWDENDI)                 &*
*& Created    : 08-Jul-2020                                           &*
*& Description: US 28965 - NPM Excel Download                         &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*


  ENDMETHOD.


  METHOD parse_excel.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Vignesh Sankar (VIGSANK)                    &*
*& Created    : 02-Nov-2020                                           &*
*& Description: US 30737 - Download Large Contract                    &*
*&--------------------------------------------------------------------&*
*& This method creates metadata of excel considering contract items   &*
*&--------------------------------------------------------------------&*

  ENDMETHOD.


  METHOD parse_large_contract.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Vignesh Sankar (VIGSANK)                    &*
*& Created    : 02-Nov-2020                                           &*
*& Description: US 30223 - Parse Large Contract                       &*
*&--------------------------------------------------------------------&*
*& This method parse large contract excel and also validates the file &*
*& structure and missing header fields. Also schedules job for backend&*
*& validations                                                        &*
*&--------------------------------------------------------------------&*


  ENDMETHOD.


  METHOD update_epu_error_large_ctr.
*----------------------------------------------------------------------*
*& Class      : ZCL_EXCEL_DOWNLOAD                               &*
*& Developer  : Infosys / Vignesh Sankar (VIGSANK)                    &*
*& Created    : 02-Nov-2020                                           &*
*& Description: US 30234 - Download Large Contract EPU                &*
*&--------------------------------------------------------------------&*
*& Update EPU response in Large Contract Excel                        &*
*&--------------------------------------------------------------------&*

  ENDMETHOD.
ENDCLASS.
