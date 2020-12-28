CLASS zcl_excel_download DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    "    TYPES:
    "      tt_ctr_itm_dtl TYPE STANDARD TABLE OF /proq/rfx_supl_excel_item_str .
        TYPES:
          tt_plant_det TYPE STANDARD TABLE OF zfio_ctr_itm_plant_dis .
        TYPES:
          tt_pricereason TYPE STANDARD TABLE OF zfio_price_change_reasons .
        TYPES:
          BEGIN OF ty_price_cond_scales.
            INCLUDE TYPE zpricing_condition.
        TYPES: toitemscaleprices TYPE STANDARD TABLE OF zscale_prices WITH DEFAULT KEY,
               END OF ty_price_cond_scales .
        TYPES:
          tt_price_cond_scales TYPE STANDARD TABLE OF ty_price_cond_scales .
    "    TYPES:
    "      BEGIN OF ty_excel_col,
    "        col_name TYPE c LENGTH 200,
    "        col_num  TYPE i,
    "      END OF ty_excel_col .
    "    TYPES ts_rfxsupplierrating TYPE /proq/fio_rfx_supp_info .
    "    TYPES:
    "      tt_excel_col TYPE STANDARD TABLE OF ty_excel_col .
    "    TYPES:
    "      tt_item TYPE TABLE OF /proq/ctr_excel_item_str INITIAL SIZE 0 .
    "    TYPES:
    "      tt_rfxsupplierrating TYPE STANDARD TABLE OF ts_rfxsupplierrating .
    "    TYPES ts_rfxlarsrating TYPE /proq/fio_rfx_lars_rating .
    "    TYPES:
    "      tt_item_sr TYPE TABLE OF /proq/sr_supl_excel_item_str INITIAL SIZE 0 .
    "    TYPES:
    "      tt_rfxlarsrating TYPE STANDARD TABLE OF ts_rfxlarsrating .
    "    TYPES:
    "*** US-29656 by SBILLAP
    "      BEGIN OF ty_supp_ratings,
    "        supplier                 TYPE bu_partner,
    "        awarding_readiness_color TYPE val_text,
    "        restrictions             TYPE char1,
    "        restriction_reason       TYPE char200,
    "        fsrm                     TYPE char1,
    "        qvm                      TYPE char20,
    "        ebsc                     TYPE p LENGTH 9 DECIMALS 3,
    "        ica                      TYPE val_text,
    "        osa                      TYPE val_text,
    "        evaluation_date          TYPE dats,
    "        certificates             TYPE val_text,
    "      END OF ty_supp_ratings .
    "    TYPES ts_rfxsuppcertusinfo TYPE /proq/fio_rfx_supp_certus .
    "    TYPES:
    "      tt_supp_ratings TYPE TABLE OF ty_supp_ratings .
    "    TYPES:
    "      tt_rfxsuppcertusinfo TYPE STANDARD TABLE OF ts_rfxsuppcertusinfo .
    "    TYPES:
    "      BEGIN OF ts_supplier_rating.
    "        INCLUDE TYPE ts_rfxsupplierrating.
    "    TYPES:
    "      rfxlarsrating     TYPE TABLE OF ts_rfxlarsrating WITH DEFAULT KEY,
    "      rfxsuppcertusinfo TYPE TABLE OF ts_rfxsuppcertusinfo WITH DEFAULT KEY,
    "      END OF ts_supplier_rating .
    "    TYPES:
    "      tt_supplier_rating TYPE STANDARD TABLE OF ts_supplier_rating .

*** US-29656 by SBILLAP
    METHODS create_excel_stream
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS prepare_item_table.
    "IMPORTING
    " !it_item     TYPE zbbpt_pd_ctr_item_d OPTIONAL
    "EXPORTING
    " !et_lineitem TYPE zctr_excel_item_str .
    METHODS dropdown_sheet_data_validation
      IMPORTING
        !im_type     TYPE crmt_subobject_category_db OPTIONAL
        "!it_lineitem  TYPE tt_item OPTIONAL
        "!it_excel_col TYPE tt_excel_col OPTIONAL
        !im_buyer_id TYPE uname OPTIONAL .
    METHODS get_plant_details
      "IMPORTING
        "VALUE(im_db_header)  TYPE zbbp_pds_ctr_header_d
        "VALUE(im_db_item)    TYPE zbbpt_pd_ctr_item_d
        "VALUE(im_db_partner) TYPE zbbpt_pds_partner
        "VALUE(im_db_icf)     TYPE zbbpt_pds_icf_ctr
        "VALUE(im_db_status)  TYPE zbbpt_pd_status
        "VALUE(im_db_dis)     TYPE zbbpt_pd_dis
      EXPORTING
        !et_plant            TYPE tt_plant_det .
    METHODS get_conditions_pcr
      "IMPORTING
       " VALUE(im_db_header) TYPE zbbp_pds_ctr_header_d
        "VALUE(im_db_item)   TYPE zbbpt_pd_ctr_item_d
        "VALUE(im_db_cond)   TYPE zbbpt_pd_cnd_d
        "VALUE(im_db_icf)    TYPE zbbpt_pds_icf_ctr
      EXPORTING
        !et_conditions      TYPE tt_price_cond_scales
        !et_price_reason    TYPE tt_pricereason .
    METHODS create_excel_stream_rfx
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS create_excel_stream_rfx_prfq
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS get_supplier_details_rfx
      IMPORTING
        !im_rfx_guid     TYPE guid.
      "EXPORTING
        "!et_suppl_dtl    TYPE zfio_supplier_set_tt
        "!et_supp_ratings TYPE tt_supp_ratings .
    METHODS get_quote_item_details
      IMPORTING
        !im_rfx_guid        TYPE guid
        !im_quote_guid      TYPE guid.
      "EXPORTING
       " !et_quote_item_data TYPE /proq/fio_rfx_qte_item_tt .
    METHODS create_excel_stream_rfx_srfq
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    CLASS-METHODS part_search_template
      EXPORTING
        !ev_excel_stream TYPE xstring .
    METHODS get_contract_details_pmrq
      IMPORTING
        "!im_rfx_qte_item    TYPE /proq/fio_rfx_qte_item
        "!im_qte_excel       TYPE /proq/rfx_supl_excel_item_str
        !im_partner_id      TYPE bu_partner.
      "EXPORTING
        "!et_ctr_itm_details TYPE tt_ctr_itm_dtl
       " !et_all_conditions  TYPE bbpt_pd_cnd_d .
    METHODS create_excel_stream_sr
      IMPORTING
        !it_key_tab      TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !im_type         TYPE crmt_subobject_category_db OPTIONAL
      EXPORTING
        !ev_excel_stream TYPE xstring
        !e_ctr_number    TYPE crmt_object_id_db .
    METHODS get_supl_rating_qvm_factor.
      "IMPORTING
        "!it_business_partner TYPE /proq/sup_rating_bu_partnr OPTIONAL
      "EXPORTING
       " !et_supl_rat_qvm     TYPE /proq/sup_rating_qvm_tt
       " !et_supp_ratings     TYPE tt_supp_ratings .
  PROTECTED SECTION.
  PRIVATE SECTION.

"    TYPES:
"      BEGIN OF ts_doc_levels,
"        doc_plevel TYPE string,
"        doc_level  TYPE string,
"        sheet_name TYPE string,
"      END OF ts_doc_levels .
"    TYPES:
"      tt_doc_levels TYPE STANDARD TABLE OF ts_doc_levels .
"    TYPES:
"      BEGIN OF ts_rowtype,
"        rowtype TYPE string,
"      END OF ts_rowtype .
"    TYPES:
"      tt_rowtype TYPE STANDARD TABLE OF ts_rowtype .
"    TYPES:
"      BEGIN OF ts_dc_template,
"        doc_plevel  TYPE string,
"        doc_level   TYPE string,
"        t_data_cont TYPE bbpt_data_container,
"      END OF ts_dc_template .
"    TYPES:
"      tt_dc_template TYPE STANDARD TABLE OF ts_dc_template .

"** End of changes for US 28319 by PRASDES.
"    DATA gt_rowtype TYPE tt_rowtype .
"    DATA gv_header_index TYPE int4 .
"    DATA gv_item_index TYPE int4 .

    METHODS create_excel_stream_rfx_nprq
     " IMPORTING
"        VALUE(iv_rfx_number) TYPE crmt_object_id_db OPTIONAL
"        VALUE(im_rfx_header) TYPE bbp_pds_bid_header_d
"        !it_rfx_item         TYPE bbpt_pds_bid_item_d OPTIONAL
"        !it_orgdata          TYPE bbpt_pds_org OPTIONAL
"        !it_header_rel       TYPE bbpt_pd_hrel OPTIONAL
"        !it_partner          TYPE bbpt_pds_partner OPTIONAL
"        !it_status           TYPE bbpt_pds_status
      EXPORTING
        !ev_excel_stream     TYPE xstring .
ENDCLASS.



CLASS ZCL_EXCEL_DOWNLOAD IMPLEMENTATION.


  METHOD create_excel_stream.
  ENDMETHOD.


  METHOD create_excel_stream_rfx.
  ENDMETHOD.


  METHOD create_excel_stream_rfx_nprq.
  ENDMETHOD.


  METHOD create_excel_stream_rfx_prfq.
  ENDMETHOD.


  METHOD create_excel_stream_rfx_srfq.
  ENDMETHOD.


  METHOD create_excel_stream_sr.
  ENDMETHOD.


  method DROPDOWN_SHEET_DATA_validation.
  endmethod.


  METHOD get_conditions_pcr.
  ENDMETHOD.


  METHOD get_contract_details_pmrq.
  ENDMETHOD.


  METHOD get_plant_details.
  ENDMETHOD.


  METHOD get_quote_item_details.
  ENDMETHOD.


  METHOD get_supl_rating_qvm_factor.
  ENDMETHOD.


  METHOD get_supplier_details_rfx.
  ENDMETHOD.


  METHOD part_search_template.
  ENDMETHOD.


  METHOD prepare_item_table.
  ENDMETHOD.
ENDCLASS.
