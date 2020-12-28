CLASS zcl_ctr_app_handling DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_serializable_object .

    TYPES:
      BEGIN OF ty_attach_size ,
        objkey           TYPE  bds_typeid,
        phio_fsize       TYPE  sdok_fsize,
        zecs_folder_path TYPE  zecs_folder_path,
      END OF ty_attach_size .
    TYPES:
      BEGIN OF ty_plant_det,
        ext_locno            TYPE location,
        loc_guid             TYPE guid, "US# 30282 by SWDENDI
        company_code         TYPE bukrs,
        partner_no           TYPE bu_partner,
        partner_guid         TYPE bu_partner_guid,
        vat_shipping_country TYPE zvat,
        "plant_category       TYPE Zplant_category,
        "dummy_plant          TYPE Zdummy_plant, "++ SRINIV for NPSCC-31862 <US desc -Don´t generate output (PDF, eDocs) for dummy plants>
        topdivision          TYPE ztop_division,
      END OF ty_plant_det .
    TYPES:
      BEGIN OF ty_mat_config,
        itemcode_type    TYPE zitemcode_type,
        source_item_code TYPE zsrc_itemcode,
        item_code_ext    TYPE  zitemcode_ext,
      END OF ty_mat_config .
    TYPES:
      BEGIN OF ty_product_det,
        product_id   TYPE comt_product_id,
        product_guid TYPE comt_product_guid,
        short_text   TYPE comt_prshtextx,
        langu        TYPE spras,
        status       TYPE crm_j_status,   "NPSCC-30087_By SOPABBA
        unit         TYPE comt_unit,
        is_base_unit TYPE char1,
      END OF ty_product_det .
    TYPES:
      BEGIN OF ty_avob_dt,
        document_number TYPE object_id,
        item_number     TYPE crmt_item_no,
        header_guid     TYPE crmt_object_guid,
        item_guid       TYPE guid,
        error_details   TYPE char20,
      END OF ty_avob_dt .
    TYPES:
      BEGIN OF ty_quota_list,
        plant_guid      TYPE guid,
        plant           TYPE werks_d,
        contract_no     TYPE object_id,
        ctr_header_guid TYPE guid,
        ctr_item_guid   TYPE guid,
        part_no         TYPE comt_product_id,
        valid_from      TYPE zvalid_from,
        valid_to        TYPE zvalid_to,
        "quota           TYPE Zquota_value,
        version_type    TYPE zbbp_version_type,
      END OF ty_quota_list .
    TYPES:
      BEGIN OF ty_amo_list,
        object_id     TYPE object_id,
        amo_type      TYPE char10,              "SHENVIA for US 29062
        status_id     TYPE crm_j_status,
        cond_category TYPE zcond_category, "SHENVIA for US 29062
      END OF ty_amo_list .
    TYPES:
      BEGIN OF ty_amo_type,
        "amo_type           TYPE Zamo_obj_type,
        condition_category TYPE zcond_category,           "SHENVIA for US 29062
      END OF ty_amo_type .
    TYPES:
      BEGIN OF ty_tvarvc_det,
        name   TYPE rvari_vnam,
        sign   TYPE tvarv_sign,
        option TYPE tvarv_opti,
        low    TYPE rvari_val_255,
        high   TYPE rvari_val_255,
      END OF ty_tvarvc_det .
    TYPES:
      BEGIN OF ty_commcode_desc,
        category_id   TYPE comt_category_id,
        category_text TYPE comt_category_text,
        langu         TYPE spras,
      END OF ty_commcode_desc .
    TYPES:
      BEGIN OF ty_subs_det,  "US# 30888 by SWDENDI
        part_no TYPE comt_product_id,
        subs_id TYPE atwrt70,
      END OF ty_subs_det .
    TYPES:
      tt_commcode_desc TYPE STANDARD TABLE OF ty_commcode_desc WITH DEFAULT KEY .
    TYPES:
      tt_part_sub       TYPE TABLE OF ty_subs_det . "US# 30888 by SWDENDI.

    "data AT_CONSOL_FLAG type FLAG .
    "  data AT_DEFAULT_TERM_FLAG type FLAG .
    "  data AT_CTR_SUPP_CHG type FLAG .
    "  data AT_CTR_REF_TYPE type ZCONTRACT_TYPE .
    "  data AT_ITEM_NO_PNC type ZDISP_NUMBER .
    "  data AT_CTR_BUS2000113 type CRMT_SUBOBJECT_CATEGORY_DB value 'BUS2000113' ##NO_TEXT.
    "  data GO_COMMON_CLASS type ref to ZCL_SEARCH_HELP_AND_INFO .
    "  data GO_CTR_APP_CLS type ref to ZCL_CONTRACT_APP .
    "  data AT_CREATE type CHAR10 value 'CREATE' ##NO_TEXT.
    "  data AT_UPDATE type CHAR10 value 'UPDATE' ##NO_TEXT.
    "  data AT_PREV_GUID type GUID .
    "  data AT_FIORI_HEAD type ZFIO_CTR_HDR .
    "  data AT_FIORI_HEAD_PLANTS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTPLANTDIST .
    "  data AT_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY .
    "  data AT_FIORI_HEAD_NOTES type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTHEADERTEXTS .
    "  data AT_FIORI_ATTACH type ZFIO_PR_PO_SAPRION_ATT_TT .
    "  data AT_FIORI_SOURCE_DATA type ZFIO_ITM_SOURCE_DATA .
    "  data AT_FIORI_DIBS_PLANT type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TODETROITDIESELDIBS .
    "  data AT_ITEM_MASS_CHANGE type ZFIO_ITM_SOURCE_DATA .
    "  data AT_DB_HEADER type BBP_PDS_CTR_HEADER_D .
    "  data AT_DB_ITEMS type BBPT_PD_CTR_ITEM_D .
    "  data AT_DB_PARTNER type BBPT_PD_PARTNER .
    "  data AT_DB_ATTACH type BBPT_PD_ATT_T .
    "  data AT_DB_ORGDATA type BBPT_PD_ORG .
    "  data AT_DB_TEXT type BBPT_PD_LONGTEXT .
    "  data AT_DB_DIST type BBPT_PD_DIS .
    "  data AT_DB_COND type BBPT_PD_CND_D .
    "  data AT_DB_HCF type BBPT_PDS_HCF_CTR .
    "  data AT_DB_ICF type BBPT_PDS_ICF_CTR .
    "  data AT_DB_STATUS type BBPT_PD_STATUS .
    "  data AT_DB_ITEM_REL type BBPT_PD_ILREL .
    "  data AT_DB_VERSIONS type BBPT_PD_VERSION_LIST_INTERNAL .
    "  data AT_FINAL_HEADER type BBP_PDS_CTR_HEADER_D .
    "  data AT_FINAL_ITEMS type BBPT_PD_CTR_ITEM_D .
    "  data AT_FINAL_PARTNER type BBPT_PD_PARTNER .
    "  data AT_FINAL_ATTACH type BBPT_PD_ATT_T .
    "  data AT_FINAL_ORGDATA type BBPT_PD_ORG .
    "  data AT_FINAL_TEXT type BBPT_PD_LONGTEXT .
    "  data AT_FINAL_DIST type BBPT_PD_DIS .
    "  data AT_FINAL_COND type BBPT_PD_CND_D .
    "  data AT_FINAL_HCF type BBPT_PDS_HCF_CTR .
    "  data AT_FINAL_ICF type BBPT_PDS_ICF_CTR .
    "  data AT_UPDATED_COND type BBPT_PD_CND_D . "++ SWDENDI for NPSCC-31880
    "  data AT_UPDATED_HEADER type BBP_PDS_CTR_HEADER_D .
    "  data AT_UPDATED_ITEMS type BBPT_PD_CTR_ITEM_D .
    "  data AT_UPDATED_ATTACH type BBPT_PDS_ATT_T .
    "  data AT_PDS_MSGS type BBPT_PDS_MESSAGES .
    "  data AT_BAPIRET_MSGS type BBPT_BAPIRET .
      data AT_RETURN_MSGS type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
    "  data:
    "    at_tvarvc_det TYPE TABLE OF ty_tvarvc_det .
    "  data AT_OVERLAP_CHECK type CHAR1 .
    "  data AT_BUYER_BU type ZBU_ID .
    "  data:
    "    at_plant_det TYPE TABLE OF ty_plant_det .
    "  data:
    "    at_globus_int TYPE TABLE OF bbp_location .
    "  data:
    "    at_mat_config TYPE TABLE OF ty_mat_config .
    "  data:
    "    at_product_det TYPE TABLE OF ty_product_det .
    "  data AT_COMM_CODE type COMT_CATEGORY_ID .
    "  data AT_PC_PRICE_DET type ZTT_CTR_PRICE_DET .
    "  data AT_COMMODITY_PRODUCTS type ZTT_PART_NUMBER .
    "  data AT_COMMCODE_DESC type TT_COMMCODE_DESC .
    "  data AT_DFLT_TRMS type ZCTR_TERMS_DFLT_TT .
    "  data:
    "    at_attach_siz TYPE TABLE OF ty_attach_size .
    "  data:
    "    at_amo_cond TYPE RANGE OF Zcondition_id .
    "  data:
    "    at_pd_avob_dt TYPE TABLE OF ty_avob_dt .
    "  data:
    "    at_quota_list TYPE TABLE OF ty_quota_list .
    "  data:
    "    at_amo_list TYPE TABLE OF ty_amo_list .
    "  data AT_DUMMY_DIST_PORG type ZCUST_VALUE1 .
    "  data AT_APPR_PREV_LINK type STRING .
    "  data AT_E type CHAR1 value 'E' ##NO_TEXT.
    "  data AT_A type CHAR1 value 'A' ##NO_TEXT.
    "  data AT_S type CHAR1 value 'S' ##NO_TEXT.
    "  data AT_I type CHAR1 value 'I' ##NO_TEXT.
    "  data AT_W type CHAR1 value 'W' ##NO_TEXT.
    "  data AT_EQ type CHAR2 value 'EQ' ##NO_TEXT.
    "  data AT_HEAD_SUPP_TEXT type TDID value 'HTXT' ##NO_TEXT.
    "  data AT_ITEM_SUPP_TEXT type TDID value 'ITXT' ##NO_TEXT.
    "  data AT_ITEM_LONG_TEXT type TDID value 'ETXT' ##NO_TEXT.
    "  data AT_HEAD_TEXT_NOTM type TDID value 'NOTM' ##NO_TEXT.
    "  data AT_001 type CRM_J_CHGNR value '001' ##NO_TEXT.
    "  data AT_E0008 type CRM_J_STATUS value 'E0008' ##NO_TEXT.
    "  data AT_PROD_BPO type /IWBEP/T_COD_SELECT_OPTIONS .
    "  data:
    "    at_amo_type TYPE TABLE OF ty_amo_type .
    "  data AT_PLANT_QUOTA_DET type BBPT_PD_DIS .
    "  data AT_ACTION_DATA type ZFIO_CTR_ACTIONS .
    "  data AT_QUOTA_UPD_FLAG type CHAR1 .
    "  data AT_PART_SUBSID type TT_PART_SUB .
    "  data AT_PART_CC_S4_ERROR type BAPIRET2_T .
    DATA at_call_from TYPE flag1 .

    METHODS constructor
      IMPORTING
        !im_fiori_head        TYPE zfio_ctr_hdr OPTIONAL
        !im_fiori_head_plants TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity-tocontractplantdist OPTIONAL
        !im_fiori_head_notes  TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity-tocontractheadertexts OPTIONAL
        !im_fiori_items       TYPE zcl_zfio_mng_ctr_mpc_ext=>tt_ctr_item_deep_entity OPTIONAL
        "!IM_FIORI_ATTACHMENTS type ZFIO_PR_PO_SAPRION_ATT_TT optional "TODO
        "!IM_FIORI_SOURCE_DATA type ZFIO_ITM_SOURCE_DATA optional "TODO
        "!IM_ITEM_MASSCHG_DATA type ZFIO_ITM_SOURCE_DATA optional "TODO
        !im_fiori_dibs_plant  TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity-todetroitdieseldibs OPTIONAL .
****** End of Insert by  <VMANCHA> <US#3087>
************************************************************************
    METHODS create_contract .
    METHODS update_contract .
    METHODS validate_item_data
      IMPORTING
        !im_disp_num TYPE char10 .
    METHODS validate_excel_data .
    METHODS calculate_pricing
      IMPORTING
        !im_process_type    TYPE crmt_process_type_db
        "!IM_DB_COND type BBPT_PD_CND_D optional
        !im_amo_cancel_date TYPE dats OPTIONAL
        !im_amo_pcr         TYPE zprc_chg_code OPTIONAL.
    "changing
    "!CH_ITEMS type BBPT_PD_CTR_ITEM_D
    "!CH_CALCULATE_FOR_ITEMS type /SAPSRM/T_GUID_RANGE optional
    "!CH_CONDITIONS type BBPT_PD_CND_D
    "!CH_ICF type BBPT_PDS_ICF_CTR .
    METHODS determine_price_slices.
    "changing
    "!CH_S4_CONDITIONS type ZFIO_ST_PRICING_COND_TT .
    METHODS call_fm
      IMPORTING
        !im_head_guid TYPE guid
        !im_mode      TYPE char10
        !im_save      TYPE xfeld OPTIONAL .
    METHODS update_contract_pnc
      IMPORTING
        !im_action TYPE string OPTIONAL .
    METHODS update_contract_quota .
    METHODS determine_managing_plant .
    CLASS-METHODS supplier_rating_tabupd
      IMPORTING
        !im_object_id            TYPE crmt_object_id_db OPTIONAL
        !im_object_guid          TYPE crmt_object_guid OPTIONAL
      RETURNING
        VALUE(rv_not_authorized) TYPE crmt_boolean .
    CLASS-METHODS renegotiate_ctr_to_rfx
      IMPORTING
        !im_object_id   TYPE crmt_object_id_db OPTIONAL
        !im_object_guid TYPE crmt_object_guid OPTIONAL
        !im_valid_from  TYPE dats OPTIONAL
        !im_valid_to    TYPE dats OPTIONAL
      EXPORTING
        !ex_rfx_number  TYPE crmt_object_id_db
        !ex_rfx_guid    TYPE crmt_object_guid
        !ex_doc_type    TYPE crmt_subobject_category_db
        !et_returnmsgs  TYPE zcl_zfio_mng_ctr_mpc=>tt_returnmessages .
    METHODS bpo_number_generation .
    CLASS-METHODS contract_header_item_text
      IMPORTING
        !im_ctr_head_guid TYPE guid OPTIONAL
        !im_ctr_item_guid TYPE guid OPTIONAL
        !im_mode          TYPE string OPTIONAL
      EXPORTING
        !ex_ctr_hdrtext   TYPE zcl_zfio_mng_ctr_mpc=>tt_contractheadertext
        !ex_ctr_itemtext  TYPE zcl_zfio_mng_ctr_mpc=>tt_contractitemtext .
    CLASS-METHODS kodaba_measure_text
      IMPORTING
        !im_ctr_head_guid  TYPE guid
      EXPORTING
        !ex_kodaba_measure TYPE zcl_zfio_mng_ctr_mpc=>tt_kodabameasure .
    CLASS-METHODS transfer_contract
      IMPORTING
        !im_action_data TYPE zfio_ctr_actions OPTIONAL
      EXPORTING
        !ex_doc_guid    TYPE guid
        !et_returnmsgs  TYPE zcl_zfio_mng_ctr_mpc=>tt_returnmessages .
    CLASS-METHODS update_contract_snc
      IMPORTING
        !im_action_data     TYPE zfio_ctr_actions OPTIONAL
      EXPORTING
        !ex_doc_guid        TYPE guid
        !et_returnmsgs      TYPE zcl_zfio_mng_ctr_mpc=>tt_returnmessages
        !ex_quota_upd_flag  TYPE char1
        !ex_source_doc_guid TYPE guid .
    CLASS-METHODS dibs_plant_details
      IMPORTING
        !im_ctr_hdr_guid TYPE guid OPTIONAL
      EXPORTING
        !et_dibs_data    TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity-todetroitdieseldibs .
    CLASS-METHODS transfer_contract_partview
      IMPORTING
        !im_action_data TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_action_deep_entity OPTIONAL
      EXPORTING
        !ex_doc_guid    TYPE guid
        !et_returnmsgs  TYPE zcl_zfio_mng_ctr_mpc=>tt_returnmessages .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS get_db_data_to_validate .
    METHODS map_plant_extn_data .
    METHODS update_part_cc_s4 .
ENDCLASS.



CLASS ZCL_CTR_APP_HANDLING IMPLEMENTATION.


  METHOD bpo_number_generation.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 27-May-2020                                           &*
*& Description: NPSCC-28885 - Trigger DTNA BPO number generation in   &*
*&              line item creation                                    &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*


  ENDMETHOD.


  METHOD calculate_pricing.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 11-Sep-2019                                           &*
*& Description: US#23327 - Pricing calculation                        &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*&--------------------------------------------------------------------&*

*
  ENDMETHOD.


  METHOD call_fm.

  ENDMETHOD.


  METHOD constructor.

*EOC_By SOPABBA_US# NPSCC-30001_Mass Change of Commodity Code & Update into S4 based on Excel Upload
  ENDMETHOD.


  METHOD contract_header_item_text.
*---------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                            &*
*& Developer  : Infosys/Monisha Singh (MONSING)                      &*
*& Created    : 2020-07-06                                           &*
*& Description: Changes done for SP90-US#28964 (Contract)             &*
*&         This method is to Read INTE text for Header contract      &*
*&                                                                   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&--------

  ENDMETHOD.


  METHOD create_contract.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Jun-2018                                           &*
*& Description: Code Modularization ----- Venky                       &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

************************************************************************

  ENDMETHOD.


  METHOD determine_managing_plant.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 06-Apr-2020                                           &*
*& Description: NPSCC-27730 Consolidation Center - Determine managing &*
*&              plant and apply exceptions                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*    DATA:

  ENDMETHOD.


  METHOD determine_price_slices.


  ENDMETHOD.


  METHOD dibs_plant_details.

  ENDMETHOD.


  METHOD get_db_data_to_validate.


  ENDMETHOD.


  METHOD kodaba_measure_text.




  ENDMETHOD.


  METHOD map_plant_extn_data.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Sowmya Pabba (SOPABBA)                      &*
*& Created    : 02-Jun-2020                                           &*
*& Description: NPSCC:28963- PlEx: Save and Apply Plant Extension to  &*
*&              Line Items                                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*


  ENDMETHOD.


  METHOD renegotiate_ctr_to_rfx.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 14-May-2020                                           &*
*& Description: NPSCC-28415 - Trigger PMRQ from existing contract     &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*



  ENDMETHOD.


  METHOD supplier_rating_tabupd.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 08-May-2020                                           &*
*& Description: NPSCC-28256 - Supplier Ratings Persistence            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*----------------------------------------------------------------------*
*& Data Declarations
*----------------------------------------------------------------------*

  ENDMETHOD.


  METHOD transfer_contract.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 14-Jul-2020                                           &*
*& Description: NPSCC-29654 Enhance Transfer Dialog with a 'New' /    &*
*&              'Add to existing' option                              &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*----------------------------------------------------------------------*
*& Data Declarations
*----------------------------------------------------------------------*


  ENDMETHOD.


  METHOD transfer_contract_partview.

  ENDMETHOD.


  METHOD update_contract.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Jun-2018                                           &*
*& Description: Code Modularization ----- Venky                       &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*


************************************************************************
****** Begin of Insert by  <VMANCHA> --- Code Modularization --- Venky
************** Please add the logic in local methods only **************
*********** For old code, please refer the previous versions ***********



  ENDMETHOD.


  METHOD update_contract_pnc.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 09-Mar-2020                                           &*
*& Description: NPSCC-25806 Part Number Changee Add                   &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*



  ENDMETHOD.


  METHOD update_contract_quota.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 26-Mar-2020                                           &*
*& Description: NPSCC-24421 Quota Shift: Add quota item to an         &*
*&              existing contract                                     &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*


  ENDMETHOD.


  METHOD update_contract_snc.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Swathi (SWDENDI)                            &*
*& Created    : 10-Aug-2020                                           &*
*& Description: NPSCC-30146 SupChng: Apply Supplier Change- add to    &*
*&              contract                                              &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*----------------------------------------------------------------------*
*& Data Declarations
*----------------------------------------------------------------------*

  ENDMETHOD   .


  METHOD update_part_cc_s4.
*----------------------------------------------------------------------*
*& Class      : ZCL_CTR_APP_HANDLING                             &*
*& Developer  : Infosys / Sowmya Pabba (SOPABBA)                      &*
*& Created    : 15-Oct-2020                                           &*
*& Description: NPSCC:30001- PlEx: Mass Change of Commodity Code and  &*
*&              Update into S4 based on Excel Upload                  &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*


  ENDMETHOD.


  METHOD validate_excel_data.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 11-Sep-2019                                           &*
*& Description: US#21926 - Validate excel data                        &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*&--------------------------------------------------------------------&*



  ENDMETHOD.


  METHOD validate_item_data.
*---------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                &*
*& Developer  : Infosys / Sowmya Pabba (SOPABBA)                     &*
*& Created    : 2019-13-12                                           &*
*& Description: US 1204 -This method is to validate contract item    &*
*&              sent from Fiori                                      &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*&--------------------------------------------------------------------&*
*& Date:        11-Jun-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for BUG#21712                            &*
*&              Validate the copied item with existing item, part,    &*
*&              price combination in the same contract                &*
*&--------------------------------------------------------------------&*



  ENDMETHOD.
ENDCLASS.
