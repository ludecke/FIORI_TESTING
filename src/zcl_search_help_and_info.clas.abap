class ZCL_SEARCH_HELP_AND_INFO definition
  public
  create public .

public section.

  "types TS_UOM_CONV type ZAIF_UOM_CONVERSION .
  types:
    BEGIN OF ts_so10_texts,
        so10_name TYPE tdobname,
        so10_text TYPE string,
      END OF ts_so10_texts .
  types:
    tt_so10_texts TYPE TABLE OF ts_so10_texts .
  types:
    tt_so10_names TYPE RANGE OF tdobname .
"  types TS_BUNDLEIDF4 type ZTYPE_AHEAD .
"  types:
"    tt_bundleidf4 TYPE STANDARD TABLE OF ts_bundleidf4 .
"  types:
"    tt_hcf_partner TYPE RANGE OF Zbp_partfunc .
  types:
    tt_buyer_dept TYPE TABLE OF Zfio_buyer_department .                    "RKORADA - US# 10659 Simplify Filter Buyer Department on Worklist
"  types:
"    tt_mass_data TYPE TABLE OF Zfio_pd_mass_change WITH DEFAULT KEY .
"  types:
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#8197>
    "BEGIN OF ts_diff_fields.
   "     INCLUDE     TYPE zbbp_pds_diff_fields.
    "TYPES: object_type    TYPE char10,
     "      change_type    TYPE Zchange_type,
      "     exception_flag TYPE Zexception_flg, " US 18754 KAMUPPA POC
       "    END OF ts_diff_fields .
  "types:
   " tt_diff_fields TYPE TABLE OF ts_diff_fields .

"****** End of Insert by  <VMANCHA> <US#8197>
"************************************************************************
"  data AT_I type CHAR1 value 'I' ##NO_TEXT.
"  data AT_EQ type CHAR2 value 'EQ' ##NO_TEXT.
"  data AT_CP type CHAR2 value 'CP' ##NO_TEXT.
"  data AT_STAR type CHAR1 value '*' ##NO_TEXT.

  methods GET_LSUPPLIER_LIST
    importing
      !IV_SRH_STRING type STRING optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IV_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
    exporting
      !ET_SUPPLIER_LIST type ZTT_SUPPLIER_SEARCH .
  methods GET_COUNTRY_LIST
    importing
      !IM_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IM_SEARCH_STRING type STRING optional
      !IM_LANGUAGE_KEY type SY-LANGU optional.
    "exporting
      "!EX_ALL_COUNTRIES type ZCL_FIO_COMMON_AP_MPC=>TT_COUNTRYF4 . "TODO
  methods GET_SUPPLIER_INFO
    importing
      !IV_SUPPLIER type BU_PARTNER optional
    exporting
      !ES_SUPPLIER type ZSUPPLIER_SEARCH .
  methods GET_SUPPLIER_LIST
    importing
      !IV_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IV_SRH_STRING type STRING optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_ORDERBY type /IWBEP/T_MGW_SORTING_ORDER optional
    exporting
      !ET_SUPPLIER_LIST type ZTT_SUPPLIER_SEARCH .
  methods GET_COMMODITY_CODE_LIST
    importing
      !IV_SRH_STRING type STRING optional
      !IV_COMMODITY_ID type COMT_CATEGORY_ID optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IV_RESPONSIBLE_BUYER type XUBNAME optional
    exporting
      !ET_COMMODITY_CODE_LIST type ZTT_COMMODITY .
  methods GET_BUYER_FROM_PURCH_GROUP
    importing
      !IV_PURCH_GRP type HROBJID optional
    exporting
      !EV_BUYER_ID type UNAME .
  methods GET_LOWEST_COMMODITY_CODE_LIST
    importing
      !IV_SRH_STRING type STRING optional
      !IV_COMMODITY_ID type COMT_CATEGORY_ID optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IV_RESPONSIBLE_BUYER type XUBNAME optional
    exporting
      !ET_COMMODITY_CODE_LIST type ZTT_COMMODITY .
  methods GET_CDS_BUYER_LIST
    importing
      !IV_FIRSTNAME type STRING optional
      !IV_LASTNAME type STRING optional
      !IV_USERNAME type XUBNAME optional
      !IV_DEPARTMENT type STRING optional
      value(IV_SEARCH_STR) type STRING optional
      !IV_VIRTUAL_BUYER_FLAG type CHAR1 optional
    exporting
      !ET_BUYER type ZTT_CTR_RESPONSIBLE_BUYER .
  methods GET_COMPANY_CODE_LIST
    importing
      !IV_SEARCH_STR type STRING optional
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
    exporting
      !ET_COMPANIES type ZFIO_TT_F4COMPCODE .
  methods GET_BUYER_DEPT_LIST
    importing
      !IS_PAGING type /IWBEP/S_MGW_PAGING optional
      !IT_FILTER_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION optional
      !IV_SEARCH_STRING type STRING optional
    exporting
      !ET_BUYER_DEPT type TT_BUYER_DEPT .
  methods GET_SO10_TEXTS
    importing
      !IM_SO10_NAMES type TT_SO10_NAMES
      !IM_LANGUAGE_KEY type SPRAS
      !IM_TEXTID type TDID optional
    exporting
      !EX_SO10_TEXTS type TT_SO10_TEXTS .
  methods COMPARE_TWO_VERSIONS
    importing
      !IM_OBJ_TYPE type ZBBP_SEARCH_OBJTYP
      !IM_OLD_HDR_GUID type GUID optional
      !IM_NEW_HDR_GUID type GUID optional
      !IM_COMPARE_METH type CHAR10 default 'DEF'
    exporting
      "!EX_DIFF_FIELDS type TT_DIFF_FIELDS
      "!EX_DOCUMENT_FLOW type ZPD_FLOW_WT
      "!EX_SUPPLIER type ZTT_CP_DETAILS
      !EX_EXCEPTION type char1.
      "!EX_SENDVIA type ZTT_SENDVIA .
  methods UPDATE_PART_COMM_CODE
    importing
      value(IM_PART_NO) type COMT_PRODUCT_ID
      value(IM_COMM_CODE) type COMT_CATEGORY_ID
      value(IM_BUYERID) type XUBNAME
      !IM_UOM type COMT_UNIT optional
      !IM_UOMDISP type COMT_UNIT optional
      "!IM_UOMCONVERSION type TS_UOM_CONV-CONVERSION_FACTOR optional
      !IM_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB optional
    exporting
      value(EX_UPDATE) type FLAG
      value(EX_MESSAGE) type CHAR256 .
  methods GET_COMM_CODE_FOR_PARTNO
    importing
      !IT_SRH_PART type /IWBEP/T_COD_SELECT_OPTIONS optional
      !IV_RESPONSIBLE_BUYER type SY-UNAME optional
      "!I_PROCESS_TYPE type ZGLOBUS_PROCESS_TYPE optional
    exporting
      !ET_PART_NUMBER type char1 .
  methods CHECK_COMM_CODE_ASSIGNMENT
    importing
      !IV_RESPONSIBLE_BUYER type SY-UNAME optional
      !IV_ITEM_CODE_TYPE type char1 optional
      !IV_ITEM_CODE type CHAR50 optional
      !IV_COMM_CODE type COMT_CATEGORY_ID optional
      !IT_PART_COMM_CODE type char1 optional
      !IT_BUYER_COMM_CODE type ZTT_COMMODITY optional
    exporting
      !EX_COMM_CODE type COMT_CATEGORY_ID
      !EX_MESSAGE type CHAR256 .
  methods UMLAUTS_CONVERSION
    importing
      value(IM_TEXT) type CHAR100
    exporting
      value(EM_TEXT) type CHAR100 .
  methods STANDARD_UOM_CONVERSION
    importing
      !IV_FROM_QUANTITY type CNVT_QUANTITY
      !IV_FROM_UNIT type CNVT_QUANTITY_UNIT
      !IV_TO_UNIT type CNVT_QUANTITY_UNIT
    exporting
      !EV_TO_QUANTITY type CNVT_QUANTITY
      !EV_CONV_NUMERATOR type DZAEHL
      !EV_CONV_DENOMINATOR type NENNR
      !EX_MESSAGE type CHAR256
    exceptions
      TO_UOM_DOES_NOT_EXIST
      UOM_DIMENSION_DOES_NOT_MATCH
      FROM_UOM_DOES_NOT_EXIST
      BOTH_UOM_DOES_NOT_EXIST
      ARITH_ERROR .
  methods GET_BUSINESS_UNIT
    importing
      !IM_USER_ID type XUBNAME
    exporting
      !EX_BUSINESS_UNIT type OM_ATTRVAL .
  methods MASS_CHANGE_DOCS
    importing
      !IM_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB
      !IM_MASS_DATA type char1 .
  methods CREATE_PDHCF_CHANGE_LOG
    importing
      !IM_HEAD_GUID type GUID
      !IM_HCF_GUID type GUID optional
      !IM_PARTNER_TYPE type char1 optional .
  methods GET_CDS_BUYER_LIST_BBAC
    importing
      !IV_FIRSTNAME type STRING optional
      !IV_LASTNAME type STRING optional
      !IV_USERNAME type XUBNAME optional
      !IV_DEPARTMENT type STRING optional
      value(IV_SEARCH_STR) type STRING optional
      !IV_VIRTUAL_BUYER_FLAG type CHAR1 optional
      !IV_ACTIVE_BUYER_FLAG type CHAR1 optional
    exporting
      !ET_BUYER type ZTT_CTR_RESPONSIBLE_BUYER .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SEARCH_HELP_AND_INFO IMPLEMENTATION.


  METHOD check_comm_code_assignment.


ENDMETHOD.


method COMPARE_TWO_VERSIONS.
endmethod.


METHOD create_pdhcf_change_log.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 08-Sep-2020                                           &*
*& Description: US# NPSCC-30094 - Create change logs for new entries  &*
*&              as standard is not creating change logs for new entry &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*-------

ENDMETHOD.


method GET_BUSINESS_UNIT.
endmethod.


METHOD get_buyer_dept_list.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2018-03-01                                           &*
*& Description: PR App - Simplify Filter Buyer Department on Worklist&*
*&              US# 10654 and US# 10659                              &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------
  ENDMETHOD.


method GET_BUYER_FROM_PURCH_GROUP.
 endmethod.


  METHOD get_cds_buyer_list.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display responsible buyers in F4 help &*
*&              US# 2953                                             &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*


  ENDMETHOD.


  METHOD get_cds_buyer_list_bbac.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Naresh Devineni (DEVINEN)                  &*
*& Created    : 2020-12-24                                           &*
*& Description: This method is display responsible buyers in F4 help &*
*&              based on BBAC Buyer Group - US# 31786                &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*----------

  ENDMETHOD.


  METHOD get_commodity_code_list.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display commodity codes in F4 help    &*
*&              US# 2957                                             &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*---------------------------------------------------------------------*
*& Date:        02/06/2018                                           &*
*& Developer:   Tamilarasi Thirumal/Nihar Ranasingh(TTHIRUM/NRANASI) &*
*& Description: SP_37/39-US# 12966-                                  &*
*&         PC: Enhance search helps for BU specific commodity codes  &*
*&   Display Comm_Code in F4 based on Buyer Business Unit            &*
*&   This F4 for Comm_Code will be used for only Header level.       &*
*---------------------------------------------------------------------*
*============================================================================================*
** Now This Method Will be used across all applications wherever The commodity code is fetched.
** We will be calling this Method from COMMON_APP_DPC_EXT  (for F4help of Comm_code on Header )
*============================================


  ENDMETHOD.


  METHOD get_comm_code_for_partno.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Nihar Ranasingh(NRANASI)                   &*
*& Created    : 2018-07-09                                           &*
*& Developer:   Tamilarasi Thirumal/Nihar Ranasingh(TTHIRUM/NRANASI) &*
*& Description: SP_36/39-US# 11197- Adjustment: Populate dependent   &*
*&              fields after manual part master assignment           &*
*---------------------------------------------------------------------*





*"===}-E-SP36/39-US# 11197-Populate dependent fields after manual part master assignment By-TTHIRUM/NRANASI
  ENDMETHOD.


  METHOD get_company_code_list.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2018-01-20                                           &*
*& Description: This method is display company codes in F4 help      &*
*&              US# 2971                                             &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*---------------------------------------------------------------------*
*& Date       : 26-April-2018                                         &*
*& Responsible: Infosys                                               &*
*& Developer  : Tamilarasi (TTHIRUM)                                  &*
*& Description: SP36_US#9002-                                         &*
*&              Fiori App Contract Header - legal entity additional   &*
*&              info from Master data                                 &*
*---------------------------------------------------------------------*




  ENDMETHOD.


METHOD get_country_list.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 20-Feb-2018                                           &*
*& Description: US#3006                                               &*
*&              Get all the countries to be displayed as F4.          &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        25-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#11606                             &*
*&              Using the common project/class for country F4 help    &*
*----------------------------------------------------------------------*


ENDMETHOD.


  METHOD get_lowest_commodity_code_list.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display item commodity codes in F4    &*
*&              help US# 2991                                        &*
*&-------------------------------------------------------------------&*
*---------------------------------------------------------------------*
*& Date:        02/07/2018                                           &*
*& Developer:   Tamilarasi Thirumal/Nihar Ranasingh(TTHIRUM/NRANASI) &*
*& Description: SP_37/39-US# 12966-                                  &*
*&         PC: Enhance search helps for BU specific commodity codes  &*
*&   Display Comm_Code in F4 based on Buyer Business Unit            &*
*&   This F4 for Comm_Code will be used for only Item level.         &*
*---------------------------------------------------------------------*
*============================================================================================*
** Now This Method Will be used across all applications wherever The commodity code is fetched.
** We will be calling this Method from COMMON_APP_DPC_EXT  (for F4help of Comm_code on Item )
*============================================================================================*



  ENDMETHOD.


  METHOD get_lsupplier_list.
*----------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                     &*
*& Created    : 2017-11-01                                            &*
*& Description: US 2943 -This method is to display all the suppliers  &*
*&              in Fiori                                              &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        13-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#11606                             &*
*&              Getting supplier list based on filter options         &*
*----------------------------------------------------------------------*

*&

  ENDMETHOD.


METHOD get_so10_texts.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 09-Apr-2018                                           &*
*& Description: Get all the SO10 text descriptions                    &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&------

ENDMETHOD.


  METHOD get_supplier_info.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-11-14                                           &*
*& Description: This method is generic method to get supplier info   &*
*&              for better performance in Quick view card etc.       &*
*&-------------------------------------------------------------------&*

  ENDMETHOD.


METHOD get_supplier_list.
*----------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                     &*
*& Created    : 2017-11-01                                            &*
*& Description: US 2943 -This method is to display all the suppliers  &*
*&              in Fiori                                              &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        13-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#11606                             &*
*&              Getting supplier list based on filter options         &*
*----------------------------------------------------------------------*

*&-----------
ENDMETHOD.


METHOD mass_change_docs.



ENDMETHOD.


  METHOD standard_uom_conversion.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2019-03-28                                           &*
*& Description: PC App - US# 19362                                   &*
*&              Make standard conversion factors for UoM available   &*
*&              and allow them in Pcont                              &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*


  ENDMETHOD.


  METHOD umlauts_conversion.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2018-03-01                                           &*
*& Description: PC App - US# 10769                                   &*
*&              German Umlauts to be recognized as ae,oe,ue, ss      &*
*&              in PC app                                            &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*



  ENDMETHOD.


  METHOD update_part_comm_code.
*----------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                         &*
*& Developer  : Infosys / Harsh Talesra (HTALESR)                     &*
*& Created    : 30-May-2018                                           &*
*& Description: US#13040-update part master and commodity code        &*
*&              linkage in SRm master data                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*




  ENDMETHOD.
ENDCLASS.
