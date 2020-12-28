class ZCL_CONTRACT_APP definition
  public
  create public .

public section.

  types:
    TT_PLANT_DET TYPE STANDARD TABLE OF ZCL_CTR_APP_HANDLING=>TY_PLANT_DET .      "++ SRINIV for US 31526
  types:
    TT_FIO_TS_CLASSIFY TYPE STANDARD TABLE OF Zfio_ts_clasify WITH DEFAULT KEY . "++ SRINIV NPSCC 26904.
  types:
    TT_CLASSIFY_H TYPE STANDARD TABLE OF Zfio_ts_clasify . "++ SRINIV - NPSCC - 26904
  types:
    BEGIN OF ty_det,                      " RKORADA - NPSCC-352 and NPSCC-19469
            head_guid        TYPE guid,
            object_id        TYPE char1,
            item_guid        TYPE guid,
            ordered_prod     TYPE comt_product_id,
            item_vper_start  TYPE datum,
            item_vper_end    TYPE datum,
            Zzgs        TYPE Zzgs,
            plant_guid       TYPE zbbp_dep_key,
            plant_vper_start TYPE datum,
            plant_vper_end   TYPE datum,
            plant            TYPE zbbp_location,
            pr_ext_no        TYPE Zext_doc_id,
            pr_ext_item      TYPE crmt_item_no_ext,
          END OF ty_det .
  types:
    tt_det TYPE TABLE OF ty_det .
  types:
    tt_longtexts TYPE TABLE OF Zfio_ctr_usertext .
  types:
    BEGIN OF ts_so10_texts,
        so10_name TYPE tdobname,
        so10_text TYPE string,
      END OF ts_so10_texts .
  types:
    tt_so10_texts TYPE TABLE OF ts_so10_texts .
  types:
    tt_so10_names TYPE RANGE OF tdobname .
  types:
    BEGIN OF ty_price_cond_scales.
        INCLUDE TYPE Zpricing_condition.
    TYPES: toitemscaleprices TYPE STANDARD TABLE OF Zscale_prices WITH DEFAULT KEY,
           END OF ty_price_cond_scales .
  types:
    tt_price_cond_scales TYPE STANDARD TABLE OF ty_price_cond_scales .
  types:
*=={BOC US-3070 By TTHIRUM
    tt_bbps_changedoc_cdred TYPE TABLE OF Zbbps_changedoc_cdred .
  types:
*==}EOC US-3070 By TTHIRUM
    BEGIN OF ty_so10_return ,            "--US# 7953
        tdname TYPE tdid,
        text   TYPE string,
      END OF ty_so10_return .
  types:
    tt_so10_return TYPE STANDARD TABLE OF ty_so10_return .
  types:
****** End of Insert by  <VMANCHA> <US#3006>
************************************************************************
    tt_countries TYPE TABLE OF bbplands4 .
  types:
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#2944>
    BEGIN OF ty_supp_cont_persons,
        partner1         TYPE bu_partner,
        partner2         TYPE bu_partner,
        name_first       TYPE bu_namep_f,
        name_last        TYPE bu_namep_l,
        smtp_address     TYPE ad_smtpadr,
        tel_number       TYPE ad_tlnmbr,
        Zappl_edocs TYPE rsdmem_boolean,
        guest_access     TYPE rsdmem_boolean,  "npscc 29175
     END OF ty_supp_cont_persons .
  types:
    tt_supp_cont_persons TYPE TABLE OF ty_supp_cont_persons .
  types:
****** End of Insert by  <VMANCHA> <US#2944>
************************************************************************
*=={ Begin of Insert <TTHIRUM> <SP31-US#9543>
    BEGIN OF ty_status_details,
*        domvalue_l  TYPE string,
*        ddtext      TYPE string,
        estat TYPE j_estat,
        txt30 TYPE j_txt30,
      END OF ty_status_details .
  types:
    tt_status TYPE STANDARD TABLE OF ty_status_details .
*==} End of Insert <TTHIRUM> <SP31-US#9543>
  types TS_PLANTDISTRIBUTION type ZFIO_CTR_ITM_PLANT_DIS .
  types:
    tt_plantdistribution TYPE STANDARD TABLE OF ts_plantdistribution .
  types:
    tt_related_sched_agmnt    TYPE STANDARD TABLE OF Zrelated_sched_agmnt . "US 21377_By SOPABBA
  types:
*BOC US# 21094_By SOPABBA
    BEGIN OF ty_obj_typ_desc,
          object_type       TYPE Zsrc_obj_type,
          obj_typ_lang_spec TYPE Zsrc_obj_type,
         END OF ty_obj_typ_desc .
  types:
    tt_related_obj_link       TYPE STANDARD TABLE OF Zreldocs_objlink .
  types:
    tt_cip_rate               TYPE STANDARD TABLE OF Zfio_cip_rate .
  types:
    tt_obj_typ_desc           TYPE STANDARD TABLE OF ty_obj_typ_desc .
  types:
*EOC US# 21094_By SOPABBA
    tt_comment TYPE STANDARD TABLE OF Zfio_ctr_usertext .            "ty_comment .
  types:
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#3087>
    lt_ctr_numbers TYPE TABLE OF OBJECT_ID .
  types:
*==BOC US_9753 By--TTHIRUM
    tt_bbp_pdhsc TYPE TABLE OF Zbbp_pdhsc .
  types:
    BEGIN OF ty_part_text,
        tdlang   TYPE spras,
        tdobject TYPE stxl-tdobject,
        tdname   TYPE stxl-tdname,
        tdid     TYPE stxl-tdid,
        text     TYPE string,
      END OF ty_part_text .
  types:
    tt_part_text TYPE STANDARD TABLE OF ty_part_text .
  types:
    tt_attachment TYPE TABLE OF Zfio_pr_po_saperion_att .   "npscc-26359

  data AT_CTR_BUS2000113 type CRMT_SUBOBJECT_CATEGORY_DB value 'BUS2000113' ##NO_TEXT.
  data GO_COMMON_CLASS type ref to ZCL_SEARCH_HELP_AND_INFO .
  data GO_OUTPUT_MEDIUM_CLASS type ref to ZPD_TRIGGER_OUTPUT_MEDIUM .
  data AT_OBJ_CARRY_OUT_CLS type ref to ZCL_CARRY_OUT_SOURCING .
  data AT_CREATE type CHAR10 value 'CREATE' ##NO_TEXT.
  data AT_UPDATE type CHAR10 value 'UPDATE' ##NO_TEXT.
  data AT_DELETE type CHAR10 value 'DELETE' ##NO_TEXT.
  data AT_E type CHAR1 value 'E' ##NO_TEXT.
  data AT_A type CHAR1 value 'A' ##NO_TEXT.
  data AT_S type CHAR1 value 'S' ##NO_TEXT.
  data AT_I type CHAR1 value 'I' ##NO_TEXT.
  data AT_W type CHAR1 value 'W' ##NO_TEXT.
  data AT_EQ type CHAR2 value 'EQ' ##NO_TEXT.
  data AT_HEAD_SUPP_TEXT type TDID value 'HTXT' ##NO_TEXT.
  data AT_ITEM_SUPP_TEXT type TDID value 'ITXT' ##NO_TEXT.
  data AT_ITEM_LONG_TEXT type TDID value 'ETXT' ##NO_TEXT.
  data AT_HEAD_TEXT_NOTM type TDID value 'NOTM' ##NO_TEXT.
  data AT_001 type CRM_J_CHGNR value '001' ##NO_TEXT.
  data AT_E0008 type CRM_J_STATUS value 'E0008' ##NO_TEXT.

****** End of Insert by  <VMANCHA> <US#3087>
************************************************************************
*}"-SP25==EOC US5412- Serach PO based on External PR no- Page1- By Nihar
  methods GET_CONTRACT_LIST
    importing
      !IM_CONTRACT_NUM type OBJECT_ID optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !ET_CONTRACTS_LIST type ZTT_CTR_HEADER .
  methods GET_CONTRACT_LIST_AMDP
    importing
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !ET_CONTRACTS_LIST type ZTT_CTR_HEADER .
*  METHODS filter_contract_list
*     IMPORTING
*        it_ctr_list   TYPE ZCL_ZFIO_MNG_CTR_mpc=>tt_contractheader
*        iv_filter_string TYPE string
*     EXPORTING
*        et_ctr_list   TYPE ZCL_ZFIO_MNG_CTR_mpc=>tt_contractheader.
  methods CREATE_CONTRACT
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR
      !IM_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional
      !IM_FIORI_HEADER_NOTES type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTHEADERTEXTS optional
      !IM_FIORI_ATTACHMENTS type ZFIO_PR_PO_SAPRION_ATT_TT optional
    exporting
      !EX_CTR_NUMBER type OBJECT_ID
      !EX_CTR_HEADER_GUID type guid
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES
      !EX_APPR_PREV_LINK type STRING .
  methods MODIFY_CONTRACT
    importing
      value(IM_FIORI_HEADER) type ZFIO_CTR_HDR optional
      value(IM_FIORI_ITEMS) type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional
      !IM_FIORI_HEADER_NOTES type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTHEADERTEXTS optional
      value(IM_FIORI_ATTACHMENTS) type ZFIO_PR_PO_SAPRION_ATT_TT optional
    exporting
      !EX_CTR_NUMBER type OBJECT_ID
      !EX_CTR_HEADER_GUID type guid
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES
      !EX_APPR_PREV_LINK type STRING .
  methods VALIDATE_DATA
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR optional
      !IM_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional
      !IM_DB_CONDITIONS type zBBPT_PD_CND optional
      !IM_DB_DEP type ZBBP_PDS_DEP optional
      !IM_DB_ICF type ZBBPT_PDS_ICF optional
    exporting
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
  methods GET_CONTRACT_INSTANCE
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_CTR_MODE type char1
    exporting
      !EX_CTR_INSTANCE type ref to Zcl_ctr_excel_download
      !EX_BAPIRET_MESSAGES type BAPIRET2_T .
  methods RELEASE_VERSION
    importing
      !IM_HEAD_GUID type guid
    exporting
      !EX_RELEASED type XFELD
      !EX_BAPIRET_MSGS type char1.
  methods MODIFY_DATA_WITH_CURRENT_GUIDS
    importing
      value(IM_CTR_NUMBER) type OBJECT_ID
    changing
      value(CH_CTR_ITEMS) type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY .
  methods COPY_CONTRACT
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR
      !IM_FIORI_HEADER_PLANTS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTPLANTDIST optional
      !IM_FIORI_HEADER_NOTES type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCONTRACTHEADERTEXTS optional
      !IM_FIORI_ATTACHMENTS type ZFIO_PR_PO_SAPRION_ATT_TT optional
      !IM_FIORI_RELATEDOBJLINK type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TOCTRRELATEDOBJLINK optional
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_FIORI_DIBS_PLANT type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY-TODETROITDIESELDIBS optional
    exporting
      !EX_CTR_NUMBER type OBJECT_ID
      !EX_CTR_HEADER_GUID type guid
      !EX_RETURN_TAB type BAPIRET2_T
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES
      !EX_APPR_PREV_LINK type STRING
      !EX_ACTION_DATA type ZFIO_CTR_ACTIONS
      !EX_QTA_UPD_FLAG type CHAR1
    changing
      !CH_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional .
  methods COPY_ITEMS
    changing
      !CH_FINAL_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY .
  methods WITHDRAW_APPROVAL
    importing
      !IM_CTR_NUMBER type OBJECT_ID
      !IM_CTR_HEADER_GUID type guid
      !IM_FIORI_HEADER_NOTES type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTHEADERTEXT optional
      !IM_WITHDRAW_NOTE type STRING optional
    exporting
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES
      !EX_BAPIRET_MSGS type BAPIRET2_T .
  methods FORMAT_TEXTS_TO_DB_FORMAT
    importing
      !IM_HEADER_OR_ITEM_GUID type guid
      !IM_TEXT_ID type TDID
      !IM_LANGUAGE_KEY type SY-LANGU
      !IM_TEXT type STRING optional
    changing
      !CH_FIORI_HEADER_TEXTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTHEADERTEXT optional
      !CH_FIORI_ITEM_TEXTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTITEMTEXT optional
      !CH_FINAL_TEXTS type char1 optional .
  methods GET_DB_TEXTS_WITHOUT_DB_FORMAT
    importing
      !IM_CTR_HEADER_GUID type guid
      !IM_CTR_ITEM_GUID type crmt_object_guid optional
      !IM_MODE type CHAR20
      !IM_TEXT_ID type TDID optional
    exporting
      !EX_TEXTS type TT_LONGTEXTS .
  methods COMPARE_TWO_VERSIONS
    importing
      value(IM_CTR_OLD_HDR_GUID) type guid
      value(IM_CTR_NEW_HDR_GUID) type guid
    exporting
      !EX_SIGNIFICANT_FLAG type CHAR1 .
  methods CLOSE_INSIGNIFICANT_CHG_VRSN
    importing
      value(IM_CTR_HANDLING_CLS_INSTANCE) type ref to ZCL_CTR_EXCEL_DOWNLOAD
    exporting
      !EX_CTR_CLOSED_FLAG type CHAR1
      !EX_BAPIRET_MESSAGES type BAPIRET2_T
      !EX_PDS_MESSAGES type char1 .
  methods GET_CURRENT_VERSION_GUID
    importing
      !IV_OBJECT_ID type OBJECT_ID optional
      !IV_WITH_CHANGE_VERSION type CHAR1 default ABAP_TRUE
    exporting
      !EV_GUID type guid
      !EV_PROCESS_TYPE type CRMT_PROCESS_TYPE_DB
      !EV_VERSION_TYPE type FLAG1
      !EV_ACTIVE_HEADER type guid .
  methods GET_PORG_PGRP_DATA_FROM_BUYER
    importing
      !IM_USER_ID type UNAME optional
    changing
      !CS_ORGDATA type char1 .
  methods GET_PLANT_DETAILS
    importing
      !IM_CTR_HEAD_GUID type guid
      !IV_ITEM_GUID type guid optional
      !IM_TRANSFER_FLAG type CHAR1 optional
      !IM_TRANSFER_TO_CTR_TYP type CRMT_PROCESS_TYPE_DB optional
      !IM_PNC_SUCC_DATE type DATS optional
    exporting
      !ET_PLANT type TT_PLANTDISTRIBUTION .
  methods CHANGE_BUYER_FOR_CONTRACTS
    importing
      !IM_BUYER_ID type BALUSER
      !IM_CTR_NUMBERS type LT_CTR_NUMBERS
      !IM_FWD_REASON type STRING optional
      !IM_OLD_BUYER type SYST_UNAME
    exporting
      !EX_MESSAGES type BAPIRET2_T .
  methods FETCH_SUPPLIER_CONTACT_PERSONS
    importing
      !IM_SUPPLIER_ID type BU_PARTNER
      !IM_SUPP_CON_ID type BU_PARTNER optional
    exporting
      !EX_SUPP_CONT_PERSONS type TT_SUPP_CONT_PERSONS
      !EX_MESSAGES type BAPIRET2_T .
  methods GET_CONTRACT_HEADER_STATUS
    importing
      !IM_CTR_HEAD_GUID type guid
      !IT_STATUS type char1 optional
    exporting
      !E_STATUS type J_STATUS
      !E_STATUS_TEXT type J_TXT30 .
  methods GET_COMP_BID_AND_REASONS
    importing
      value(IM_LANGUAGE_KEY) type SPRAS
    exporting
      !EX_COMP_BID_AND_REASONS type char1.
  methods MULTIPLE_CTRS_CANCELLATION
    importing
      value(IM_CONTRACT_NO) type OBJECT_ID
      value(IM_CANCELLED_DATE) type ZCTR_CANCELLED_DATE
      value(IM_CANCEL_FLAG) type ZCTR_CANCEL
      value(IM_CANCEL_REASON) type STRING
      !IM_CANCEL_TYPE type CHAR1 optional
    exporting
      !ET_RETURN_TAB type BAPIRET2_T .
  methods GET_STATUS_HELP
    exporting
      !EX_STATUS_DETAILS type TT_STATUS .
  methods GET_ALL_PACK_TERMS
    importing
      !IM_VALID_FROM type char1 optional
      !IM_VALID_TO type DATE optional
      !IM_PACK_TERM type ZPACK_TERM optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !EX_PACK_TERM_DETAILS type char1."ZCL_FIO_MANAGE_PO_MPC=>TT_PACKTERMS .
  methods MAP_ATTACHMENT_DATA
    importing
      value(IT_ATTACHMENTS) type ZFIO_PR_PO_SAPRION_ATT_TT
    changing
      value(CS_CONTRACT) type char1.
  methods GET_ALL_RETURN_TERMS
    importing
      !IM_VALID_FROM type DATE optional
      !IM_VALID_TO type DATE optional
      !IM_RETURN_TERM type char1 optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !EX_RETURN_TERM_DETAILS type char1."ZCL_FIO_MANAGE_PO_MPC=>TT_RETTERMS .
  methods GET_CTR_VERSION_LIST
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_CTR_NUM type OBJECT_ID optional
    exporting
      !EX_CTR_VERSION_LIST type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRVERSIONLIST .
  methods SUPPLIER_CONFIRMATION
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_SUPP_CONF_DATE type ZSUPP_CONF_DATE optional
      !IM_SUPP_CONF_NUM type ZSUPP_CONF_NUM optional
      !IM_ACTION type CHAR10
      !IM_CTR_INSTANCE type ref to char1 optional
      !IM_DOCUMENT_ID type OBJECT_ID optional
      !IM_FIORI_ATTACHMENTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRATTACHMENTSINFO optional
    exporting
      !EX_MESSAGES type BAPIRET2_T .
  methods FORMAT_MESSAGES_TO_BAPIRET
    importing
      !IM_EXCEPTION_HANDLER type char1 optional
      !IM_MESSAGE_HANDLER type char1 optional
      !IM_BBP_PDS_MESSAGES type char1 optional
    exporting
      !EX_BAPIRET_MESSAGES type BAPIRET2_T .
  methods UPDATE_CONFIRMED_STATUS
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_ACTION type CHAR10
      !IM_RFQ_GUID type guid optional
      !IM_CTR_TYPE type CRMT_PROCESS_TYPE_DB optional .
  methods DELETE_CONTRACT
    importing
      !IM_CONTRACT_GUID type guid
    exporting
      !ET_RETURN_TAB type BAPIRET2_T .
  methods GET_PRICE_CONDITIONS_SCALES
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_CTR_ITEM_GUID type crmt_object_guid
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
    exporting
      !EX_CONDITIONS_AND_SCALES type TT_PRICE_COND_SCALES
      !EX_COMMON_PRICE type CHAR1 .
  methods GET_CTR_CHANGELOG
    importing
      value(IM_HEADER_GUID) type CRMT_OBJECT_GUID
      !IM_ITEM_GUID type CRMT_OBJECT_GUID optional
      !IM_SEARCH_STRING type STRING optional
      !IM_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
    exporting
      !EX_CHANGE_DOCUMENTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRCHANGELOG
      !ES_RETURN type BAPIRET2 .
  methods GET_CTR_CHANGELOG_NEW
    importing
      value(IM_HEADER_GUID) type CRMT_OBJECT_GUID
      !IM_ITEM_GUID type CRMT_OBJECT_GUID optional
      !IM_SEARCH_STRING type STRING optional
      !IM_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
    exporting
      !EX_CHANGE_DOCUMENTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRCHANGELOG
      !ES_RETURN type BAPIRET2 .
  methods GET_ALL_PRICE_CHANGE_REASONS
    importing
      !IM_MODE type CHAR10
      !IM_SEARCH_STRING type STRING optional
      !IM_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_CTR_HEAD_GUID type guid optional
      !IM_CTR_ITEM_GUID type crmt_object_guid optional
    exporting
      !EX_DATA type ZCL_ZFIO_MNG_CTR_MPC=>TT_PRICEREASON .
  methods GET_CTR_RELATEDDOCS
    importing
      !IM_CTR_GUID type CRMT_OBJECT_GUID
      !IM_CONTRACT_NUM type OBJECT_ID optional
      !IM_CTR_ITM_GUID type CRMT_OBJECT_GUID optional
      !IM_PAGING type /IWBEP/S_MGW_PAGING optional
      !IM_SEARCH_STRING type STRING optional
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
    exporting
      !EX_RELATED_DOCUMENTS type  ZTT_PR_RELATED_DOCS
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT .
  methods UPDATE_HISTORY_STATUS_TEXT
    importing
      value(IM_OBJECT_ID) type OBJECT_ID optional
      value(IM_HEADER_GUID) type guid optional
      value(IM_OBJECT_TYPE) type CRMT_SUBOBJECT_CATEGORY_DB optional
      value(IM_HISTORYSTATUSHDTEXT) type TEXT80 optional
      value(IM_HISTORYSTATUSLITEXT) type TEXT80 optional
    changing
      value(CH_BBP_PDHSC_ENTRIES) type TT_BBP_PDHSC optional .
  methods DETERMINE_WVDV_SERVICE_LOC
    importing
      !IM_MODE type CHAR20
      !IM_RESULT type CHAR1 optional
      !IM_HEADER_GUID type guid optional
    changing
      !CH_CTR_FIORI_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY optional .
  methods GET_PART_NUMBERS_NEW
    importing
      !IT_SRH_PART type /IWBEP/T_COD_SELECT_OPTIONS optional
      !IV_SRH_ES1 type STRING optional
      !IT_SRCH_ITEMCODETYPE type /IWBEP/T_COD_SELECT_OPTIONS optional
      !IV_SRH_ES2 type STRING optional
      !IT_COMMODITY type /IWBEP/T_COD_SELECT_OPTIONS optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_DESC type /IWBEP/T_COD_SELECT_OPTIONS optional
      !IV_SRH_STR type STRING optional
      !IV_RESPONSIBLE_BUYER type SY-UNAME optional
    exporting
      !ET_PART_NUMBER type char10.
  methods DIRECT_DB_PDF_ATTACHMENT
    importing
      !IM_CTR_NUMBER type OBJECT_ID
      !IM_DO_NOT_SEND_MAIL type CHAR1 optional
    exporting
      !EX_MESSAGES type char1
      !EX_HEADER_GUID type guid
      !EX_PD_DOC_FLOW type char1.
  methods VALIDATE_ITEM_DATA
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR
      !IM_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY
      !IM_DB_DEP type ZBBP_PDS_DEP optional
      !IM_DB_COND type ZBBPT_PD_CND optional
    exporting
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
  methods GET_VALID_CTR_COLOR_RESOL
    importing
      !IT_ITEMS type char1
      !IT_DEP type char1
      !IM_PROCESS_TYPE type CRMT_PROCESS_TYPE_DB
      !IT_COND type ZBBPT_PD_CND optional
      !IM_CREATED_SYS type FLAG1 optional
    exporting
      !ET_VALID_PARTS type TT_DET .
  methods GET_RELATED_SCHED_AGMNT
    importing
      !IM_CTR_GUID type CRMT_OBJECT_GUID
      !IM_CTR_ITM_GUID type CRMT_OBJECT_GUID
    exporting
      !ET_ENTITYSET type TT_RELATED_SCHED_AGMNT .
  methods GET_RELATED_OBJ_LINK
    importing
      !IM_CTR_GUID type CRMT_OBJECT_GUID
      !IM_LANG type SPRAS optional
    exporting
      !ET_OBJ_LINK type TT_RELATED_OBJ_LINK
      !ET_OBJ_DESC type TT_OBJ_TYP_DESC
      !ET_OBJ_SUPPL type TT_RELATED_OBJ_LINK
      !ET_OBJ_COMP type TT_RELATED_OBJ_LINK
      !ET_OBJ_DESC_USER type TT_OBJ_TYP_DESC .
  class-methods GET_VALIDITY_DATE_TRANSFERCTR
    importing
      !IM_CTR_HEADER_GUID type CRMT_OBJECT_GUID
      !IM_MODE type CHAR1 optional
    exporting
      !EX_VALID_FROM type datum
      !EX_VALID_TO type datum
      !EX_PCR type ZPRC_CHG_CODE
      !EX_CO_CODE type BUKRS
      !EX_OUTPUT_MEDIUM type PPFDMETYPE
      !EX_OUTPUT_MEDIUM_DESC type ZOUTPUT_MEDIUM_DESC
      !EX_WV_DISP_FLAG type CHAR1
      !EX_WV_RELEVEANT type CHAR10
      !EX_CONTRACT_TYPE type CRMT_PROCESS_TYPE_DB
      !EX_CTR_REF_TYPE type CRMT_PROCESS_TYPE_DB
      !EX_PLNT_IND type CHAR10
      !EX_CTR_DESC type CRMT_PROCESS_DESCRIPTION
      !EX_EXTEND_FROM type datum .
  class-methods FETCH_DEFAULT_TERMS
    importing
      !IM_CALL_FROM_FIORI type CHAR1 optional
    changing
      !CH_DEFAULT_TERMS type char1 optional .
  methods MASS_CHANGE_DOCS
    importing
      !IM_DOC_NUM type OBJECT_ID optional
      !IM_HEADER_GUID type guid optional
    exporting
      !EX_UPDATED type CHAR1 .
  methods GET_PARTNO_TEXT
    importing
      !IM_OBJECT type TSPSROBJ
      !IM_NAME type TSPSRNAME
      !IM_ID type TSPSRID
      !IM_LANGU type SY-LANGU optional
    exporting
      !EX_TEXT type TT_PART_TEXT .
  methods SEND_REMAINDER
    importing
      !IM_CONTRACT_GUID type CRMT_OBJECT_GUID optional
      !IM_CONTRACT_NUM type OBJECT_ID optional
    exporting
      !ET_RETURN_TAB type BAPIRET2_T .
  methods CALCULATE_PRICING
    importing
      !IM_PROCESS_TYPE type CRMT_PROCESS_TYPE_DB
      !IM_DB_COND type ZBBPT_PD_CND optional
      !IM_AMO_CANCEL_DATE type DATS optional
      !IM_AMO_PCR type ZPRC_CHG_CODE optional
    changing
      !CH_ITEMS type char1
      !CH_CALCULATE_FOR_ITEMS type char1 optional
      !CH_CONDITIONS type char1
      !CH_ICF type char1.
  methods EXCEL_VALIDATE_DATA
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR
      !IM_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY
    exporting
      !EX_RETURN_MESSAGES type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
  methods GET_COND_WEIGHT_TYPES
    exporting
      !EX_WEIGHT_TYPES type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONDWEIGHTTYPEF4 .
  class-methods GET_PAGE1_INFO
    importing
      !IM_CONTRACT_NUM type OBJECT_ID optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !ET_CONTRACTS_LIST type ZTT_CTR_HEADER .
  class-methods DISCARD_CHANGE_VERSION
    importing
      !IM_CTR_GUID type CRMT_OBJECT_GUID
    returning
      value(RV_ACT_VER_GUID) type CRMT_OBJECT_GUID .
  methods DETERMINE_PRICE_SLICES
    changing
      !CH_S4_CONDITIONS type char1 .
  methods GET_CIP_RATES
    importing
      value(IM_CTR_HEAD_GUID) type guid
      !IM_CTR_ITM_GUID type guid
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
    exporting
      !EX_CIP_RATE type TT_CIP_RATE .
  methods MAP_CIP_RATES
    importing
      value(IM_CTR_ITM_GUID) type guid
      !IM_CALCULATE_TTPR type C optional
      value(IT_CONDITIONS) type TT_PRICE_COND_SCALES
      value(IT_DB_ICF) type char1
    exporting
      !ET_CONDITIONS type TT_PRICE_COND_SCALES .
  methods GET_PARTVIEW_LIST
    importing
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IM_SEARCH_STRING type STRING optional
    exporting
      !ET_PART_LIST type char1
      !EV_COUNT type INT4 .
  methods UPDATE_PR_STATUS_FOR_CTR
    importing
      !IM_PR_ITEM_GUIDS type GUID
      !IM_CTR_GUID type guid optional
      !IM_STATUS_ID type CRM_J_STATUS
      !IM_ACTIVE type BOOLEAN .
  methods ADD_ATTACHMENTS
    importing
      !IM_GUID type guid
      !IT_ATTACHMENTS type TT_ATTACHMENT .
  methods GET_DEFAULT_PCR_PNC
    importing
      !IM_BUYER type UNAME optional
      !IM_ACTION type STRING optional
    exporting
      !EX_PCR type ZPRC_CHG_CODE
      !EX_PCR_DESC type TDOBNAME .
  methods RPC_VALIDATION
    importing
      value(IM_CTR_GUID) type guid
      !IM_COMMIT_DB type C
    exporting
      !EX_RPC_ALLOWED_FLAG type C .
  methods UPDATE_CTR_STATUS_TEXT
    importing
      !IM_CTR_GUID type guid
      !IM_ACTION type STRING
      !IM_COMMENT type STRING .
  methods LOCK_UNLOCK_DOCUMENT
    importing
      !IM_LOCK_IND type CHAR1 optional
      !IM_GUID type guid optional
    exporting
      !EX_LOCK_IND type CHAR1
      !EX_BAPIRET_MSGS type BAPIRET2_T .
  methods CONDENSE_PRICING
    importing
      !IM_OBJECT_ID type OBJECT_ID optional
      !IM_DOC_GUID type guid optional
      !IM_STATUS type CRM_J_STATUS optional
    exporting
      !EX_LOCK_IND type CHAR1 .
  class-methods PART_VIEW_MASS_CHANGE
    importing
      !IS_INPUT_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_PV_MASS_CHANGE_DEEP_ENTITY .
  methods DEFAULT_SECOND_LANGUAGE
    importing
      !IM_COMPANY_CODE type BUKRS optional
      !IM_BUYER type XUBNAME optional
      !IM_DOC_TYPE type ZCONTRACT_TYPE optional
      !IM_LANGUAGE type SPRAS optional
    exporting
      !EX_SECOND_LANGUAGE type SPRAS
      !EX_SEC_LANG_DECS type SPTXT .
  class-methods GET_SUPPLIER_RATINGS
    importing
      !IM_OBJECT_ID type OBJECT_ID optional
      !IM_DOC_GUID type guid optional
      !IM_SUPPLIERID type ZSUPP_ID optional
      !IM_BU type ZBU_ID optional
      !IM_COMM_CODE type COMT_CATEGORY_ID optional
      !IM_MODE type CHAR10 optional
      !IM_STATUS type CRM_J_STATUS optional
      !IM_SAVE type CHAR1 optional
      !IM_VERSIONNO type ZBBP_VERSION_NO optional
    exporting
      !EX_ENTITY type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_SUPPLIER_RATING .
  class-methods PART_SEARCH_EXCEL_UPLD
    importing
      !IM_MODE type CHAR5
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IM_FILE_NAME type STRING optional
      !IM_EXCEL_STREAM_BIN type STRING optional
      !IM_EXCEL_STREAM type XSTRING optional .
  class-methods ADMINISTRATE_INSIG_CHANGE
    importing
      !IS_INPUT_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_ADMIN_CHANGE_DEEP_ENTITY .
  class-methods CREATE_CLASSFICATION_DETAILS
    importing
      value(IM_CLSFY_CODE_DATA) type TT_CLASSIFY_H optional
      value(IM_OBJECT_TYPE) type CRMT_SUBOBJECT_CATEGORY_DB default 'BUS2000113'
      value(IM_OBJECT_ID) type OBJECT_ID optional
      value(IM_GUID) type CRMT_OBJECT_GUID optional
      value(IM_CALL_FROM) type CHAR1 optional .
  class-methods GET_CLASSIFICATION_CODE
    importing
      !IM_HEADER_GUID type CRMT_OBJECT_GUID optional
    exporting
      !EX_ENTITYSET type ZCL_ZFIO_MNG_CTR_MPC=>TT_CLASSIFICATIONDETAILS .
  class-methods MAP_PLANT_EXTN_DATA
    importing
      !IM_FIORI_HEADER type ZFIO_CTR_HDR
      !IM_SOURCE_DATA type ZFIO_ITM_SOURCE_DATA
      !IM_DB_HEADER type char1
      !IM_DB_ITEMS type char1
      !IM_DB_CONDITIONS type char1
      !IM_DB_ICF type char1
      !IM_DB_DIS type char1
      !IM_DB_PARTNER type char1
      !IM_DB_STATUS type char1
    changing
      !CH_FIORI_ITEMS type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY .
  class-methods VALIDATE_OBJECT_LINKS
    importing
      !IM_COMP_CODE type BUKRS
      !IM_CTR_TYPE type ZCONTRACT_TYPE
      !IM_CTR_GUID_ID type CRMT_OBJECT_GUID
      !IM_BU_ID type ZBU_ID
      !IM_SUPPLIER_NO type ZSUPP_ID
      !IM_AWARDING_FLG type ZFIO_CTR_HDR-AWARDING_FLAG
      !IM_PLANT_DET type TT_PLANT_DET
    exporting
      !EX_RETURN_MSGS type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
  class-methods CALCULATE_PRICING_FIORI
    importing
      !IM_CTR_REF_TYPE type CRMT_PROCESS_TYPE_DB
    changing
      !CH_FIORI_COND type TT_PRICE_COND_SCALES .
  class-methods SET_AUTO_CONFIRM_STATUS
    importing
      !IT_CONTRACT_GUID type GUID
      !IM_ABP_RULE_CHECK type CHAR1 optional .
  class-methods SET_REJECTED_STATUS
    importing
      !IM_CTR_HEAD_GUID type guid
      !IM_CTR_TYPE type CRMT_PROCESS_TYPE_DB optional
      !IM_OBJECT_ID type OBJECT_ID
      !IM_REJECTION_DATE type DATS
      !IM_FIORI_ATTACHMENTS type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRATTACHMENTSINFO optional
    exporting
      !EX_MESSAGES type BAPIRET2_T .
  class-methods VALIDATE_SUPPLIER_LOCKS
    importing
      value(IM_CTR_GUID_ID) type CRMT_OBJECT_GUID
      value(IM_SUPPLIER_NO) type ZSUPP_ID
    exporting
      value(EX_RETURN_MSGS) type ZCL_ZFIO_MNG_CTR_MPC=>TT_RETURNMESSAGES .
  class-methods GET_TIERN_AGREEMENTS
    importing
      value(IM_ITEM_GUID) type GUID
    exporting
      !EX_ENTITYSET type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTITEMTIERN .
  class-methods CREATE_TIERN_AGREEMENTS
    importing
      value(IM_ITEM_TIERN_DATA) type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional
      value(IM_TIERN_DATA) type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTITEMTIERN optional
      value(IM_CTR_GUID) type CRMT_OBJECT_GUID optional
    exporting
      !EX_SUCCESS_FLAG type FLAG .
  class-methods AUTOLINK_PROFRAME_SUBCTRFORM
    importing
      !IM_CTR_HEADER_GUID type CRMT_OBJECT_GUID
    exporting
      !EX_WV_RELEVEANT type CHAR1
      !EX_PROFRAM_DOC_ID type CHAR10 .
  class-methods ITEM_RM_SALE_CREATION
    importing
      !IM_ITEM_RMSALE_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TT_CTR_ITEM_DEEP_ENTITY optional
      !IM_RMSALE_DATA type ZCL_ZFIO_MNG_CTR_MPC=>TT_CONTRACTITEMRMSALE optional
      !IM_CTR_GUID type CRMT_OBJECT_GUID optional
      !IM_CTR_HEAD_GUID type guid optional
      !IM_MODE type CHAR1 optional
      !IM_CTR_NO type OBJECT_ID optional
    exporting
      !EX_SUCCESS_FLAG type FLAG .
  class-methods FETCH_TIERN_DEFAULT_TERMS
    changing
      !CH_DEFAULT_TERMS type char1.
  class-methods APPLYCPART
    importing
      !IM_CTR_HEADER_GUID type crmt_object_guid
      !IM_CTR_ITEM_GUID type crmt_object_guid
      !IM_ORDEREDPROD type crmt_ordered_prod_db
      !IM_ACTION type CHAR20
      !IM_CTR_NO type crmt_object_id_db
    exporting
      !EX_APPLYCPARTCOUNT type INT4
      !EX_SUCCESS_FLAG type CHAR1 .
  class-methods CREATE_ZRMS_CONTRACT
    importing
      !IM_CTR_NO type OBJECT_ID
      !IM_CTR_HEADER_GUID type CRMT_OBJECT_GUID .
  class-methods FETCH_RM_CONTRACT_DET
    importing
      !IM_ITEM_GUID type guid
      !IM_HDR_GUID type guid
    exporting
      !ET_RM_OBJ_LIST type ZCL_ZFIO_MNG_CTR_MPC=>TT_CTRITEMRMOBJLIST .
  class-methods MULTIPLE_CTR_UPDATE
    importing
      !IS_INPUT_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_ACTION_DEEP_ENTITY .
protected section.
private section.
ENDCLASS.



CLASS ZCL_CONTRACT_APP IMPLEMENTATION.


method ADD_ATTACHMENTS.
endmethod.


method ADMINISTRATE_INSIG_CHANGE.
endmethod.


method APPLYCPART.
endmethod.


method AUTOLINK_PROFRAME_SUBCTRFORM.
endmethod.


method CALCULATE_PRICING.
endmethod.


method CALCULATE_PRICING_FIORI.
endmethod.


method CHANGE_BUYER_FOR_CONTRACTS.
endmethod.


method CLOSE_INSIGNIFICANT_CHG_VRSN.
endmethod.


method COMPARE_TWO_VERSIONS.
endmethod.


method CONDENSE_PRICING.
endmethod.


method COPY_CONTRACT.
endmethod.


method COPY_ITEMS.
endmethod.


method CREATE_CLASSFICATION_DETAILS.
endmethod.


method CREATE_CONTRACT.
endmethod.


method CREATE_TIERN_AGREEMENTS.
endmethod.


method CREATE_ZRMS_CONTRACT.
endmethod.


method DEFAULT_SECOND_LANGUAGE.
endmethod.


method DELETE_CONTRACT.
endmethod.


method DETERMINE_PRICE_SLICES.
endmethod.


method DETERMINE_WVDV_SERVICE_LOC.
endmethod.


method DIRECT_DB_PDF_ATTACHMENT.
endmethod.


method DISCARD_CHANGE_VERSION.
endmethod.


method EXCEL_VALIDATE_DATA.
endmethod.


method FETCH_DEFAULT_TERMS.
endmethod.


method FETCH_RM_CONTRACT_DET.
endmethod.


method FETCH_SUPPLIER_CONTACT_PERSONS.
endmethod.


method FETCH_TIERN_DEFAULT_TERMS.
endmethod.


method FORMAT_MESSAGES_TO_BAPIRET.
endmethod.


method FORMAT_TEXTS_TO_DB_FORMAT.
endmethod.


method GET_ALL_PACK_TERMS.
endmethod.


method GET_ALL_PRICE_CHANGE_REASONS.
endmethod.


method GET_ALL_RETURN_TERMS.
endmethod.


method GET_CIP_RATES.
endmethod.


method GET_CLASSIFICATION_CODE.
endmethod.


method GET_COMP_BID_AND_REASONS.
endmethod.


method GET_COND_WEIGHT_TYPES.
endmethod.


method GET_CONTRACT_HEADER_STATUS.
endmethod.


method GET_CONTRACT_INSTANCE.
endmethod.


method GET_CONTRACT_LIST.
endmethod.


method GET_CONTRACT_LIST_AMDP.
endmethod.


method GET_CTR_CHANGELOG.
endmethod.


method GET_CTR_CHANGELOG_NEW.
endmethod.


method GET_CTR_RELATEDDOCS.
endmethod.


method GET_CTR_VERSION_LIST.
endmethod.


method GET_CURRENT_VERSION_GUID.
endmethod.


method GET_DB_TEXTS_WITHOUT_DB_FORMAT.
endmethod.


method GET_DEFAULT_PCR_PNC.
endmethod.


method GET_PAGE1_INFO.
endmethod.


method GET_PARTNO_TEXT.
endmethod.


method GET_PARTVIEW_LIST.
endmethod.


method GET_PART_NUMBERS_NEW.
endmethod.


method GET_PLANT_DETAILS.
endmethod.


method GET_PORG_PGRP_DATA_FROM_BUYER.
endmethod.


method GET_PRICE_CONDITIONS_SCALES.
endmethod.


method GET_RELATED_OBJ_LINK.
endmethod.


method GET_RELATED_SCHED_AGMNT.
endmethod.


method GET_STATUS_HELP.
endmethod.


method GET_SUPPLIER_RATINGS.
endmethod.


method GET_TIERN_AGREEMENTS.
endmethod.


method GET_VALIDITY_DATE_TRANSFERCTR.
endmethod.


method GET_VALID_CTR_COLOR_RESOL.
endmethod.


method ITEM_RM_SALE_CREATION.
endmethod.


method LOCK_UNLOCK_DOCUMENT.
endmethod.


method MAP_ATTACHMENT_DATA.
endmethod.


method MAP_CIP_RATES.
endmethod.


method MAP_PLANT_EXTN_DATA.
endmethod.


method MASS_CHANGE_DOCS.
endmethod.


method MODIFY_CONTRACT.
endmethod.


method MODIFY_DATA_WITH_CURRENT_GUIDS.
endmethod.


method MULTIPLE_CTRS_CANCELLATION.
endmethod.


method MULTIPLE_CTR_UPDATE.
endmethod.


method PART_SEARCH_EXCEL_UPLD.
endmethod.


method PART_VIEW_MASS_CHANGE.
endmethod.


method RELEASE_VERSION.
endmethod.


method RPC_VALIDATION.
endmethod.


method SEND_REMAINDER.
endmethod.


method SET_AUTO_CONFIRM_STATUS.
endmethod.


method SET_REJECTED_STATUS.
endmethod.


method SUPPLIER_CONFIRMATION.
endmethod.


method UPDATE_CONFIRMED_STATUS.
endmethod.


method UPDATE_CTR_STATUS_TEXT.
endmethod.


method UPDATE_HISTORY_STATUS_TEXT.
endmethod.


method UPDATE_PR_STATUS_FOR_CTR.
endmethod.


method VALIDATE_DATA.
endmethod.


method VALIDATE_ITEM_DATA.
endmethod.


method VALIDATE_OBJECT_LINKS.
endmethod.


method VALIDATE_SUPPLIER_LOCKS.
endmethod.


method WITHDRAW_APPROVAL.
endmethod.
ENDCLASS.
