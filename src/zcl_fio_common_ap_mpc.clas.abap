class ZCL_FIO_COMMON_AP_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  "types:
"     TS_COMMODITYCODE type ZTS_COMMODITY .
"  types:
"TT_COMMODITYCODE type standard table of TS_COMMODITYCODE .
  types:
   begin of ts_text_element,
      artifact_name  type c length 40,       " technical name
      artifact_type  type c length 4,
      parent_artifact_name type c length 40, " technical name
      parent_artifact_type type c length 4,
      text_symbol    type textpoolky,
   end of ts_text_element .
  types:
         tt_text_elements type standard table of ts_text_element with key text_symbol .
"  types:
"     TS_PARTNOF4 type ZTS_PART_NUMBER .
"  types:
"TT_PARTNOF4 type standard table of TS_PARTNOF4 .
"  types:
"  begin of TS_USERBU_DET,
"     CLASSIFICATIONVISIBLE type C length 1,
"     BUNDLEIDVISIBLE type C length 1,
"     CONSOLIDATIONCENTERVISIBLE type C length 1,
"     GPCACTIVE type string,
"     USERID type string,
"     BUID type string,
"     AWARD_APPLICABLE type C length 1,
"     PROCESSTYPE type C length 4,
"     BU type string,
"  end of TS_USERBU_DET .
"  types:
"TT_USERBU_DET type standard table of TS_USERBU_DET .
"  types:
"  begin of TS_DOCTYPEF4,
"     DOC_TYPE_DESC type C length 40,
"     DOC_TYPE type C length 10,
"     DOC_SUB_TYP_DESC type C length 20,
"     DOC_SUB_TYPE type C length 4,
"  end of TS_DOCTYPEF4 .
"  types:
"TT_DOCTYPEF4 type standard table of TS_DOCTYPEF4 .
"  types:
"     TS_PLANTF4 type ZFIO_PLANT .
"  types:
"TT_PLANTF4 type standard table of TS_PLANTF4 .
"  types:
"     TS_BUYERF4 type ZCTR_RESPONSIBLE_BUYER .
"  types:
"TT_BUYERF4 type standard table of TS_BUYERF4 .
"  types:
"     TS_SUPPLIERF4 type ZSUPPLIER_SEARCH .
"  types:
"TT_SUPPLIERF4 type standard table of TS_SUPPLIERF4 .
"  types:
"     TS_CURRENCYF4 type ZFIO_CURRENCY .
"  types:
"TT_CURRENCYF4 type standard table of TS_CURRENCYF4 .
"  types:
"     TS_COUNTRYF4 type BBPLANDS4 .
"  types:
"TT_COUNTRYF4 type standard table of TS_COUNTRYF4 .
"  types:
"     TS_COMPANYF4 type ZFIO_CTR_F4COMPCODE .
"  types:
"TT_COMPANYF4 type standard table of TS_COMPANYF4 .
"  types:
"     TS_LANGUAGEF4 type ZFIO_TEXT_MOD_LANGUAGE .
"  types:
"TT_LANGUAGEF4 type standard table of TS_LANGUAGEF4 .
"  types:
"     TS_BUSINESSUNITF4 type ZFIO_TEXT_MOD_BU .
"  types:
"TT_BUSINESSUNITF4 type standard table of TS_BUSINESSUNITF4 .
"  types:
"  begin of TS_DIVISIONF4,
"     TOP_DIVISONDESC type C length 60,
"     TOP_DIVISION type C length 10,
"  end of TS_DIVISIONF4 .
"  types:
"TT_DIVISIONF4 type standard table of TS_DIVISIONF4 .
"  types:
"  begin of TS_RELEASESWITCH,
"     DOC_TYPE type C length 10,
"     ACTIVE_RELEASE type C length 10,
"  end of TS_RELEASESWITCH .
"  types:
"TT_RELEASESWITCH type standard table of TS_RELEASESWITCH .
"  types:
"  begin of TS_ITEMCODETYPEF4,
"     ZITEMCODE_TYPE type C length 2,
"     ZDESCR type C length 40,
"  end of TS_ITEMCODETYPEF4 .
"  types:
"TT_ITEMCODETYPEF4 type standard table of TS_ITEMCODETYPEF4 .
"  types:
"     TS_LOCSUPPF4 type ZSUPPLIER_SEARCH .
"  types:
"TT_LOCSUPPF4 type standard table of TS_LOCSUPPF4 .
"  types:
"  begin of TS_DIBSPLANTS,
"     PLANT type C length 4,
"     PLANT_DESC type C length 20,
"  end of TS_DIBSPLANTS .
"  types:
"TT_DIBSPLANTS type standard table of TS_DIBSPLANTS .
"  types:
"     TS_CONTACTPERSON type ZFIO_SUP_CONTACT_PERSON .
"  types:
"TT_CONTACTPERSON type standard table of TS_CONTACTPERSON .
"  types:
"     TS_SENDVIA type ZBB_SENDVIA .
"  types:
"TT_SENDVIA type standard table of TS_SENDVIA .
"  types:
"     TS_SUBSTITUTIONGROUP type ZSUBST_GRP_PARTS .
"  types:
"TT_SUBSTITUTIONGROUP type standard table of TS_SUBSTITUTIONGROUP .
"  types:
"     TS_SHIPTOID type ZSHIP_TO_ID_ADR .
"  types:
"TT_SHIPTOID type standard table of TS_SHIPTOID .
"  types:
"     TS_BUYERBBACF4 type ZPR_PO_BUYER_RESTRICT .
"  types:
"TT_BUYERBBACF4 type standard table of TS_BUYERBBACF4 .

"  constants GC_SUPPLIERF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'SupplierF4' ##NO_TEXT.
"  constants GC_SUBSTITUTIONGROUP type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'SubstitutionGroup' ##NO_TEXT.
"  constants GC_SHIPTOID type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ShipToID' ##NO_TEXT.
"  constants GC_SENDVIA type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'SendVia' ##NO_TEXT.
"  constants GC_RELEASESWITCH type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ReleaseSwitch' ##NO_TEXT.
"  constants GC_PLANTF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'PlantF4' ##NO_TEXT.
"  constants GC_PARTNOF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'PartNoF4' ##NO_TEXT.
"  constants GC_LOCSUPPF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'LocSuppF4' ##NO_TEXT.
"  constants GC_LANGUAGEF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'LanguageF4' ##NO_TEXT.
"  constants GC_ITEMCODETYPEF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ItemCodeTypeF4' ##NO_TEXT.
"  constants GC_USERBU_DET type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'UserBU_Det' ##NO_TEXT.
"  constants GC_DOCTYPEF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'DocTypeF4' ##NO_TEXT.
"  constants GC_DIVISIONF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'DivisionF4' ##NO_TEXT.
"  constants GC_DIBSPLANTS type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'DibsPlants' ##NO_TEXT.
"  constants GC_CURRENCYF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CurrencyF4' ##NO_TEXT.
"  constants GC_COUNTRYF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CountryF4' ##NO_TEXT.
"  constants GC_CONTACTPERSON type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ContactPerson' ##NO_TEXT.
"  constants GC_COMPANYF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CompanyF4' ##NO_TEXT.
"  constants GC_COMMODITYCODE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CommodityCode' ##NO_TEXT.
"  constants GC_BUYERF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BuyerF4' ##NO_TEXT.
"  constants GC_BUYERBBACF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BuyerBBACF4' ##NO_TEXT.
"  constants GC_BUSINESSUNITF4 type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Businessunitf4' ##NO_TEXT.

  methods LOAD_TEXT_ELEMENTS
  final
    returning
      value(RT_TEXT_ELEMENTS) type TT_TEXT_ELEMENTS
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .

  methods DEFINE
    redefinition .
  methods GET_LAST_MODIFIED
    redefinition .
protected section.
private section.

  constants GC_INCL_NAME type STRING value 'ZCL_FIO_COMMON_AP_MPC====CP' ##NO_TEXT.

  methods DEFINE_COMMODITYCODE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_PARTNOF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_USERBU_DET
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_DOCTYPEF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_PLANTF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_BUYERF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_SUPPLIERF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_CURRENCYF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_COUNTRYF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_COMPANYF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_LANGUAGEF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_BUSINESSUNITF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_DIVISIONF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_RELEASESWITCH
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_ITEMCODETYPEF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_LOCSUPPF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_DIBSPLANTS
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_CONTACTPERSON
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_SENDVIA
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_SUBSTITUTIONGROUP
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_SHIPTOID
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DEFINE_BUYERBBACF4
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
ENDCLASS.



CLASS ZCL_FIO_COMMON_AP_MPC IMPLEMENTATION.


  method DEFINE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

model->set_schema_namespace( 'PROQ.FIO_COMMON_APP_SRV' ).

define_commoditycode( ).
define_partnof4( ).
define_userbu_det( ).
define_doctypef4( ).
define_plantf4( ).
define_buyerf4( ).
define_supplierf4( ).
define_currencyf4( ).
define_countryf4( ).
define_companyf4( ).
define_languagef4( ).
define_businessunitf4( ).
define_divisionf4( ).
define_releaseswitch( ).
define_itemcodetypef4( ).
define_locsuppf4( ).
define_dibsplants( ).
define_contactperson( ).
define_sendvia( ).
define_substitutiongroup( ).
define_shiptoid( ).
define_buyerbbacf4( ).
  endmethod.


  method DEFINE_BUSINESSUNITF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_BUYERBBACF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_BUYERF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_COMMODITYCODE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_COMPANYF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_CONTACTPERSON.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*



  endmethod.


  method DEFINE_COUNTRYF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_CURRENCYF4.
  endmethod.


method DEFINE_DIBSPLANTS.
  endmethod.


  method DEFINE_DIVISIONF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_DOCTYPEF4.
  endmethod.


  method DEFINE_ITEMCODETYPEF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_LANGUAGEF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

  endmethod.


  method DEFINE_LOCSUPPF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_PARTNOF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

  endmethod.


  method DEFINE_PLANTF4.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_RELEASESWITCH.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_SENDVIA.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*

  endmethod.


  method DEFINE_SHIPTOID.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*



  endmethod.


  method DEFINE_SUBSTITUTIONGROUP.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method DEFINE_SUPPLIERF4.
    endmethod.


  method DEFINE_USERBU_DET.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method GET_LAST_MODIFIED.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  endmethod.


  method LOAD_TEXT_ELEMENTS.
    endmethod.
ENDCLASS.
