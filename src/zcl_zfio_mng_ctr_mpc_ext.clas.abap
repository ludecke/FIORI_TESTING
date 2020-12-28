CLASS zcl_zfio_mng_ctr_mpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zfio_mng_ctr_mpc
  CREATE PUBLIC .

  PUBLIC SECTION.

************************************************************************
****** Begin of Insert by  <VMANCHA> <US#2982>
    TYPES:
      BEGIN OF ts_itempricecondition_deep.
        INCLUDE TYPE ts_itempricecondition.
    TYPES:
      toitemscaleprices TYPE STANDARD TABLE OF ts_itemscaleprices WITH DEFAULT KEY,
      END OF ts_itempricecondition_deep,

      tt_itempricecondition_deep TYPE STANDARD TABLE OF ts_itempricecondition_deep.
****** End of Insert by  <VMANCHA> <US#2982>
************************************************************************

    TYPES:
      BEGIN OF ts_ctr_item_deep_entity.
        INCLUDE TYPE ts_contractitem.
    TYPES:
      tocontractitemtexts   TYPE STANDARD TABLE OF ts_contractitemtext WITH DEFAULT KEY,
*      toitempriceconditions TYPE STANDARD TABLE OF ts_itempricecondition WITH DEFAULT KEY, "By TSACHAN US 3002   -  Venky US#2982
      toitempriceconditions TYPE STANDARD TABLE OF ts_itempricecondition_deep WITH DEFAULT KEY, " Venky US#2982
      tocontractitemplants  TYPE STANDARD TABLE OF ts_contractitemplant WITH DEFAULT KEY, "Added by KAUSING US 3001
      topricereasonset      TYPE STANDARD TABLE OF ts_pricereason WITH DEFAULT KEY, " Venky US#3013
      toitemciprate         TYPE STANDARD TABLE OF ts_itemciprate WITH DEFAULT KEY, " SOPABBA US#24402
      tocontractlinerelateddocs TYPE STANDARD TABLE OF ts_contractrelateddocs WITH DEFAULT KEY, " SWDENDI ,US# 29084
*      torelateddocs TYPE STANDARD TABLE OF ts_contractrelateddocs WITH DEFAULT KEY, " SWDENDI US# 29084
      tocontractschedagr TYPE STANDARD TABLE OF ts_contractschedagr WITH DEFAULT KEY , " SWDENDI US# 29084
      tocontractitemtiern   TYPE STANDARD TABLE OF zfio_ctr_itm_tiern WITH DEFAULT KEY, "++ SRINIV NPSCC-30601
      tocontractitemrmsale   TYPE STANDARD TABLE OF Zfio_ctr_itm_rm_sale WITH DEFAULT KEY, "SWDENDI US# 31848
      END OF ts_ctr_item_deep_entity .
    TYPES:
      tt_ctr_item_deep_entity TYPE STANDARD TABLE OF ts_ctr_item_deep_entity .
    TYPES:
      BEGIN OF ts_supplier_rating.
        INCLUDE TYPE ts_supplierrating.
    TYPES:
      tolarsrating           TYPE STANDARD TABLE OF ts_larsrating WITH DEFAULT KEY,
      tosuppliercertificates TYPE STANDARD TABLE OF ts_suppliercertificates WITH DEFAULT KEY,
      END OF ts_supplier_rating.

    TYPES:
      BEGIN OF ts_ctr_deep_entity.
        INCLUDE TYPE ts_contractheader.
    TYPES:
      tocontractitems                TYPE STANDARD TABLE OF ts_ctr_item_deep_entity WITH DEFAULT KEY,
      tocontractheadertexts          TYPE STANDARD TABLE OF ts_contractheadertext WITH DEFAULT KEY,
      tocontractplantdist            TYPE STANDARD TABLE OF ts_plantdistribution WITH DEFAULT KEY,
      contractheadertoclassification TYPE STANDARD TABLE OF Zfio_ts_clasify WITH DEFAULT KEY, "++ SRINIV NPSCC 26904
*&-----------------------------------------------------------------------------&*
*      JVASUDE -- 26TH DECEMBER,2017 -- US 2947 --CONTRACT ATTACHMENTS -- BEGIN OF CHANGES
      toctrattachmentsinfo           TYPE STANDARD TABLE OF Zfio_pr_po_saperion_att WITH DEFAULT KEY,
*      JVASUDE -- 26TH DECEMBER,2017 -- US 2947 --CONTRACT ATTACHMENTS -- END OF CHANGES
*&-----------------------------------------------------------------------------&*
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#10661>
      toreturnmessages               TYPE STANDARD TABLE OF ts_returnmessages WITH DEFAULT KEY,
****** End of Insert by  <VMANCHA> <US#10661>
* BOC { US# 20202 by SWDENDI - Enhance Send Via logic
      toctroutputmedium              TYPE STANDARD TABLE OF Zfio_ctr_output_medium WITH DEFAULT KEY,
* EOC } US# 20202 by SWDENDI - Enhance Send Via logic
* BOC { US# 22132 by SOPABBA - Copy related documents
      toctrrelatedobjlink            TYPE STANDARD TABLE OF Zreldocs_objlink WITH DEFAULT KEY,
* EOC } US# 22132 by SOPABBA - Copy related documents
      tosourceplantdata              TYPE STANDARD TABLE OF Zfio_itm_source_data WITH DEFAULT KEY, " US# 28963_BY SOPABBA_Plant extension
      tocontractitemmasschg          TYPE STANDARD TABLE OF Zfio_itm_source_data WITH DEFAULT KEY, " US# 28972_BY SOPABBA_
      tokodabameasure                TYPE STANDARD TABLE OF Zfio_ctr_kdb_measure WITH DEFAULT KEY,
      todetroitdieseldibs            TYPE STANDARD TABLE OF ts_detroitdieseldibs WITH DEFAULT KEY, " US# 30004 by SWDENDI
************************************************************************
      END OF ts_ctr_deep_entity .
    TYPES : BEGIN OF ts_default_terms_deep_entity.
        INCLUDE TYPE ts_defaulttermsdeep.
    TYPES:
      todefaultterms TYPE STANDARD TABLE OF ts_defaultterms WITH DEFAULT KEY,
      END OF ts_default_terms_deep_entity.

*   VMANCHA US#21862 Mass Change
    TYPES: BEGIN OF ts_mass_change_deep_entity.
        INCLUDE TYPE ts_ctrmasschange.
    TYPES: tocontractheader TYPE STANDARD TABLE OF ts_contractheader WITH DEFAULT KEY,
           END OF ts_mass_change_deep_entity.

*   Begin of changes*KAUSING*US#21855 Mass Change Part View
    TYPES: BEGIN OF ts_pv_mass_change_deep_entity.
        INCLUDE TYPE ts_partviewmasschange.
    TYPES:
      tocontractitems      TYPE STANDARD TABLE OF ts_ctr_item_deep_entity WITH DEFAULT KEY,
      tocontractitemplants TYPE STANDARD TABLE OF ts_contractitemplant WITH DEFAULT KEY,
      END OF ts_pv_mass_change_deep_entity.
*   End of changes by KAUSING*npscc 21855*Mass change Part View
*   Begin of changes US# 29654 by SWDENDI
    TYPES: BEGIN OF ts_ctr_action_deep_entity.
        INCLUDE TYPE ts_ctractions.
    TYPES:
      tocontractitem          TYPE STANDARD TABLE OF ts_contractitem WITH DEFAULT KEY, "US# 32003 by SWDENDI
      toreturnmessages      TYPE STANDARD TABLE OF ts_returnmessages WITH DEFAULT KEY,
      END OF ts_ctr_action_deep_entity.
*   End of changes by US# 29654 by SWDENDI
*   Begin of changes by KAUSING*npscc 27592 *Adminstrate insignicant changes
    TYPES: BEGIN OF ts_admin_change_deep_entity.
        INCLUDE TYPE ts_contractadministrate.
    TYPES:
      toctrattachmentinfo   TYPE STANDARD TABLE OF zfio_pr_po_saperion_att WITH DEFAULT KEY,
      tocontractheadertexts TYPE STANDARD TABLE OF ts_contractheadertext WITH DEFAULT KEY,
      END OF ts_admin_change_deep_entity.
*   End of changes by KAUSING*npscc 27592 *Adminstrate insignicant changes

** Begin of INS KAMUPPA US 18760 01.03.2018
    TYPES : BEGIN OF ts_price_deep_entity .
        INCLUDE TYPE ts_pricingconddeep.
    TYPES :
      topriceconditions TYPE TABLE OF ts_priceconditions WITH DEFAULT KEY,
      END OF  ts_price_deep_entity.
** End of INS KAMUPPA US 18760 01.03.2018

    METHODS create_annotation
      IMPORTING
        !io_odata_model               TYPE REF TO /iwbep/if_mgw_odata_model
        !io_vocan_model               TYPE REF TO /iwbep/if_mgw_vocan_model
        !iv_namespace                 TYPE string
        !iv_entitytype                TYPE string
        !iv_property                  TYPE string
        !iv_qualifier                 TYPE string OPTIONAL
        !iv_label                     TYPE csequence OPTIONAL
        !iv_valuelist_entityset       TYPE string
        !iv_valuelist_service_name    TYPE /iwbep/med_grp_technical_name OPTIONAL
        !iv_valuelist_service_version TYPE /iwbep/med_grp_version DEFAULT 1
        !iv_search_help               TYPE shlpname
        !iv_search_supported          TYPE abap_bool
      RETURNING
        VALUE(ro_vocab_annotation)    TYPE REF TO /iwbep/if_mgw_vocan_collection .
    METHODS add_inout_parameter
      IMPORTING
        !iv_property               TYPE string
        !iv_valuelist_property     TYPE string
        VALUE(iv_vocab_annotation) TYPE REF TO /iwbep/if_mgw_vocan_collection .
    METHODS add_display_parameter
      IMPORTING
        !iv_valuelist_property TYPE string
        !iv_vocab_annotation   TYPE REF TO /iwbep/if_mgw_vocan_collection .
    METHODS add_in_parameter
      IMPORTING
        !iv_property           TYPE string
        !iv_valuelist_property TYPE string
        !iv_vocab_annotation   TYPE REF TO /iwbep/if_mgw_vocan_collection .
    METHODS add_out_parameter
      IMPORTING
        !iv_property           TYPE string
        !iv_valuelist_property TYPE string
        !iv_vocab_annotation   TYPE REF TO /iwbep/if_mgw_vocan_collection .

    METHODS define
        REDEFINITION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZFIO_MNG_CTR_MPC_EXT IMPLEMENTATION.


  METHOD add_display_parameter.
*---------------------------------------------------------------------*
*& Class      : ZCL_FIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    DATA: lo_record TYPE REF TO /iwbep/if_mgw_vocan_record.

    lo_record = iv_vocab_annotation->create_record( 'com.sap.vocabularies.Common.v1.ValueListParameterDisplayOnly' ).
    lo_record->create_property( 'ValueListProperty' )->create_simple_value( )->set_string( iv_valuelist_property ).

  ENDMETHOD.


  METHOD add_inout_parameter.
*---------------------------------------------------------------------*
*& Class      : ZCL_FIO_MNG_CTR_DPC                             &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    DATA:
      lo_record TYPE REF TO /iwbep/if_mgw_vocan_record.

    lo_record = iv_vocab_annotation->create_record( 'com.sap.vocabularies.Common.v1.ValueListParameterInOut' ).
    lo_record->create_property( 'LocalDataProperty' )->create_simple_value( )->set_property_path( iv_property ).
    lo_record->create_property( 'ValueListProperty' )->create_simple_value( )->set_string( iv_valuelist_property ).

  ENDMETHOD.


  METHOD add_in_parameter.
*---------------------------------------------------------------------*
*& Class      : ZCL_FIO_MNG_CTR_DPC                             &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    DATA: lo_record TYPE REF TO /iwbep/if_mgw_vocan_record.

    lo_record = iv_vocab_annotation->create_record( 'com.sap.vocabularies.Common.v1.ValueListParameterIn' ).
    lo_record->create_property( 'LocalDataProperty' )->create_simple_value( )->set_property_path( iv_property ).
    lo_record->create_property( 'ValueListProperty' )->create_simple_value( )->set_string( iv_valuelist_property ).


  ENDMETHOD.


  METHOD add_out_parameter.
*---------------------------------------------------------------------*
*& Class      : ZCL_FIO_MNG_CTR_DPC                             &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    DATA: lo_record TYPE REF TO /iwbep/if_mgw_vocan_record.

    lo_record = iv_vocab_annotation->create_record( 'com.sap.vocabularies.Common.v1.ValueListParameterOut' ).
    lo_record->create_property( 'LocalDataProperty' )->create_simple_value( )->set_property_path( iv_property ).
    lo_record->create_property( 'ValueListProperty' )->create_simple_value( )->set_string( iv_valuelist_property ).

  endmethod.


  METHOD create_annotation.
***********************************************************************
* Author             : AMAJAIN
* Title              : DEFINE                                                     *
* Date               : 2017-10-23                                                 *
* Module             : Procure-(EPIC) PC: Fiori App Features                       *
*_____________________________________________________________________             *
* DESCRIPTION (5933)                                                           *
*                This method is used to define entity property annotations
    DATA:
      ls_search_help      TYPE shlp_descr_t,
      lv_search_supported TYPE abap_bool,
      lv_label            TYPE string,
      lo_ann_target       TYPE REF TO /iwbep/if_mgw_vocan_ann_target,
      lo_annotation       TYPE REF TO /iwbep/if_mgw_vocan_annotation,
      lo_record           TYPE REF TO /iwbep/if_mgw_vocan_record.
*      vocab_annotation    TYPE REF TO /IWBEP/IF_MGW_VOCAN_COLLECTION.

    IF iv_search_help IS NOT INITIAL.
      CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
        EXPORTING
          shlpname = iv_search_help
        IMPORTING
          shlp     = ls_search_help.
      "      IF ls_search_help-intdescr-issimple = abap_false.
      "        RAISE EXCEPTION TYPE cx_fis_error
      "          EXPORTING
      "            textid   = cx_fis_error=>invalid_search_help
      "            shlpname = iv_search_help.
      "      ENDIF.
      lv_search_supported = ls_search_help-intdescr-autosuggest.
    ELSE.
      lv_search_supported = iv_search_supported.
    ENDIF.

    IF iv_label IS SUPPLIED.
      lv_label = iv_label.
    ELSE.
      lv_label = ls_search_help-intdescr-ddtext.
    ENDIF.

    " should have used builder pattern and passed this and the two models to constructor of builder

    io_odata_model->set_schema_namespace( iv_namespace ).

    lo_ann_target = io_vocan_model->create_annotations_target(
                      iv_target = iv_namespace && '.' && iv_entitytype && '/' && iv_property
                      iv_qualifier = iv_qualifier ).
    lo_annotation = lo_ann_target->create_annotation( iv_term = 'com.sap.vocabularies.Common.v1.ValueList' ).
    lo_record = lo_annotation->create_record( ).

    IF iv_label IS NOT INITIAL.
      lo_record->create_property( 'Label' )->create_simple_value( )->set_string( iv_label && `` )        ##NO_TEXT.
    ENDIF.

    lo_record->create_property( 'CollectionPath' )->create_simple_value( )->set_string( iv_valuelist_entityset ).

    IF iv_valuelist_service_name IS NOT INITIAL.
      DATA(lv_path) = `../..`.
      IF iv_valuelist_service_name(1) <> '/'.
        lv_path = lv_path && '/sap/'.
      ENDIF.
      lv_path = lv_path && iv_valuelist_service_name.
      IF iv_valuelist_service_version <> 1.
        lv_path = lv_path && |;v={ iv_valuelist_service_version ALPHA = OUT WIDTH = 1 }|.
      ENDIF.
      lv_path = lv_path && '/'.
      lo_record->create_property( 'CollectionRoot' )->create_simple_value( )->set_string( lv_path ).
    ENDIF.

    IF iv_search_supported = abap_true.
      lo_record->create_property( 'SearchSupported' )->create_simple_value( )->set_boolean( abap_true ).
    ENDIF.

    ro_vocab_annotation = lo_record->create_property( 'Parameters' )->create_collection( )      ##NO_TEXT.

  ENDMETHOD.


  METHOD define.
*********************************************************************&*
* Author             : AMAJAIN                                       &*
* Title              : DEFINE                                        &*
* Date               : 2017-10-23                                    &*
* Module             : Procure-(EPIC) PC: Fiori App Features         &*
*____________________________________________________________________&*
* DESCRIPTION (5933)                                                 &*
* This method is used to define entity property annotations          &*
*---------------------------------------------------------------------*
*---------------------------------------------------------------------*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
* Call standard define method
    super->define( ).
*
* Data declaration
    DATA: lo_entity_type TYPE REF TO /iwbep/if_mgw_odata_entity_typ, " entrity type
          lo_entity      TYPE REF TO /iwbep/if_mgw_odata_entity_typ, " entity
          lo_property    TYPE REF TO /iwbep/if_mgw_odata_property,   " property
          lo_annotation  TYPE REF TO /iwbep/if_mgw_odata_annotation. " annotations

    lo_entity = model->get_entity_type( 'SaperionAttachment' ).
    IF lo_entity IS BOUND.
      lo_property = lo_entity->get_property( 'MimeType' ).
      lo_property->set_as_content_type( ).
    ENDIF.

*   BoC - NPSCC 30228 Large Contract - Excel Upload (new line item creation)
    lo_entity = model->get_entity_type( 'LargeContractUpload' ).
    IF lo_entity IS BOUND.
      lo_property = lo_entity->get_property( 'MimeType' ).
      lo_property->set_as_content_type( ).
    ENDIF.
*   EoC - NPSCC 30228 Large Contract - Excel Upload (new line item creation)

    CLEAR: lo_entity, lo_property.
    lo_entity = model->get_entity_type( 'DownloadPartExcel' ).
    IF lo_entity IS BOUND.
      lo_property = lo_entity->get_property( 'MimeType' ).
      lo_property->set_as_content_type( ).
    ENDIF.

    lo_entity = model->get_entity_type( 'ContractHeader' ).   " fetch entity type
* If the object is assigned
    IF lo_entity IS NOT INITIAL.
*    Begin of changes AMISIN--- "Set Language as fixed-value list"
      lo_property = lo_entity->get_property( iv_property_name = 'Language' ).
*   If property obejct is assigned
      IF lo_property IS NOT INITIAL.
*     Create annotation by passing SAP
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
        lo_annotation->add( iv_key = 'value-list' iv_value = 'fixed-values' ).
      ENDIF.
*    Enf of changes AMISIN--- "Set Language as fixed-value list"
*   Fecth properties for validity from
      lo_property = lo_entity->get_property( iv_property_name = 'ValidityFrom' ).
      IF lo_property IS NOT INITIAL.
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
        lo_annotation->add( iv_key = 'display-format' iv_value = 'Date' ).
      ENDIF.
*   Fecth properties for validity to
      lo_property = lo_entity->get_property( iv_property_name = 'ValidityTo' ).
      IF lo_property IS NOT INITIAL.
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
        lo_annotation->add( iv_key = 'display-format' iv_value = 'Date' ).
      ENDIF.
*   Fecth properties for ValidityDate
      lo_property = lo_entity->get_property( iv_property_name = 'ValidityDate' ).
      IF lo_property IS NOT INITIAL.
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
        lo_annotation->add( iv_key = 'display-format' iv_value = 'Date' ).
      ENDIF.
    ENDIF.
* Fetch entity for language F4 help
    lo_entity = model->get_entity_type( 'Contractlangf4' ).
    IF lo_entity IS NOT INITIAL.
*   Fecth properties for language key
      lo_property = lo_entity->get_property( iv_property_name = 'LangKey' ).
      IF lo_property IS NOT INITIAL.
*   Fecth annotation for language
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
        lo_annotation->add( iv_key = 'text' iv_value = 'Language' ).
      ENDIF.
    ENDIF.

    "for Status filter showing description but passing key
    CLEAR: lo_entity, lo_property.
    lo_entity = model->get_entity_type( 'ContractStatus' ).
    IF lo_entity IS NOT INITIAL.

      lo_property = lo_entity->get_property( iv_property_name = 'StatusCode' ).
      IF lo_property IS NOT INITIAL.
        lo_annotation = lo_property->/iwbep/if_mgw_odata_annotatabl~create_annotation( /iwbep/if_mgw_med_odata_types=>gc_sap_namespace ).
*        LO_ANNOTATION->ADD( IV_KEY = 'value-list' IV_VALUE = 'fixed-values' ).
        lo_annotation->add( iv_key = 'text' iv_value = 'StatusText' ).

      ENDIF.
    ENDIF.

* Fetch antity type for contract header
    lo_entity_type = model->get_entity_type( iv_entity_name = 'ContractHeader' ).
*  Bind structure for deep entity
    lo_entity_type->bind_structure( iv_structure_name  = 'ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY').

* BoC - NPSCC 30737 Deep ENtity for Conditions
*   Fetch entity type for large contract selected conditons
    lo_entity_type = model->get_entity_type( iv_entity_name = 'LCSelectedConditions' ).

*   Bind structure for deep entity
    lo_entity_type->bind_structure( iv_structure_name  = 'ZFIO_DEEP_SEL_COND').
* EoC - NPSCC 30737 Deep ENtity for Conditions


*{ BOC - RKORADA - CTR NPSCC-25528 NPM PC: UoM "GS" not available
    lo_entity_type = model->get_entity_type( iv_entity_name = 'UOMF4' ).
    lo_entity_type->get_property( 'UnitCode' )->disable_conversion( ).
    lo_entity_type = model->get_entity_type( iv_entity_name = 'ContractItemPart' ).
    lo_entity_type->get_property( 'Unit' )->disable_conversion( ).
    lo_entity_type = model->get_entity_type( iv_entity_name = 'ContractItem' ).
    lo_entity_type->get_property( 'Unit' )->disable_conversion( ).
*} EOC - RKORADA - CTR NPSCC-25528 NPM PC: UoM "GS" not available

    " activating soft state
    model->set_soft_state_enabled( abap_true ).
    " set service schema version via Gateway API
    " Representation in $metadata document: <Schema xml:lang="en" sap:schema-version="2" xmlns="http://schemas.microsoft.com/ado/2008/09/edm">...</Schema>
    model->set_service_schema_version( iv_service_schema_version = '0005' ).


  ENDMETHOD.
ENDCLASS.
