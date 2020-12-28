CLASS zcl_zfio_mng_ctr_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zfio_mng_ctr_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /iwbep/if_mgw_appl_srv_runtime~changeset_begin
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~changeset_end
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~create_deep_entity
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~create_stream
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~execute_action
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~get_expanded_entity
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~get_expanded_entityset
        REDEFINITION .
    METHODS /iwbep/if_mgw_appl_srv_runtime~get_stream
        REDEFINITION .
    METHODS /iwbep/if_mgw_sost_srv_runtime~operation_end
        REDEFINITION .
    METHODS /iwbep/if_mgw_sost_srv_runtime~operation_start
        REDEFINITION .
  PROTECTED SECTION.

    METHODS create_contract_deep_entity
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity
        !et_messages             TYPE bapiret2_t
        !ex_pds_messages         TYPE zbbpt_pds_messages .
    METHODS adminsitrate_deep_entity
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_admin_change_deep_entity
        !et_messages             TYPE bapiret2_t
        !ex_pds_messages         TYPE zbbpt_pds_messages .
    METHODS create_contract_deep_entity_v
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity
        !et_messages             TYPE bapiret2_t
        !ex_pds_messages         TYPE zbbpt_pds_messages .

    METHODS bumultidivset_get_entityset
        REDEFINITION .
    METHODS bundleidf4set_get_entityset
        REDEFINITION .
    "methods BUYERDEPATMENTSE_GET_ENTITYSET "TODO
    " redefinition .
    METHODS buyerf4set_get_entityset
        REDEFINITION .
    METHODS cbreasonset_get_entityset
        REDEFINITION .
    METHODS classification01_get_entityset
        REDEFINITION .
    METHODS classificationde_get_entityset
        REDEFINITION .
    METHODS commoditycodelis_get_entityset
        REDEFINITION .
    METHODS commoditycodeset_get_entityset
        REDEFINITION .
    METHODS compbidset_get_entityset
        REDEFINITION .
    METHODS condweighttypef4_get_entityset
        REDEFINITION .
    METHODS contractccf4set_get_entityset
        REDEFINITION .
    METHODS contractcreateds_get_entityset
        REDEFINITION .
    METHODS contractdivlists_get_entityset
        REDEFINITION .
    METHODS contractheader01_get_entityset
        REDEFINITION .
    METHODS contractheaderse_create_entity
        REDEFINITION .
    METHODS contractheaderse_get_entity
        REDEFINITION .
    METHODS contractheaderse_get_entityset
        REDEFINITION .
    METHODS contractitempart_get_entityset
        REDEFINITION .
    METHODS contractitemplan_get_entityset
        REDEFINITION .
    METHODS contractitemrmsa_create_entity
        REDEFINITION .
    METHODS contractitemrmsa_get_entityset
        REDEFINITION .
    METHODS contractitemset_get_entity
        REDEFINITION .
    METHODS contractitemset_get_entityset
        REDEFINITION .
    METHODS contractitemtext_get_entityset
        REDEFINITION .
    METHODS contractitemti01_create_entity
        REDEFINITION .
    METHODS contractitemti01_get_entityset
        REDEFINITION .
    METHODS contractitemtier_get_entityset
        REDEFINITION .
    METHODS contractlangf4se_get_entityset
        REDEFINITION .
    METHODS contractrelatedd_get_entityset
        REDEFINITION .
    METHODS contractschedagr_get_entityset
        REDEFINITION .
    METHODS contractsigfield_get_entityset
        REDEFINITION .
    METHODS contractstatusse_get_entityset
        REDEFINITION .
    METHODS contracttypef4se_get_entityset
        REDEFINITION .
    METHODS ctrattachmentsin_get_entityset
        REDEFINITION .
    METHODS ctrchangelogset_get_entityset
        REDEFINITION .
    METHODS ctrrelatedobjlin_get_entityset
        REDEFINITION .
    METHODS ctrsupplierinfos_get_entityset
        REDEFINITION .
    METHODS ctrversionlistse_get_entityset
        REDEFINITION .
    METHODS currencyf4set_get_entityset
        REDEFINITION .
    METHODS currencyset_get_entityset
        REDEFINITION .
    METHODS dbitemplantdetse_get_entityset
        REDEFINITION .
    METHODS defaulttermset_get_entityset
        REDEFINITION .
    METHODS downloadpartexce_create_entity
        REDEFINITION .
    METHODS downloadpartexce_delete_entity
        REDEFINITION .
    METHODS downloadpartexce_get_entityset
        REDEFINITION .
    METHODS forwardctrset_create_entity
        REDEFINITION .
    METHODS guestauthcheckse_get_entity
        REDEFINITION .
    METHODS guestauthcheckse_get_entityset
        REDEFINITION .
    METHODS incotermset_get_entityset
        REDEFINITION .
    METHODS initappparamset_get_entityset
        REDEFINITION .
    METHODS itemciprateset_get_entityset
        REDEFINITION .
    METHODS itemcodetypef4se_get_entityset
        REDEFINITION .
    METHODS kodabameasureset_get_entityset
        REDEFINITION .
    METHODS largecontractite_get_entity
        REDEFINITION .
    METHODS largecontractite_get_entityset
        REDEFINITION .
    METHODS lcselectedcondit_get_entityset
        REDEFINITION .
    METHODS multipleplantsse_get_entityset
        REDEFINITION .
    METHODS packtermsset_get_entity
        REDEFINITION .
    METHODS packtermsset_get_entityset
        REDEFINITION .
    METHODS partnof4set_get_entityset
        REDEFINITION .
    METHODS parttoolingf4set_get_entityset
        REDEFINITION .
    METHODS partviewset_get_entityset
        REDEFINITION .
    METHODS partzgsinfoset_get_entityset
        REDEFINITION .
    METHODS paymenttermset_get_entity
        REDEFINITION .
    METHODS paymenttermset_get_entityset
        REDEFINITION .
    METHODS plantdistributio_get_entityset
        REDEFINITION .
    METHODS plantsearchset_create_entity
        REDEFINITION .
    METHODS plantsearchset_get_entityset
        REDEFINITION .
    METHODS pricereasoncateg_get_entityset
        REDEFINITION .
    METHODS pricereasonf4set_get_entityset
        REDEFINITION .
    METHODS pricereasonset_get_entityset
        REDEFINITION .
    METHODS pricetypeset_get_entityset
        REDEFINITION .
    METHODS pricingcondition_get_entityset
        REDEFINITION .
    METHODS quickviewcardset_get_entity
        REDEFINITION .
    METHODS releaseswitchset_get_entityset
        REDEFINITION .
    METHODS responsiblebuyer_get_entityset
        REDEFINITION .
    METHODS rettermsset_get_entity
        REDEFINITION .
    METHODS rettermsset_get_entityset
        REDEFINITION .
    METHODS saperionattachme_get_entity
        REDEFINITION .
    METHODS suppbpoinfoset_get_entity
        REDEFINITION .
    METHODS suppcontactperso_get_entity
        REDEFINITION .
    METHODS suppcontactperso_get_entityset
        REDEFINITION .
    METHODS supplierconfirma_create_entity
        REDEFINITION .
    METHODS supplierset_get_entity
        REDEFINITION .
    METHODS supplierset_get_entityset
        REDEFINITION .
    "methods TERMS_GET_ENTITY "TODO
    " redefinition .
    METHODS uomf4set_get_entityset
        REDEFINITION .
    METHODS ctritemrmobjlist_get_entityset
        REDEFINITION .
  PRIVATE SECTION.

    DATA mv_is_softstate TYPE abap_bool .

    METHODS default_terms_deep_entity
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_default_terms_deep_entity .
    METHODS mass_change_deep_entity
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_mass_change_deep_entity .
    METHODS part_view_mass_change_deep_ent
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_pv_mass_change_deep_entity .
    METHODS do_cache_entity_set
      IMPORTING
        !io_tech_request_context        TYPE REF TO /iwbep/if_mgw_req_entityset OPTIONAL
        !io_tech_request_context_entity TYPE REF TO /iwbep/if_mgw_req_entity OPTIONAL
      CHANGING
        !es_response_context            TYPE /iwbep/if_mgw_appl_srv_runtime=>ty_s_mgw_response_context OPTIONAL
        !es_response_context_entity     TYPE /iwbep/if_mgw_appl_srv_runtime=>ty_s_mgw_response_entity_cntxt OPTIONAL .
    METHODS ctr_actions_deep_entity
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_action_deep_entity .
    METHODS large_ctr_processing
      EXPORTING
        !ex_return TYPE flag1
      CHANGING
        !cs_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity .
    METHODS large_ctr_upd_conditions
      IMPORTING
        !iv_entity_name          TYPE string
        !iv_entity_set_name      TYPE string
        !iv_source_name          TYPE string
        !io_data_provider        TYPE REF TO /iwbep/if_mgw_entry_provider
        !it_key_tab              TYPE /iwbep/t_mgw_name_value_pair
        !it_navigation_path      TYPE /iwbep/t_mgw_navigation_path
        !io_expand               TYPE REF TO /iwbep/if_mgw_odata_expand
        !io_tech_request_context TYPE REF TO /iwbep/if_mgw_req_entity_c
      EXPORTING
        !er_deep_entity          TYPE zfio_deep_sel_cond .
ENDCLASS.



CLASS ZCL_ZFIO_MNG_CTR_DPC_EXT IMPLEMENTATION.


  METHOD /iwbep/if_mgw_appl_srv_runtime~changeset_begin.

*//.. This is needed from FiORI to operate on BATCH calls.

    RETURN. "KAUSING

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~changeset_end.

*//.. This is needed from FiORI to operate on BATCH calls.

    RETURN. "RETURN

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~create_deep_entity.
*************************************************************************************
* Author             : AMAJAIN                                                      *
* Title              : Create Deep Entity                                           *
* Date               : 2017-10-30                                                   *
* Module             : Procure-(EPIC) PC: Create Draft Contract
* DESCRIPTION (2933)                                          *
*               This method is used to pass the deep entity data from fiori.
*************************************************************************************
*&--------------------------------------------------------------------&*
*& Date:        03-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#10661                             &*
*&              Passing PDS messages instead of bapiret for easy      &*
*&              understanding purpose                                 &*
*----------------------------------------------------------------------*
*/..Data Declarations
    DATA: lt_return    TYPE bapiret2_t.
*/..Check for the entityname to execute corresponding logics using CASE statement.
    CASE iv_entity_set_name.

        " Care for creation or updation of contract
      WHEN 'ContractHeaderSet'.
*       Call the entity set generated method
*      TRY.
        DATA contract_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity.
        CLEAR: lt_return.
*/..Call create_contract_deep_entity method.
        CALL METHOD me->create_contract_deep_entity_v
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = contract_deep_entity
            et_messages             = lt_return.

************************************************************************
****** Begin of Insert by  <VMANCHA> <US#10661>
*      We have to pass complete data even in error scenario
*      IF contract_deep_entity-toreturnmessages IS INITIAL.
        copy_data_to_ref(
           EXPORTING
              is_data = contract_deep_entity
           CHANGING
              cr_data = er_deep_entity ).
*      ENDIF.

**/..Read the internal table lt_return with key type equals to E
*      READ TABLE lt_return ASSIGNING FIELD-SYMBOL(<fs_return>) WITH KEY type = 'E' BINARY SEARCH.
*      IF sy-subrc NE 0.
*        UNASSIGN <fs_return> .
**/..If sy-subrc not equals to zero Read the internal table lt_return with the key type equals 'A'
*        READ TABLE lt_return ASSIGNING <fs_return> WITH KEY type = 'A' BINARY SEARCH.
*        IF sy-subrc NE 0.
*          copy_data_to_ref(
*             EXPORTING
*                is_data = contract_deep_entity
*             CHANGING
*                cr_data = er_deep_entity ).
*        ELSE .
**/..Sort the internal table lt_return by return type
*          SORT lt_return BY type .
**/..Delete the return type where Not equal to 'E' and 'A' and 'W' from the internal table lt_return  "-- Added by NIhar to display onlt Error & Abend
*          DELETE lt_return WHERE  type NE 'E' AND type NE 'A' AND type NE 'W'.
**/..Create object for the class /iwbep/cx_mgw_tech_exception
*          CREATE OBJECT lo_exception . "TYPE REF TO /iwbep/cx_mgw_tech_exception
**/.." Add messages to container & instantiate container
*          lo_exception->get_msg_container( )->add_messages_from_bapi( it_bapi_messages = lt_return ).
**/.." Raise exception
*          RAISE EXCEPTION lo_exception.
*        ENDIF.
*
*      ELSE.
**/..Sort the internal table lt_return by return type
*        SORT lt_return BY type .
**/..Delete the return type where Not equal to 'E' and 'A' and 'W' from the internal table lt_return "-- Added by NIhar to display onlt Error & Abend
*        DELETE lt_return WHERE   type NE 'E' AND type NE 'A' AND type NE 'W'.
**/..Create object for the class /iwbep/cx_mgw_tech_exception
*        CREATE OBJECT lo_exception . "TYPE REF TO /iwbep/cx_mgw_tech_exception
**/..Add messages to container & instantiate container
*        lo_exception->get_msg_container( )->add_messages_from_bapi( it_bapi_messages = lt_return ).
**/.. Raise exception
*        RAISE EXCEPTION lo_exception.
*
*      ENDIF.
****** End of Insert by  <VMANCHA> <US#10661>
************************************************************************
*     Begin of changes*NPSCC-17849*23/07

      WHEN 'DefaultTermsDeepSet'.
        DATA default_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_default_terms_deep_entity.

        CALL METHOD me->default_terms_deep_entity
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = default_deep_entity.

        copy_data_to_ref(
           EXPORTING
              is_data = default_deep_entity
           CHANGING
              cr_data = er_deep_entity ).
*     End of changes*NPSCC-17849*23/07

*     Begin of changes by KAUSING*npscc 27592*Insignificant Change
      WHEN 'ContractAdministrateSet'.
        DATA: admin_change_deep TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_admin_change_deep_entity.

        CALL METHOD me->adminsitrate_deep_entity
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = admin_change_deep.

        copy_data_to_ref(
           EXPORTING
              is_data = admin_change_deep
           CHANGING
              cr_data = er_deep_entity ).
*     End of changes by KAUSING*npscc 27592*Insignificant Change

      WHEN 'CTRMassChangeSet'.
        DATA: mass_change_deep TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_mass_change_deep_entity.

        CALL METHOD me->mass_change_deep_entity
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = mass_change_deep.

        copy_data_to_ref(
           EXPORTING
              is_data = mass_change_deep
           CHANGING
              cr_data = er_deep_entity ).

*     Begin of changes by KAUSING*NPSCC-21855	PC Mass Change: Existing plant related data*22/04/2020
      WHEN 'PartViewMassChangeSet'.
        DATA: pv_mass_change_deep TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_pv_mass_change_deep_entity.

        CALL METHOD me->part_view_mass_change_deep_ent
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = pv_mass_change_deep.

        copy_data_to_ref(
           EXPORTING
              is_data = pv_mass_change_deep
           CHANGING
              cr_data = er_deep_entity ).

*     End of changes by KAUSING*NPSCC-21855	PC Mass Change: Existing plant related data*22/04/2020
*Boc US# 29654 by SWDENDI - Transfer Add
      WHEN 'CtrActionsSet'.
        DATA: ctr_action_deep TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_action_deep_entity.
        CALL METHOD me->ctr_actions_deep_entity
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = ctr_action_deep.

        copy_data_to_ref(
           EXPORTING
              is_data = ctr_action_deep
           CHANGING
              cr_data = er_deep_entity ).
*Eoc US# 29654 by SWDENDI - Transfer Add
*   BoC - NPSCC 30737 Large Contracts Update list of condtions selected
      WHEN 'LCSelectedConditionsSet'. "Update list of selected conditons from Fiori
        CALL METHOD me->large_ctr_upd_conditions
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
            io_data_provider        = io_data_provider
          IMPORTING
            er_deep_entity          = DATA(lr_deep_entity).

        copy_data_to_ref(
           EXPORTING
              is_data = lr_deep_entity
           CHANGING
              cr_data = er_deep_entity ).
*   EoC - NPSCC 30737 Large Contracts Update list of condtions selected
      WHEN OTHERS.
*      CLEAR lt_return.
        CLEAR: contract_deep_entity-toreturnmessages[].                  " Venky US# 10661
    ENDCASE.

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~create_stream.
*---------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                &*
*& Method     : MAP_ATTACHMENT_DATA                                  &*
*& Developer  : Infosys / Jai Vasudev(JVASUDE)                       &*
*& Created    : 2017-12-27                                           &*
*& Description: Changes done for SP28-US#2947 (Contract)             &*
*&        This method is for creating/updating Attachments for CTR   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        18-Apr-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Nihar Ranasingh (NRANASI)                            &*
*& Description: Changes done for SP35-US#11259                       &*
*&    Mass upload and mass deletion of attachments in Contract Header&*
*&-------------------------------------------------------------------&*
*& Date:        20-May-2019                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Swathi Dendi(SWDENDI)                                &*
*& Description: Changes done for SP61-US#18589                       &*
*&     ECS: manual uploading of attachments to ECS in PC             &*
*&-------------------------------------------------------------------&*
*/..Local Declarations
    DATA: w_slug                        TYPE string                                VALUE IS INITIAL,
          w_saperionid                  TYPE char255                               VALUE IS INITIAL,
          w_error                       TYPE string                                VALUE IS INITIAL,
          lw_key_tab                    TYPE /iwbep/s_mgw_name_value_pair          VALUE IS INITIAL,
          lt_key_tab                    TYPE /iwbep/t_mgw_name_value_pair          VALUE IS INITIAL,
          obj_saperion_att              TYPE REF TO zcl_saperion_attachments  VALUE IS INITIAL,
          ls_return                     TYPE bapiret2,
          lt_return_msg                 TYPE bapiret2_t,
          obj_tech_read_request_context TYPE REF TO /iwbep/cl_sb_gen_read_aftr_crt,
          w_entityset_name              TYPE string VALUE IS INITIAL,
*         BoC - NPSCC 30228 Large CTR Creation
          lo_parse_xl                   TYPE REF TO zcl_ctr_excel_download,
          ls_lctres                     TYPE zlarge_ctr_upld_res,
*         EoC - NPSCC 30228 Large CTR Creation
          lw_entity                     TYPE REF TO data.

    CASE iv_entity_name.
      WHEN 'SaperionAttachment'.
*/..Move the value of importing parameter iv_slug into local variable w_slug.
        SPLIT iv_slug AT '/' INTO DATA(lv_slug) DATA(lv_fsize).     "--SP35-US#11259_CTR-Mass upload and deletion of attachments in Contract Header_By Nihar
        MOVE lv_slug TO w_slug.

*/.. Incorrect attachment handling.
        IF is_media_resource-value IS INITIAL.
**Handling error messages:
          CLEAR: ls_return.
          ls_return-id = 'ZCL_MSG'.
          ls_return-number = '235'.
          MESSAGE e235(zcl_msg) INTO ls_return-message.

        ELSE.
* BOC { US# 18589 by SWDENDI ECS: manual uploading of attachments to ECS in PC
* Upload Attachments to ECS

          NEW zcl_ecs_operation( )->upload_attachment(
            EXPORTING
              im_content       = is_media_resource-value
              im_filename      = w_slug
            IMPORTING
              lv_ecs_file_path = DATA(lv_file_path)
              lv_error         = w_error ).
          " If failed to upload to ECS , upload to Saperion
          IF w_error IS NOT INITIAL OR lv_file_path IS INITIAL.
            NEW zcl_saperion_attachments( )->upload_attachment(
              EXPORTING
                iw_data       = is_media_resource-value     " File data in xstirng format
                iw_filename   = w_slug
              IMPORTING
                ew_saperionid = w_saperionid    " Saperion ID
                es_error      = w_error ).
          ENDIF.

* EOC } US# 18589 by SWDENDI ECS: manual uploading of attachments to ECS in PC
          IF w_error IS INITIAL.

            IF obj_tech_read_request_context IS NOT BOUND.
*/..Create object for the class /iwbep/cl_sb_gen_read_aftr_crt.
              CREATE OBJECT obj_tech_read_request_context.
*/..Get the entity name 'SaperionAttachmentSet' to local variable w_entityset_name.
              w_entityset_name = 'SaperionAttachmentSet'."io_tech_requeslt_context->gelt_entity_selt_name( ).
*/..Call the method set_entityset_name from the class /iwbep/cl_sb_gen_read_aftr_crt
              obj_tech_read_request_context->set_entityset_name(
               IMPORTING
                  ev_entityset_name = w_entityset_name
              ).

* BOC { US# 18589 by SWDENDI ECS: manual uploading of attachments to ECS in PC
              lw_key_tab-name = 'File_Name'.
              lw_key_tab-value = w_slug.
              APPEND lw_key_tab TO  lt_key_tab.
              CLEAR lw_key_tab.

              lw_key_tab-name = 'ECS_Filepath'.
*{ BOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
*   URI compliance check.
              DATA(lv_filename) = lv_file_path.
              REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
*   Decode URI
              SPLIT lv_filename AT '/' INTO DATA(ls_blank) DATA(ls_bucknam) DATA(ls_filename).
*   Encode URI
              ls_filename = escape( val = ls_filename format = cl_abap_format=>e_xss_url ).

              CONCATENATE '/' ls_bucknam '/' ls_filename INTO DATA(ls_tobeuri).
              lw_key_tab-value = ls_tobeuri.
*                lw_key_tab-value = lv_file_path.

*} EOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
              APPEND lw_key_tab TO  lt_key_tab.
              CLEAR lw_key_tab.
* EOC } US# 18589 by SWDENDI ECS: manual uploading of attachments to ECS in PC
              lw_key_tab-name = 'Attach_Guid'.
              lw_key_tab-value = w_saperionid.
*/..Append the name and value of 'Attach_Guid' to internal table lt_key_tab
              APPEND lw_key_tab TO  lt_key_tab.

*/..Call the method get_entity from the interface /iwbep/if_mgw_appl_srv_runtime to get the corresponding
*..values of the particular enitity name../
              /iwbep/if_mgw_appl_srv_runtime~get_entity(
                  EXPORTING
                     iv_entity_name          = iv_entity_name
                     iv_entity_set_name      = iv_entity_set_name
                     iv_source_name          = iv_source_name
                     it_key_tab              = lt_key_tab
                     io_tech_request_context = obj_tech_read_request_context
                     it_navigation_path      = it_navigation_path
                  IMPORTING
                     er_entity               = lw_entity ).
****Send the read response to the caller interface****
              ASSIGN lw_entity->* TO FIELD-SYMBOL(<lw_data>).
              IF sy-subrc IS INITIAL AND <lw_data> IS ASSIGNED.
*            <lw_data>-attach_guid = w_saperionid.
                copy_data_to_ref(
                     EXPORTING
                         is_data = <lw_data>
                 CHANGING
                         cr_data = er_entity ).
              ENDIF.
            ENDIF.
          ELSE.
**Handling error messages:
            CLEAR: ls_return.
            ls_return-id = 'ZCL_MSG'.
            ls_return-number = '237'.
            MESSAGE e237(zcl_msg) INTO ls_return-message.
          ENDIF.
*&--------------------------------------------------------&*
        ENDIF.
*     BoC - NPSCC 30228 Upload Large Contracts
      WHEN 'LargeContractUpload'.
*/..    Incorrect attachment handling.
        IF is_media_resource-value IS INITIAL.
**        Handling error messages:
          CLEAR: ls_return.
          ls_return-id = 'ZCL_MSG'.
          ls_return-number = '235'.
          MESSAGE e235(zcl_msg) INTO ls_return-message.
        ELSE.
          CREATE OBJECT lo_parse_xl.
*         Parse and Validate excel for structure errors
          CALL METHOD lo_parse_xl->parse_large_contract
            EXPORTING
              iv_slug           = iv_slug
              is_media_resource = is_media_resource
            IMPORTING
              ex_return         = ls_return
              ex_entity         = ls_lctres.

          IF ls_return IS INITIAL.
            copy_data_to_ref(
               EXPORTING
                   is_data = ls_lctres
               CHANGING
                   cr_data = er_entity ).
          ENDIF.
        ENDIF. "Blank XSTRING
*     EoC - NPSCC 30228 Upload Large Contracts
      WHEN OTHERS.
        CLEAR w_slug .                    "-- VF fix _ DSQK902539/DSQK902547_By Nihar-18Sep17
    ENDCASE.

*/.. RKORADA - 26/09/2018 - Error messages handling
*
    IF ls_return IS NOT INITIAL.
**/..Raise Exception

      APPEND ls_return TO lt_return_msg.
      DATA(lo_exception) = NEW /iwbep/cx_mgw_busi_exception( ).
*       Add messages to container & instantiate container
      lo_exception->get_msg_container( )->add_messages_from_bapi(
                                  it_bapi_messages = lt_return_msg ).
*       Raise exception
      RAISE EXCEPTION lo_exception.
    ENDIF.

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.
*************************************************************************************
* Author             : AMAJAIN                                                      *
* Title              : Execute Action                                           *
* Date               : 2017-11-06                                                   *
* Module             : Procure-(EPIC) PC: Assign Attributes on Header Level
* DESCRIPTION (2948)                                          *
*               This method is used to serve Fiori oData GET or POST requests deppends upon
*specific case in iv_action_name.
*************************************************************************************

    TYPES : BEGIN OF ty_partner,
              partner    TYPE but020-partner,
              addrnumber TYPE but020-addrnumber,
            END OF ty_partner.

    DATA : lv_ctr_guid       TYPE crmt_object_guid,    " NPSCC 22130*17/07/2019*KAUSING
           lv_ctr_item_guid  TYPE crmt_object_guid,    " NPSCC 12478*KAUSING
           lv_ctr_no         TYPE crmt_object_id_db,    " npscc 12478*KAUSING
           lv_partno         TYPE crmt_ordered_prod_db, " NSPCC 12478*KAUSING
           lv_valid_from     TYPE datum,  " NPSCC 22130*17/07/2019*KAUSING
           lv_valid_to       TYPE datum,  " NPSCC 22130*17/07/2019*BEGIN OF
           ls_addr           TYPE ty_partner,
           lv_supp           TYPE bu_partner,
           ls_entity         TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_contractheader,
           ls_entity_item    TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_contractitem,  "NPSCC 12478*KAUSING
           ls_entity_actions TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctractions,
           lt_actions_set    LIKE TABLE OF ls_entity_actions,
           lt_entityset      LIKE STANDARD TABLE OF ls_entity,
           lt_entityset_item TYPE TABLE OF zcl_zfio_mng_ctr_mpc_ext=>ts_contractitem, "npscc 12478*KAUSING
           lv_lang_key       TYPE spras,
           lv_dummy          TYPE char1,
           lv_buyer          TYPE uname,
           lv_action         TYPE string.

    CLEAR: lv_supp, ls_entity,lt_entityset,
           lv_ctr_guid, lv_valid_from, lv_valid_to.  "NPSCC 22130*17/07/2019*KAUSING

    LOOP AT it_parameter ASSIGNING FIELD-SYMBOL(<fs_supp>). "INTO ls_parameter.

      IF <fs_supp>-name = 'Supplier'.
        lv_supp = <fs_supp>-value.
      ENDIF.

      IF <fs_supp>-name = 'ResponsibleBuyer'.               "SP38_US#3041 WV/DV supplier declaration check By--TTHIRUM
        lv_buyer = <fs_supp>-value.
      ENDIF.

    ENDLOOP.

    CASE iv_action_name.
***** Begin of Chnages RCHATUR US 1529
      WHEN 'ContractLanguage'. "US 2948 for updating the supplier language

        IF lv_supp IS NOT INITIAL.

          CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
              input  = lv_supp
            IMPORTING
              output = lv_supp.
*        Fetch address number of the supplier
          SELECT SINGLE partner addrnumber FROM but020 INTO ls_addr
            WHERE partner = lv_supp AND addrnumber IS NOT NULL.

          IF sy-subrc = 0.
*/.. Get Supplier language
            SELECT SINGLE langu
                   FROM adrc
                   INTO lv_lang_key
                   WHERE addrnumber EQ ls_addr-addrnumber
                   AND   date_from LE sy-datum.
            IF sy-subrc = 0.
              SELECT SINGLE * FROM t002t INTO @DATA(ls_supp_lang) WHERE spras = @sy-langu
                                                                 AND sprsl = @lv_lang_key.

              IF sy-subrc = 0.
                CASE ls_supp_lang-sprsl.
                  WHEN 'E'.
                    ls_entity-language = ls_supp_lang-sptxt.
                    ls_entity-language_key = ls_supp_lang-sprsl.
                  WHEN 'D'.
                    ls_entity-language = ls_supp_lang-sptxt.
                    ls_entity-language_key = ls_supp_lang-sprsl.
                  WHEN OTHERS.
                    ls_entity-language = 'English'.
                    ls_entity-language_key = 'E'.
                ENDCASE.
              ELSE.
                ls_entity-language = 'English'.
                ls_entity-language_key = 'E'.
              ENDIF.
            ELSE.
              ls_entity-language = 'English'.
              ls_entity-language_key = 'E'.
            ENDIF.
          ELSE.
            ls_entity-language = 'English'.
            ls_entity-language_key = 'E'.
          ENDIF.
*
        ELSE.
          ls_entity-language = 'English'.
          ls_entity-language_key = 'E'.
        ENDIF.


        APPEND ls_entity TO lt_entityset.
        CLEAR ls_entity.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_entityset
          CHANGING
            cr_data = er_data
        ).
*    Begin of changes by KAUSING*npscc 12478*
      WHEN 'ApplyCPart'.
        lv_ctr_guid = VALUE #( it_parameter[ name = 'ContractGuid' ]-value OPTIONAL ).
        lv_ctr_item_guid = VALUE #( it_parameter[ name = 'ContractItemGuid' ]-value OPTIONAL ).
        lv_partno = VALUE #( it_parameter[ name = 'OrderedProd' ]-value OPTIONAL ).
        lv_action = VALUE #( it_parameter[ name = 'Action' ]-value OPTIONAL ).
        lv_ctr_no = VALUE #( it_parameter[ name = 'ContractId' ]-value OPTIONAL ).
        IF lv_action EQ 'APPLYCPART_CHECK'.
          CALL METHOD zcl_contract_app=>applycpart
            EXPORTING
              im_ctr_no          = lv_ctr_no
              im_ctr_header_guid = lv_ctr_guid
              im_ctr_item_guid   = lv_ctr_item_guid
              im_orderedprod     = lv_partno
              im_action          = 'APPLYCPART_CHECK'
            IMPORTING
              ex_applycpartcount = ls_entity_item-item_num_sort.
        ELSEIF lv_action EQ 'APPLYCPART_UPD'.
          CALL METHOD zcl_contract_app=>applycpart
            EXPORTING
              im_ctr_no          = lv_ctr_no
              im_ctr_header_guid = lv_ctr_guid
              im_ctr_item_guid   = lv_ctr_item_guid
              im_orderedprod     = lv_partno
              im_action          = 'APPLYCPART_UPD'
            IMPORTING
              ex_success_flag    = ls_entity_item-mass_chg_flag.
        ENDIF.
        APPEND ls_entity_item TO lt_entityset_item.
        CLEAR ls_entity.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_entityset_item
          CHANGING
            cr_data = er_data
        ).
*    End of changes by KAUSING*npscc 12478

*    Begin of changes by KAUSING*17/07/2019*npscc22130
      WHEN 'TransferContract'.
        lv_ctr_guid = it_parameter[ name = 'ContractGuid' ]-value.


        CALL METHOD zcl_contract_app=>get_validity_date_transferctr
          EXPORTING
            im_ctr_header_guid    = lv_ctr_guid
          IMPORTING
            ex_valid_from         = lv_valid_from
            ex_valid_to           = lv_valid_to
            ex_extend_from        = ls_entity-validity_date "US# 22138 by SWDENDI
            ex_pcr                = ls_entity-transfer_pcr
            ex_co_code            = ls_entity-co_code "US# 23483 by SWDENDI
            ex_output_medium      = ls_entity-/proq/output_medium  " by SHENVIA for NPSCC-28227
            ex_output_medium_desc = ls_entity-/proq/output_medium_desc " by SHENVIA for NPSCC-28227
            ex_wv_disp_flag       = ls_entity-wv_disp_flag       "npscc 30779*kausing
            ex_wv_releveant       = ls_entity-wv_releveant.      "npscc 30779*kausing

        MOVE: lv_valid_from TO ls_entity-validity_from,
              lv_valid_to   TO ls_entity-validity_to.

        APPEND ls_entity TO lt_entityset.
        CLEAR ls_entity.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_entityset
          CHANGING
            cr_data = er_data
        ).
*    End of changes by KAUSING*17/07/2019*npscc22130
      WHEN 'CopyContract'. "US# 23483 by SWDENDI
        lv_ctr_guid = it_parameter[ name = 'ContractGuid' ]-value.
        CALL METHOD zcl_contract_app=>get_validity_date_transferctr
          EXPORTING
            im_ctr_header_guid    = lv_ctr_guid
            im_mode               = 'S'
          IMPORTING
            ex_co_code            = ls_entity-co_code
            ex_output_medium      = ls_entity-/proq/output_medium " by SHENVIA for NPSCC-28227
            ex_output_medium_desc = ls_entity-/proq/output_medium_desc " by SHENVIA for NPSCC-28227
            ex_wv_disp_flag       = ls_entity-wv_disp_flag       "npscc 30779*kausing
            ex_wv_releveant       = ls_entity-wv_releveant      "npscc 30779*kausing
            ex_contract_type      = ls_entity-contracttype    " US# 30908 by SWDENDI
            ex_ctr_ref_type       = ls_entity-ctr_ref_type    " US# 30908 by SWDENDI
            ex_plnt_ind           = ls_entity-plantassign_ind " US# 30908 by SWDENDI
            ex_ctr_desc           = ls_entity-description.

        APPEND ls_entity TO lt_entityset.
        CLEAR ls_entity.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_entityset
          CHANGING
            cr_data = er_data
        ).
* Boc NPSCC-25806 by SWDENDI - Part Number Change dialog Use Case Add
      WHEN 'PartNumberChange'.
        CLEAR lv_buyer.
        lv_buyer = VALUE #( it_parameter[ name = 'ResponsibleBuyer' ]-value OPTIONAL ).
        lv_action = VALUE #( it_parameter[ name = 'Action' ]-value OPTIONAL ). "US# 29957 by SWDENDI
        NEW zcl_contract_app( )->get_default_pcr_pnc(
          EXPORTING
            im_buyer   = lv_buyer
            im_action  = lv_action "US# 29957 by SWDENDI
          IMPORTING
            ex_pcr     = ls_entity-transfer_pcr
            ex_pcr_desc = ls_entity-pcr_desc ).

        APPEND ls_entity TO lt_entityset.
        CLEAR ls_entity.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_entityset
          CHANGING
            cr_data = er_data ).
* Eoc NPSCC-25806 by SWDENDI - Part Number Change dialog Use Case Add
*{ BoC - RKORADA - NPSCC-29474 Add MPN-condition:Set PCR after RFC call
      WHEN 'CtrActions'.
        DATA : lt_so10_names           TYPE RANGE OF tdobname.
        lv_action = VALUE #( it_parameter[ name = 'Action' ]-value OPTIONAL ).
        IF lv_action EQ 'MPN_DFT_PCR'.

          SELECT SINGLE low
            FROM tvarvc
            WHERE name = 'ZCTR_MPN_PCR'
            INTO @ls_entity_actions-pcr_code.
          IF sy-subrc EQ 0.

            SELECT SINGLE description
              FROM zprc_reason
              WHERE id EQ @ls_entity_actions-pcr_code
              INTO @DATA(lv_desc_so10).
            IF sy-subrc EQ 0.

              lt_so10_names =  VALUE #( ( sign = 'I'  option ='EQ' low = lv_desc_so10 ) ).
              NEW zcl_search_help_and_info( )->get_so10_texts(
                                              EXPORTING im_so10_names   = lt_so10_names   " SO10 Names
                                                        im_language_key = sy-langu        " Language
                                              IMPORTING ex_so10_texts   = DATA(lt_so10_names_texts) )." SO10 texts

              ls_entity_actions-pcr_desc = VALUE #( lt_so10_names_texts[ so10_name = lv_desc_so10 ]-so10_text OPTIONAL ).
            ENDIF.
          ENDIF.
        ENDIF.
        APPEND ls_entity_actions TO lt_actions_set.
        copy_data_to_ref(
          EXPORTING
            is_data = lt_actions_set
          CHANGING
            cr_data = er_data ).
*} EoC - RKORADA - NPSCC-29474 Add MPN-condition:Set PCR after RFC call
      WHEN OTHERS.
        CLEAR lv_dummy.
    ENDCASE.

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~get_expanded_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Swathi Reddy Dendi (SWDENDI)                &*
*& Created    : 29-Apr-2020                                           &*
*& Description: NPSCC:3037- PC Supplier Ratings - UX - FSRM, Daimler  &*
*&              share% and L@RS Rating                                &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

    IF iv_entity_name =  'SupplierRating'.

      DATA(lv_ctr_guid)  = VALUE #( it_key_tab[ name = 'ContractGuid' ]-value OPTIONAL ).
      DATA(lv_supplier)  = VALUE #( it_key_tab[ name = 'Supplier' ]-value OPTIONAL ).
      DATA(lv_mode)      = VALUE #( it_key_tab[ name = 'Mode' ]-value OPTIONAL ).
      DATA(lv_comm_code) = VALUE #( it_key_tab[ name = 'CommodityCode' ]-value OPTIONAL ).
      DATA(lv_bu)        = VALUE #( it_key_tab[ name = 'BuyerBU' ]-value OPTIONAL ).
      DATA(lv_status)    = VALUE #( it_key_tab[ name = 'CtrStatus' ]-value OPTIONAL ).

      zcl_contract_app=>get_supplier_ratings(
        EXPORTING
          im_doc_guid   = CONV #( lv_ctr_guid )
          im_bu         = CONV #( lv_bu )
          im_status     = CONV #( lv_status )
          im_supplierid = CONV #( lv_supplier )
          im_comm_code  = CONV #( lv_comm_code )
          im_mode       = CONV #( lv_mode )
        IMPORTING
          ex_entity     = DATA(ls_entity) ).

      APPEND 'ToSupplierRating/ToLarsRating' TO et_expanded_clauses.
      APPEND 'ToSupplierRating/ToSupplierCertificates' TO et_expanded_clauses.

* Exporting data to Fiori
      copy_data_to_ref(
             EXPORTING
               is_data = ls_entity
             CHANGING
               cr_data = er_entity ).

    ELSEIF iv_entity_name = 'ContractHeader'.
      DATA : lv_ctr_head_guid TYPE guid,
             ls_header        TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity.

*&----------------------------------------------------------------------------------&*
      "Begin of changes -- JVASUDE --08/10/2020 -- changes for US : NPSCC-30927
*     Call the entity set generated method
      contractheaderse_get_entity(
           EXPORTING iv_entity_name     = iv_entity_name
                     iv_entity_set_name = iv_entity_set_name
                     iv_source_name     = iv_source_name
                     it_key_tab         = it_key_tab
                     it_navigation_path = it_navigation_path
                     io_tech_request_context = io_tech_request_context
         	 IMPORTING er_entity          = DATA(lr_entity)
                     es_response_context = es_response_context
      ).
      ls_header = CORRESPONDING #( lr_entity ).
*&--------------&*
      "Get return errros if any -- for large contracts
      DATA: lv_serialized_data TYPE xstring,
            lo_ctr_handle      TYPE REF TO zcl_ctr_app_handling.
      SELECT SINGLE low,high FROM tvarvc
                INTO ( @DATA(lv_configured_items) , @DATA(lv_activate) )
                WHERE name = 'ZFIORI_CTR_ITEM_LIMIT'.
      IF sy-subrc IS INITIAL AND lv_activate = abap_true.
        DATA(lv_ctr_no) = CONV string( lr_entity-object_id ).
        lv_ctr_no       = lv_ctr_no && '_H_INS'.
        SELECT SINGLE id
             FROM zindx_ctrtb
             INTO @DATA(lv_unqid)
            WHERE relid = 'Z1'
              AND id = @lv_ctr_no.
        IF sy-subrc IS INITIAL.
          IMPORT lv_serialized_data1 TO lv_serialized_data FROM DATABASE zindx_ctrtb(z1) ID lv_unqid.
          IF sy-subrc IS INITIAL.
            IF lv_serialized_data IS NOT INITIAL.
              TRY.
                  CALL TRANSFORMATION id_indent SOURCE XML lv_serialized_data
                  RESULT user = lo_ctr_handle.
                CATCH cx_root.
                  FREE lo_ctr_handle.
              ENDTRY.
              IF lo_ctr_handle IS BOUND.
                ls_header-toreturnmessages = lo_ctr_handle->at_return_msgs.
              ENDIF.
              SORT ls_header-toreturnmessages BY item_number message.
              DELETE ADJACENT DUPLICATES FROM ls_header-toreturnmessages COMPARING item_number message.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      "End of changes -- JVASUDE --08/10/2020 -- changes for US : NPSCC-30927
*&----------------------------------------------------------------------------------&*
      IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
        lv_ctr_head_guid = it_key_tab[ name = 'ContractGuid' ]-value.
      ENDIF.

*     Get the header text
      zcl_ctr_app_handling=>contract_header_item_text(
        EXPORTING
          im_ctr_head_guid =  lv_ctr_head_guid  " Globally Unique identifier
          im_mode = 'HEADER'
        IMPORTING
          ex_ctr_hdrtext      = DATA(lt_ctr_head_text) ).

*     Get the header text
      zcl_ctr_app_handling=>kodaba_measure_text(
        EXPORTING
          im_ctr_head_guid  =  lv_ctr_head_guid   " Globally Unique identifier
        IMPORTING
          ex_kodaba_measure = DATA(lt_kodaba_measure)
      ).
* Get DIBS data - US# 30004 by SWDENDI
      zcl_ctr_app_handling=>dibs_plant_details(
         EXPORTING
           im_ctr_hdr_guid = lv_ctr_head_guid
         IMPORTING
           et_dibs_data  = ls_header-todetroitdieseldibs ).

      ls_header-tocontractheadertexts = lt_ctr_head_text.
      ls_header-tokodabameasure = lt_kodaba_measure.

      APPEND 'ToContractHeader/ToContractHeaderTexts' TO et_expanded_clauses.
      APPEND 'ToContractHeader/ToKoDaBaMeasure' TO et_expanded_clauses.
      APPEND 'ToContractHeader/ToDetroitDieselDIBS' TO et_expanded_clauses. " US# 30004 by SWDENDI

* Exporting data to Fiori
      copy_data_to_ref(
             EXPORTING
               is_data = ls_header
             CHANGING
               cr_data = er_entity ).
* Boc US# 29084 by SWDENDI
    ELSEIF iv_entity_name =  'ContractItem'.

      DATA: ls_item_det TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_item_deep_entity.

      DATA(lv_hdr_guid) = VALUE GUID( it_key_tab[ name = 'ContractGuid' ]-value OPTIONAL ).
      DATA(lv_itm_guid) = VALUE GUID( it_key_tab[ name = 'Guid' ]-value OPTIONAL ).

* Call below method to fetch scheduling agreement details
      DATA(lo_ctr_app) = NEW zcl_contract_app( ).

      CALL METHOD lo_ctr_app->get_related_sched_agmnt
        EXPORTING
          im_ctr_guid     = lv_hdr_guid
          im_ctr_itm_guid = lv_itm_guid
        IMPORTING
          et_entityset    = ls_item_det-tocontractschedagr.
* Get scheduling agreement details
      CALL METHOD lo_ctr_app->get_ctr_relateddocs
        EXPORTING
          im_ctr_guid          = lv_hdr_guid
          im_ctr_itm_guid      = lv_itm_guid
        IMPORTING
          ex_related_documents = ls_item_det-tocontractlinerelateddocs.
*          ex_related_documents = ls_item_det-torelateddocs.

*     Get the header Item text
      zcl_ctr_app_handling=>contract_header_item_text(
        EXPORTING
          im_ctr_head_guid =  lv_hdr_guid
          im_ctr_item_guid =  lv_itm_guid
          im_mode = 'ITEM'
        IMPORTING
          ex_ctr_itemtext   = ls_item_det-tocontractitemtexts ).

      APPEND 'ToContractItem/ToContractItemTexts' TO et_expanded_clauses.
      APPEND 'ToContractItem/ToContractLineRelatedDocs' TO et_expanded_clauses.
      APPEND 'ToContractItem/ToContractSchedAgr' TO et_expanded_clauses.

* Exporting data to Fiori
      copy_data_to_ref(
             EXPORTING
               is_data = ls_item_det
             CHANGING
               cr_data = er_entity ).
*Eoc US# 29084 by SWDENDI
    ENDIF.


  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~get_expanded_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 05-Sep-2018                                           &*
*& Description: NPSCC:15981- Get the price conditions and scales      &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

    DATA: lv_ctr_head_guid TYPE GUID,
          lv_ctr_item_guid TYPE GUID.

    IF iv_entity_name = 'ItemPriceCondition'.
*   Get the header and item guid
      IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
        lv_ctr_head_guid = it_key_tab[ name = 'ContractGuid' ]-value.
      ENDIF.
      IF line_exists( it_key_tab[ name = 'Guid' ] ).
        lv_ctr_item_guid = it_key_tab[ name = 'Guid' ]-value.
      ENDIF.
*   Create instance for class
      DATA(lo_ctr_app_cls) = NEW zcl_contract_app( ).

*   Get the pricing conditions and scales
      lo_ctr_app_cls->get_price_conditions_scales(
                          EXPORTING im_ctr_head_guid = lv_ctr_head_guid
                                    im_ctr_item_guid = lv_ctr_item_guid
                                    it_filter_select_options = it_filter_select_options "kausing*npscc 22130*16/07
                          IMPORTING ex_conditions_and_scales = DATA(lt_conditions_and_scales) ).

*   Pass the final data
      copy_data_to_ref( EXPORTING is_data = lt_conditions_and_scales
                        CHANGING  cr_data = er_entityset ).

*   Pass the expanded navigation property
      APPEND 'ToItemScalePrices' TO et_expanded_clauses.

**   ELSEIF iv_entity_name = 'ContractHeaderText'.
***   Get the header guid
**    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
**      lv_ctr_head_guid = it_key_tab[ name = 'ContractGuid' ]-value.
**    ENDIF.
**
***   Create instance for class
**    DATA(lo_ctr_app_handling) = NEW Zcl_ctr_app_handling( ).
**
***   Get the header text
**    lo_ctr_app_handling->contract_headertext(
**      EXPORTING
**        im_ctr_head_guid =  lv_ctr_head_guid  " Globally Unique identifier
**      IMPORTING
**        ex_ctr_text      = DATA(lt_ctr_head_text)
**    ).
**
**
***   Pass the final data
**    copy_data_to_ref( EXPORTING is_data = lt_ctr_head_text
**                      CHANGING  cr_data = er_entityset ).
**
***   Pass the expanded navigation property
**    APPEND 'ToContractHeaderTexts' TO et_expanded_clauses.
**
**   ELSEIF iv_entity_name = 'KoDaBaMeasure'.
***   Get the header guid
**    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
**      lv_ctr_head_guid = it_key_tab[ name = 'ContractGuid' ]-value.
**    ENDIF.
**
***   Get the header text
**    lo_ctr_app_handling->kodaba_measure_text(
**      EXPORTING
**        im_ctr_head_guid  =  lv_ctr_head_guid   " Globally Unique identifier
**      IMPORTING
**        ex_kodaba_measure = DATA(lt_kodaba_measure)
**    ).
**
**
***   Pass the final data
**    copy_data_to_ref( EXPORTING is_data = lt_kodaba_measure
**                      CHANGING  cr_data = er_entityset ).
**
***   Pass the expanded navigation property
**    APPEND 'ToKoDaBaMeasure' TO et_expanded_clauses.

    ENDIF.

  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~get_stream.
***********************************************************************
* Author             : Infosys/                                       *
* Title              :                                                *
* Date               : 22-Dec-2017                                    *
* Module             : Contract-(EPIC)                                *
*_____________________________________________________________________*
* DESCRIPTION (User story)    : NPSCC-3002                            *
*&--------------------------------------------------------------------&*
*& Date       : 17-May-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer  : Swathi Dendi(SWDENDI)                                 &*
*& Description: US#18589 - ECS: manual uploading of attachments to    &*
*&              ECS in PC                                             &*
*&--------------------------------------------------------------------&*
*&--------------------------------------------------------------------&*
*& Date       : 17-May-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer  : Swathi Dendi(SWDENDI)                                 &*
*& Description: US#19408 - ECS:PC reading logic-fallback to SAPERION  &*
*&--------------------------------------------------------------------&*

*/..Data Declarations
    DATA: w_xstring         TYPE xstring                                        VALUE IS INITIAL,
          w_filename        TYPE string                                         VALUE IS INITIAL,
          w_error           TYPE string                                         VALUE IS INITIAL,
          w_set_guid        TYPE GUID                                       VALUE IS INITIAL,
          w_token           TYPE string                                         VALUE IS INITIAL,
          lw_stream         TYPE /iwbep/if_mgw_appl_types=>ty_s_media_resource  VALUE IS INITIAL,
          lw_header         TYPE ihttpnvp                                       VALUE IS INITIAL,
          lt_key_tab        LIKE it_key_tab                                     VALUE IS INITIAL,
          lt_attach         TYPE STANDARD TABLE OF zbbp_pds_att_t                VALUE IS INITIAL,
          obj_ctr           TYPE REF TO zcl_contract_app                   VALUE IS INITIAL,
          obj_saperion_att  TYPE REF TO zcl_saperion_attachments           VALUE IS INITIAL,
          lo_pdo_model_mgnr TYPE REF TO zcl_ctr_app_handling            VALUE IS INITIAL, "TODO
*{ BOC RKORADA - SP39 - CTR NPSCC 13695 PC pdf: initial PC output form - 07/07/2018
          lv_ctr_guid       TYPE GUID,
          lv_ctr_no         TYPE crmt_object_id_db,
          lo_ctr_pdf        TYPE REF TO zcl_pur_contract_form,
          ls_read_flags     TYPE zbbps_detail_requested,
          lv_filename_utf8  TYPE string,
          lv_ecs_filepath   TYPE zecs_folder_path                          VALUE IS INITIAL.
*} EOC RKORADA - SP39 - CTR NPSCC 13695 PC pdf: initial PC output form - 07/07/2018

    IF it_key_tab[] IS NOT INITIAL.
      lt_key_tab[] = it_key_tab[] .
      SORT lt_key_tab BY name .
    ENDIF.

    CASE iv_entity_name.
      WHEN 'SaperionAttachment'.

        READ TABLE lt_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>) WITH  KEY name = 'AttachGuid'
                                                                      BINARY SEARCH.
        IF sy-subrc = 0 AND <fs_key_tab> IS ASSIGNED.
          w_token = <fs_key_tab>-value.
        ENDIF.

        READ TABLE lt_key_tab ASSIGNING <fs_key_tab> WITH  KEY name = 'EcsFpath'
                                                                  BINARY SEARCH.
        IF sy-subrc = 0 AND <fs_key_tab> IS ASSIGNED.
          lv_ecs_filepath = <fs_key_tab>-value.
        ENDIF.

        READ TABLE lt_key_tab ASSIGNING <fs_key_tab> WITH  KEY name = 'FileName'
                                                                      BINARY SEARCH.
        IF sy-subrc = 0 AND <fs_key_tab> IS ASSIGNED.
          w_filename = <fs_key_tab>-value.
        ENDIF.

        READ TABLE lt_key_tab ASSIGNING <fs_key_tab> WITH  KEY name = 'DocumentGuid' BINARY SEARCH .
        "IF sy-subrc = 0 AND <fs_key_tab> IS ASSIGNED.
"          w_set_guid = <fs_key_tab>-value.

"          CALL METHOD /sapsrm/cl_pdo_model_factory=>get_instance
"            RECEIVING
"              eo_instance = lo_pdo_model_mgnr.    " PD Layer Get Detail Wrapper

"          IF lo_pdo_model_mgnr IS BOUND.
"            ls_read_flags-attach_tab = abap_true.
"*** Get the Header Level data
"            CALL METHOD lo_pdo_model_mgnr->get_detail
"              EXPORTING
"                iv_guid          = w_set_guid             " GUID of a CRM Order Object
"                iv_with_itemdata = 'X'                    " Checkbox
"                is_read_flags    = ls_read_flags          " Read Flags
"              IMPORTING
"                et_attach        = lt_attach.           " KW Attachments Including Document
"          ENDIF.
"        ENDIF.
** Fetch from ECS
        IF lv_ecs_filepath IS NOT INITIAL.

*{ BOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
          DATA(lv_filename) = lv_ecs_filepath.
          REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
*         Decode URI
          SPLIT lv_filename AT '/' INTO DATA(ls_blank) DATA(ls_buckname) DATA(ls_filename).
*         Encode URI
*          ls_filename = escape( val = ls_filename format = cl_abap_format=>e_xss_url ).
          cl_http_utility=>unescape_url(
            EXPORTING
              escaped   =  ls_filename   " URL-Encoded String
*              options   =     " Reserve for Future Enhancements
            RECEIVING
              unescaped = ls_filename    " Decoded string
          ).

          CONCATENATE '/' ls_buckname '/' ls_filename INTO lv_ecs_filepath.
*} EOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling

          NEW zcl_ecs_operation( )->download_attachment(
            EXPORTING
            im_ecs_path = lv_ecs_filepath
          IMPORTING
            es_xstring  = w_xstring
            es_error    = w_error ).
          IF w_error IS NOT INITIAL.
            DATA(lv_saperion_download) = abap_true.
          ENDIF.

        ELSEIF w_token IS NOT INITIAL.
          lv_saperion_download = abap_true.
        ENDIF.

        IF lv_saperion_download IS NOT INITIAL
          AND w_token IS NOT INITIAL.
*  If ECS download has been failed then find corresponding SAPERION object key if any

          IF obj_saperion_att IS NOT BOUND.
            CREATE OBJECT obj_saperion_att.
          ENDIF.

          obj_saperion_att->download_attachment(
           EXPORTING
              iw_xhdoc = w_token
             IMPORTING
              ew_content = w_xstring
              ew_filename = w_filename
              es_error    = w_error ).
        ENDIF.

        IF w_error IS INITIAL.
          lw_stream-value = w_xstring.
          SORT lt_attach BY objkey del_ind.

*            READ TABLE lt_attach ASSIGNING FIELD-SYMBOL(<fs_attach>) WITH KEY objkey = w_token
*                                                                      del_ind = space
*                                                                      BINARY SEARCH .

          IF line_exists( lt_attach[ zecs_folder_path = lv_ecs_filepath  del_ind = space ] )
              AND lv_ecs_filepath IS NOT INITIAL.
            w_filename = lt_attach[ zecs_folder_path = lv_ecs_filepath  del_ind = space ]-phio_fname.
          ELSEIF line_exists( lt_attach[ objkey = w_token  del_ind = space ] )
            AND w_token IS NOT INITIAL.
            w_filename = lt_attach[ objkey = w_token  del_ind = space ]-phio_fname.
          ENDIF.

          copy_data_to_ref(
            EXPORTING
              is_data = lw_stream
            CHANGING
              cr_data = er_stream ).

        ENDIF.

        lv_filename_utf8 = escape( val = w_filename format = cl_abap_format=>e_xss_url ).
        lw_header-name = 'Content-Disposition'.
        CONCATENATE 'attachment; filename=' lv_filename_utf8 INTO lw_header-value. "Bug 20195
        set_header( is_header = lw_header ).

*{ BOC RKORADA - SP39 - CTR NPSCC 13695 PC pdf: initial PC output form - 07/07/2018
      WHEN 'PrintCTR'.

*/..Get key data from query - CTR Guid
        READ TABLE lt_key_tab ASSIGNING <fs_key_tab> WITH  KEY name = 'ContractGuid'
                                                                    BINARY SEARCH .
        IF sy-subrc EQ 0.
          lv_ctr_guid = <fs_key_tab>-value.
        ENDIF.

        CREATE OBJECT lo_ctr_pdf.
        CALL METHOD lo_ctr_pdf->purchase_contract_form
          EXPORTING
            im_object_guid  = lv_ctr_guid                                " '000D3A27B8221ED898E2714EC6AFDC96'
            im_object_id    = ''                                         " '2999205333'
            im_preview_flag = 'X'             "--SP43-US# 15489--Preview watermark to be shown on PC pfd(When buyer clicks on print button in the App)_By Nihar
          IMPORTING
            ev_object_id    = lv_ctr_no
            e_xstring       = w_xstring.

        lw_stream-value = w_xstring.
        lw_stream-mime_type = 'application/pdf'.

        copy_data_to_ref(
          EXPORTING
          is_data = lw_stream
          CHANGING
          cr_data = er_stream ).

*/..Set File name property
*/..Get the header name 'Content-Disposition' into local work area lw_header-name
        lw_header-name = 'Content-Disposition'.
*/..Concatenate 'attachment; filename=' 'file name' and populate into local work area lw_header-value
        CONCATENATE 'attachment; filename=' lv_ctr_no '.pdf' INTO lw_header-value.
        set_header( is_header = lw_header ).

*} EOC RKORADA - SP39 - CTR NPSCC 13695 PC pdf: initial PC output form - 07/07/2018
*{ BOC - RKORADA - NPSCC-21916 and NPSCC-22133 excel download
      WHEN 'DownloadCtrExcel'.

        NEW zcl_ctr_excel_download( )->generate_excel_stream(  "US# 28965 by SWDENDI
                                EXPORTING it_key_tab = it_key_tab[]
                                          im_type    = 'BUS2000113'
                                IMPORTING ev_excel_stream = w_xstring
                                          e_ctr_number = DATA(lv_ctr_number) ).

        lw_stream-value = w_xstring.
        lw_stream-mime_type = 'application/xlsx'.

        copy_data_to_ref(
          EXPORTING
          is_data = lw_stream
          CHANGING
          cr_data = er_stream ).

*  /..Set File name property
*  /..Get the header name 'Content-Disposition' into local work area lw_header-name
        lw_header-name = 'Content-Disposition'.

        lw_header-value = |attachment; filename=| && |{ lv_ctr_number }| && |.xlsx| .
        set_header( is_header = lw_header ).
        RETURN.
*} EOC - RKORADA - NPSCC-21916 and NPSCC-22133 excel download
*{ BOC - SOPABBA - NPSCC-27223_Part View - Enhance part selection with Excel Upload
      WHEN 'DownloadPartExcel'.

        IF line_exists( it_key_tab[ name = 'FieldName' value = 'PART' ] ).
          DATA(lv_user_id)       = VALUE #( it_key_tab[ name = 'UserId' ]-value OPTIONAL ).
          DATA(lv_template_id)   = VALUE #( it_key_tab[ name = 'TemplateId' ]-value OPTIONAL ).

          IF lv_user_id IS INITIAL
            AND lv_template_id IS INITIAL.

            NEW zcl_excel_download( )->part_search_template(
*                                  EXPORTING it_key_tab = it_key_tab[]
*                                            im_type    = 'BUS2000113'
                                    IMPORTING ev_excel_stream = w_xstring ).

            lw_stream-value = w_xstring.
            lw_stream-mime_type = 'application/xlsx'.

            copy_data_to_ref(
              EXPORTING
              is_data = lw_stream
              CHANGING
              cr_data = er_stream ).

*  /..Set File name property
*  /..Get the header name 'Content-Disposition' into local work area lw_header-name
            lw_header-name = 'Content-Disposition'.

            lw_header-value = |attachment; filename=| && |{ 'PartExcelTemplate' }| && |.xlsx| .
            set_header( is_header = lw_header ).
            RETURN.
          ELSEIF lv_user_id IS NOT INITIAL
              AND lv_template_id IS NOT INITIAL.
            SELECT SINGLE template_name, excel_xstring
              INTO @DATA(ls_excl_dat)
              FROM zexcl_upl
              WHERE user_id = @lv_user_id
                AND field_name = 'PART'
                AND template_id = @lv_template_id.
            IF sy-subrc EQ 0.

              lw_stream-value = ls_excl_dat-excel_xstring.
              lw_stream-mime_type = 'application/xlsx'.

              copy_data_to_ref(
                EXPORTING
                  is_data = lw_stream
                CHANGING
                  cr_data = er_stream ).
*  /..Set File name property
*  /..Get the header name 'Content-Disposition' into local work area lw_header-name
              lw_header-name = 'Content-Disposition'.

              lw_header-value = |attachment; filename=| && |{ ls_excl_dat-template_name }| && |.xlsx| .
              set_header( is_header = lw_header ).
              RETURN.
            ENDIF.

          ENDIF.
*        ELSEIF line_exists( it_key_tab[ name = 'FIELDNAME' value = 'SUPPLIER'] ).
        ENDIF.
      WHEN 'DwnldPartExcel'.
        IF line_exists( it_key_tab[ name = 'FieldName' value = 'PART' ] ).
          CLEAR: lv_user_id, lv_template_id.
          lv_user_id       = VALUE #( it_key_tab[ name = 'UserId' ]-value OPTIONAL ).
          lv_template_id   = VALUE #( it_key_tab[ name = 'TemplateId' ]-value OPTIONAL ).

          IF lv_user_id IS INITIAL
            AND lv_template_id IS INITIAL.

            NEW zcl_excel_download( )->part_search_template(
*                                  EXPORTING it_key_tab = it_key_tab[]
*                                            im_type    = 'BUS2000113'
                                    IMPORTING ev_excel_stream = w_xstring ).

            lw_stream-value = w_xstring.
            lw_stream-mime_type = 'application/xlsx'.

            copy_data_to_ref(
              EXPORTING
              is_data = lw_stream
              CHANGING
              cr_data = er_stream ).

*  /..Set File name property
*  /..Get the header name 'Content-Disposition' into local work area lw_header-name
            lw_header-name = 'Content-Disposition'.

            lw_header-value = |attachment; filename=| && |{ 'PartExcelTemplate' }| && |.xlsx| .
            set_header( is_header = lw_header ).
            RETURN.
*          ELSEIF lv_user_id IS NOT INITIAL
*              AND lv_template_id IS NOT INITIAL.
*            SELECT SINGLE template_name, excel_xstring
*              INTO @DATA(ls_excl_data)
*              FROM Zexcl_upl
*              WHERE user_id = @lv_user_id
*                AND field_name = 'PART'
*                AND template_id = @lv_template_id.
*            IF sy-subrc EQ 0.
*
*              lw_stream-value = ls_excl_data-excel_xstring.
*              lw_stream-mime_type = 'application/xlsx'.
*
*              copy_data_to_ref(
*                EXPORTING
*                  is_data = lw_stream
*                CHANGING
*                  cr_data = er_stream ).
**  /..Set File name property
**  /..Get the header name 'Content-Disposition' into local work area lw_header-name
*              lw_header-name = 'Content-Disposition'.
*
*              lw_header-value = |attachment; filename=| && |{ ls_excl_data-template_name }| && |.xlsx| .
*              set_header( is_header = lw_header ).
*              RETURN.
*            ENDIF.

          ENDIF.
*        ELSEIF line_exists( it_key_tab[ name = 'FIELDNAME' value = 'SUPPLIER'] ).
        ENDIF.
*} EOC - SOPABBA - NPSCC-27223_Part View - Enhance part selection with Excel Upload
      WHEN OTHERS .
        CLEAR lv_ctr_no .
    ENDCASE.
  ENDMETHOD.


  METHOD /iwbep/if_mgw_sost_srv_runtime~operation_end.

    " Performance testing with SoftSate
*    TRY.
*        CALL METHOD super->/iwbep/if_mgw_sost_srv_runtime~operation_end.
*      CATCH /iwbep/cx_mgw_tech_exception .
*    ENDTRY.
    RETURN.
  ENDMETHOD.


  METHOD /iwbep/if_mgw_sost_srv_runtime~operation_start.

    " Performance testing with SoftState
*    TRY.
*        CALL METHOD super->/iwbep/if_mgw_sost_srv_runtime~operation_start.
*      CATCH /iwbep/cx_mgw_tech_exception .
*    ENDTRY.
    mv_is_softstate = abap_true.
    RETURN.
  ENDMETHOD.


  METHOD adminsitrate_deep_entity.
**&--------------------------------------------------------------------&*
*& Date:        22-06-2020                                            &*
*& Responsible: Infosys                                               &*
*& Developer:   KAUSING                                               &*
*& Description: Changes done for                                      &*
*&              Admin Insignificant Change deep entity                &*
*&--------------------------------------------------------------------&*
    DATA:
    ls_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_admin_change_deep_entity.

*&********************************************************************&*
****Transform data into the internal structure**************************
*&********************************************************************&*
    TRY .
        io_data_provider->read_entry_data(
          IMPORTING
            es_data = ls_deep_entity ).
      CATCH /iwbep/cx_mgw_tech_exception .
        CLEAR ls_deep_entity.
    ENDTRY.


    IF ls_deep_entity IS NOT INITIAL.

*   Call method to do Part View Mass Change
      NEW zcl_contract_app( )->administrate_insig_change(
         EXPORTING is_input_data = ls_deep_entity ).

    ENDIF.

  ENDMETHOD.


  METHOD bumultidivset_get_entityset.

*    SELECT low AS buss_unit
*      FROM tvarvc
*      INTO TABLE @et_entityset
*      WHERE name = 'ZCTR_MUL_DIV_NOT_ALLOW_BU'
*        AND type EQ'S'.
*    IF sy-subrc EQ 0.
*     SORT et_entityset BY buss_unit ASCENDING.
*    ENDIF.
    SELECT b~bu_id, b~bu_name AS buss_unit   "  Bug NPSCC-23097 SOPABBA
      FROM tvarvc AS a
      INNER JOIN zmaint_bu AS b
      ON a~low = b~bu_id
      INTO TABLE @et_entityset
      BYPASSING BUFFER
      WHERE a~name = 'ZCTR_MUL_DIV_NOT_ALLOW_BU'
        AND a~type EQ'S'.
    IF sy-subrc EQ 0.
      SORT et_entityset BY buss_unit ASCENDING.
    ENDIF.
  ENDMETHOD.


  METHOD bundleidf4set_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
*& Created    : 2018-02-16                                           &*
*& Description: This method is for F4help for BundleID field in CTR  &*
*&              Bundle ID field will be in CTR Header level          &*
*&-------------------------------------------------------------------&*

    TYPES : BEGIN OF ty_compare ,
              mandt       TYPE mandt,
              object_type TYPE char10,
              field_name  TYPE char30,
              value       TYPE char40,
              value_ucase TYPE char40,
            END OF ty_compare .

    DATA : lv_search_string TYPE string.

    TYPES ty_bundle TYPE RANGE OF char40.

    IF iv_search_string IS NOT INITIAL.
      lv_search_string = to_upper( iv_search_string ).
      lv_search_string = |{ '*' }{ lv_search_string }{ '*' }|.

      DATA(rt_bundle) = VALUE ty_bundle(
         ( sign   = 'I'
          option = 'CP'
          low    = lv_search_string
          high   = ' ' ) ).
    ENDIF.

    "SELECT object_type,
"           field_name,
"           value
"      FROM zcds_type_ahead
"*      INTO CORRESPONDING FIELDS OF TABLE @et_entityset   Vforge by RKORADA
"      INTO TABLE @DATA(lt_bundle)
"      WHERE object_type EQ 'BUS2000113'
"        AND field_name  EQ 'ZCTR_HDR_BUNDLE_ID'
"        AND value_ucase IN @rt_bundle.

   " IF sy-subrc EQ 0.
"      et_entityset = VALUE #( FOR <fs_rec> IN lt_bundle (
"                                              object_type = <fs_rec>-object_type
"                                              field_name  = <fs_rec>-field_name
"                                              value       = <fs_rec>-value ) ).
"      DELETE et_entityset WHERE  value IS INITIAL .
"    ENDIF.

*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD buyerf4set_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Kaushalendra Pratap Singh (KAUSING)        &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display all buyers in F4 help         &*
*&              US# 22562                                            &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    DATA : lcl_ctr    TYPE REF TO zcl_search_help_and_info,
           lv_user_id TYPE xubname,
           lt_filters TYPE         /iwbep/t_mgw_select_option.


    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).


    SORT lt_filters BY property ASCENDING .

    IF line_exists( lt_filters[ property = 'BUYER_ID' ] ).
      lv_user_id = lt_filters[ property = 'BUYER_ID' ]-select_options[ 1 ]-low.
    ENDIF.
    DATA(lv_vbuyer) = 'X'.

    CREATE OBJECT lcl_ctr.

    CALL METHOD lcl_ctr->get_cds_buyer_list
      EXPORTING
*       iv_firstname          =
*       iv_lastname           =
        iv_username           = lv_user_id
*       iv_department         =
        iv_search_str         = iv_search_string
        iv_virtual_buyer_flag = lv_vbuyer
      IMPORTING
        et_buyer              = et_entityset.

*/.. Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).
*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.
  ENDMETHOD.


  METHOD cbreasonset_get_entityset.
***********************************************************************
* Author             : AMISIN                                         *
* Title              : IPS Competitive Bid                            *
* Date               : 19/12/2017                                     *
* Module             : Procure-Contract Management                    *
* User Story         : 2962                                           *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
*               As an IPS buyer, I want to be able to select a        *
*               “Competitive Bid” for my NPM Contract in order to     *
*               inform my approver and provide data for reporting.    *
*                                                                     *
***********************************************************************

*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
    DATA: lcl_ctr_app TYPE REF TO zcl_contract_app,
          lt_reasons  TYPE ztt_comp_bid,
          lv_entity   LIKE LINE OF et_entityset.

*"-- Create Object for reference class Zcl_contract_app
    CREATE OBJECT lcl_ctr_app.

    DATA: lt_entries TYPE ztt_comp_bid_ctr.
    "lcl_ctr_app->get_comp_bid_and_reasons(
     "                EXPORTING im_language_key         = sy-langu
      "               IMPORTING ex_comp_bid_and_reasons = lt_entries ).

   " et_entityset = VALUE #( FOR ls_entry IN lt_entries WHERE ( assignment EQ 'R' ) ( ls_entry ) ).

**    LOOP AT lt_entries ASSIGNING FIELD-SYMBOL(<fs_reasons>) WHERE assignment EQ 'R'.
**      lv_entity = <fs_reasons>.
**      APPEND lv_entity TO et_entityset.
**      CLEAR lv_entity.
**    ENDLOOP.

  ENDMETHOD.


  METHOD classification01_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Srinivasan S (SRINIV)                      &*
*& Created    : 2020-07-02                                           &*
*& US         : NPSCC - 26904                                        &*
*& Description: This method is for fetching the classification code  &*
*&              for the requested contract header GUID               &*
*&-------------------------------------------------------------------&*

    NEW zcl_contract_app( )->get_classification_code(
*  EXPORTING
*    im_header_guid = lv_guid    " GUID of a CRM Order Object
      IMPORTING
        ex_entityset   = et_entityset
    ).
  ENDMETHOD.


  METHOD classificationde_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Srinivasan S (SRINIV)                      &*
*& Created    : 2020-07-02                                           &*
*& US         : NPSCC - 26904                                        &*
*& Description: This method is for fetching the classification code  &*
*&              for the requested contract header GUID               &*
*&-------------------------------------------------------------------&*
    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
      DATA(lv_guid) = CONV crmt_object_guid( it_key_tab[ name = 'ContractGuid' ]-value ).
      IF lv_guid IS NOT INITIAL.
        NEW zcl_contract_app( )->get_classification_code(
          EXPORTING
            im_header_guid = lv_guid    " GUID of a CRM Order Object
          IMPORTING
            ex_entityset   = et_entityset
        ).
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD commoditycodelis_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_SEARCH_HELP_AND_INFO                        &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display item commodity codes in F4    &*
*&              help US# 2991                                        &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*---------------------------------------------------------------------*
*& Date:        30/05/2018                                           &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                        &*
*& Description: SP_37-US_11197/11296- Adjustment: Populate dependent &*
*&              fields after manual part master assignment           &*
*---------------------------------------------------------------------*

    DATA : lo_obj               TYPE REF TO zcl_search_help_and_info,
           lv_commodity_code    TYPE comt_category_id,
           lt_filters           TYPE /iwbep/t_mgw_select_option,
           lv_responsible_buyer TYPE xubname.                           "SP_37-US_12966 By--TTHIRUM

    FIELD-SYMBOLS : <fs_filter> TYPE /iwbep/s_mgw_select_option.

    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
    SORT lt_filters BY property ASCENDING.

    READ TABLE lt_filters ASSIGNING <fs_filter>
      WITH KEY property = 'COMMODITY_ID' BINARY SEARCH.

    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options
        ASSIGNING FIELD-SYMBOL(<fs_cmdid>) INDEX 1.

      IF sy-subrc EQ 0.
        MOVE <fs_cmdid>-low TO lv_commodity_code.
      ENDIF.
    ENDIF.


    READ TABLE lt_filters WITH KEY property = 'RESPONSIBLE_BUYER' "{-B--SP_37-US_12966 By--TTHIRUM
      ASSIGNING <fs_filter> BINARY SEARCH.
    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options
        ASSIGNING FIELD-SYMBOL(<fs_res_buyer>) INDEX 1.
      IF sy-subrc EQ 0.
        MOVE <fs_res_buyer>-low TO lv_responsible_buyer.
      ELSE.
        lv_responsible_buyer = sy-uname.
      ENDIF.
    ELSE.
      lv_responsible_buyer = sy-uname.
    ENDIF.                                                             ""}-E--SP_37-US_12966 By--TTHIRUM

"    CREATE OBJECT lo_obj.
"    CALL METHOD lo_obj->get_lowest_commodity_code_list
"      EXPORTING
"        iv_srh_string          = iv_search_string
"        iv_commodity_id        = lv_commodity_code
"        is_paging              = is_paging
"*       iv_responsible_buyer   = lv_responsible_buyer
"      IMPORTING
"        et_commodity_code_list = et_entityset.


  ENDMETHOD.


  METHOD commoditycodeset_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display commodity codes in F4 help    &*
*&              US# 2957                                             &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*---------------------------------------------------------------------*
*& Date:        30/05/2018                                           &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                        &*
*& Description: SP_37-US_11197/11296- Adjustment: Populate dependent &*
*&              fields after manual part master assignment           &*
*---------------------------------------------------------------------*

    DATA : lc_cmd               TYPE REF TO zcl_search_help_and_info,
*           lt_commodity TYPE TABLE OF Zts_commodity,
           lv_commodity         TYPE comt_category_id,
           lt_filters           TYPE /iwbep/t_mgw_select_option,
           lv_responsible_buyer TYPE xubname.                          "SP_37-US_12966 By--TTHIRUM

    FIELD-SYMBOLS : <fs_filter> TYPE /iwbep/s_mgw_select_option.

    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
    SORT lt_filters BY property.  "KAUSING*vforge fix*20/09/2019
    READ TABLE lt_filters WITH KEY property = 'CATEGORYID' ASSIGNING <fs_filter> BINARY SEARCH.
    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_cmdid>) INDEX 1.
      IF sy-subrc EQ 0.
        MOVE <fs_cmdid>-low TO lv_commodity.
      ENDIF.
    ENDIF.

    READ TABLE lt_filters WITH KEY property = 'RESPONSIBLE_BUYER' "{-B--SP_37-US_12966 By--TTHIRUM
     ASSIGNING <fs_filter> BINARY SEARCH.
    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options
        ASSIGNING FIELD-SYMBOL(<fs_res_buyer>) INDEX 1.
      IF sy-subrc EQ 0.
        MOVE <fs_res_buyer>-low TO lv_responsible_buyer.
      ELSE.
        lv_responsible_buyer = sy-uname.
      ENDIF.
    ELSE.
      lv_responsible_buyer = sy-uname.
    ENDIF.                                                             ""}-E--SP_37-US_12966 By--TTHIRUM

*/.. Get commodity code from CDS view.
"    CREATE OBJECT lc_cmd.

"    CALL METHOD lc_cmd->get_commodity_code_list
"      EXPORTING
"        iv_srh_string          = iv_search_string
"        iv_commodity_id        = lv_commodity
"        is_paging              = is_paging
"*       iv_responsible_buyer   = lv_responsible_buyer
"      IMPORTING
"        et_commodity_code_list = et_entityset.

*/.. Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).
*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD compbidset_get_entityset.
***********************************************************************
* Author             : AMISIN                                         *
* Title              : IPS Competitive Bid                            *
* Date               : 19/12/2017                                     *
* Module             : Procure-Contract Management                    *
* User Story         : 2962                                           *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
*               As an IPS buyer, I want to be able to select a        *
*               “Competitive Bid” for my NPM Contract in order to     *
*               inform my approver and provide data for reporting.    *
*                                                                     *
***********************************************************************

*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------

    DATA: lt_entries TYPE ztt_comp_bid_ctr.
    DATA(lcl_ctr_app) = NEW zcl_contract_app( ).

"    lcl_ctr_app->get_comp_bid_and_reasons(
"                     EXPORTING im_language_key         = sy-langu
"                     IMPORTING ex_comp_bid_and_reasons = lt_entries ).

"    et_entityset = VALUE #( FOR ls_entry IN lt_entries WHERE ( assignment EQ 'C' ) ( ls_entry ) ).

  ENDMETHOD.


  METHOD condweighttypef4_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 24-Sep-2019                                           &*
*& Description: US#11158 - Cond weight type F4                        &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*&--------------------------------------------------------------------&*

* Get the weight types
    NEW zcl_contract_app( )->get_cond_weight_types( IMPORTING ex_weight_types = et_entityset ).

  ENDMETHOD.


  METHOD contractccf4set_get_entityset.
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        23-MAR-2020                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   SHENVIA                                               &*
*& Description: Changes done for US#27576                             &*
*&              Fiori App Contract Header - Consolidation Center      &*
*&              Direct Delivery Flag                                  &*
*----------------------------------------------------------------------*

**ZCL_FIO_MNG_MPN_DPC_EXT
**REGIONF4SET_GET_ENTITYSET

    CONSTANTS: lc_en TYPE c VALUE 'E'.

    SELECT domvalue_l AS cc " Cosolidation center
      FROM dd07l
      INTO TABLE @DATA(lt_cc_val)
      WHERE domname = 'ZCONSOLID_CENTER_FLAG'.
    IF sy-subrc EQ 0 AND lt_cc_val IS NOT INITIAL.
      SELECT domvalue_l AS center,
             ddtext     AS centerdesc,
             ddlanguage AS lang
        INTO TABLE @DATA(lt_consolid_center)
        FROM dd07t
        BYPASSING BUFFER
        FOR ALL ENTRIES IN @lt_cc_val
        WHERE ddlanguage IN ( @sy-langu, @lc_en ) AND domvalue_l = @lt_cc_val-cc
          AND domname = 'ZCONSOLID_CENTER_FLAG'.

      IF sy-subrc EQ 0.
* Boc US# 31872 Additional value for field Consolidation Center in UX - SWDENDI
        DATA(lv_contract_type) = VALUE #( it_filter_select_options[ property = 'ContractType' ]-select_options[ 1 ]-low OPTIONAL ).
        IF lv_contract_type <> 'ZTP'.
          DELETE lt_cc_val WHERE cc = '2'.
        ENDIF.
* Eoc US# 31872 Additional value for field Consolidation Center in UX - SWDENDI
        LOOP AT lt_cc_val ASSIGNING FIELD-SYMBOL(<fs_cc>).

          APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).
          IF <fs_entity> IS ASSIGNED.
            <fs_entity>-cc_value_key = <fs_cc>-cc.
            <fs_entity>-cc_value_text = COND #( WHEN line_exists( lt_consolid_center[ center = <fs_cc>-cc lang = sy-langu ] )
                                                         THEN lt_consolid_center[ center = <fs_cc>-cc lang = sy-langu ]-centerdesc
                                                         ELSE lt_consolid_center[ center = <fs_cc>-cc lang = lc_en ]-centerdesc ).
          ENDIF.
        ENDLOOP.

      ENDIF.
    ENDIF.

    SORT et_entityset BY cc_value_key DESCENDING.

  ENDMETHOD.


  METHOD contractcreateds_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
*& Created    : 2018-04-12                                           &*
*& Description: This method is display F4 values for Created System  &*
*&              field in CTR fiori application  search help          &*
*&-------------------------------------------------------------------&*

*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
    me->do_cache_entity_set(
      EXPORTING
        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
      CHANGING
        es_response_context     = es_response_context   " Feed request response information (EntitySet)
    ).
***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE
*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

*    lv_entity-Zcreated_sys = 'N' .
*    lv_entity-text              = text-013.   " 'proCure'  US# NPSCC-23988 SOPABBA
*    APPEND lv_entity TO et_entityset .
*
*    lv_entity-Zcreated_sys = 'G' .
*    lv_entity-text              = text-012.   " 'GLOBUS'  US# NPSCC-23988 SOPABBA
*
*    APPEND lv_entity TO et_entityset .

   " SELECT ref_created_sys,
"           created_sys AS zcreated_sys,  "US# 25521 by SWDENDI
"           created_system_desc AS text
"      FROM zpd_ctr_sys
"      INTO TABLE @et_entityset
"      WHERE object_type = 'BUS2000113'
"      AND created_sys IS NOT NULL.
"    IF sy-subrc NE 0.
"      CLEAR et_entityset.
"    ENDIF.

  ENDMETHOD.


  METHOD contractdivlists_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        03-July-2019                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   ROKARADA                                              &*
*& Description: Changes done for SP64-US_21377                        &*
*&              Conract div list                                      &*
*&--------------------------------------------------------------------&*

*&--------------------------------------------------------------------&*
* Data declaration
*&--------------------------------------------------------------------&*
    DATA: lv_ctrguid        TYPE GUID.

*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
    me->do_cache_entity_set(
      EXPORTING
        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
      CHANGING
        es_response_context     = es_response_context   " Feed request response information (EntitySet)
    ).
***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

*&--------------------------------------------------------------------&*
*fetch contract guid
*&--------------------------------------------------------------------&*
    DATA(lt_key_tab) = it_key_tab[].
    SORT lt_key_tab BY name.
    READ TABLE lt_key_tab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
      WITH KEY name = 'ContractGuid' BINARY SEARCH.

    IF sy-subrc = 0.
      lv_ctrguid = <fs_keytab>-value.
    ENDIF.

*&--------------------------------------------------------------------&*
* From CDS view - Fetching multiple Top divisions.
*&--------------------------------------------------------------------&*

"    SELECT guid AS guid,
"           top_division AS top_div_id,
"           top_div_desc AS top_div_desc
"      FROM zv_ctr_div
"      INTO TABLE @et_entityset
"      WHERE guid = @lv_ctrguid.

"    IF sy-subrc EQ 0.
"      SORT et_entityset BY top_div_id top_div_desc.
"      DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING top_div_id top_div_desc.
"    ENDIF.

  ENDMETHOD.


  METHOD contractheader01_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
*& Created    : 2017-11-07                                           &*
*& Description: Changes done for SP25-US#2945 (Contract)             &*
*&         This method is to Read INTE text for Header contract      &*
*&                                                                   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        06-Mar-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#8872                             &*
*&              Passing the data based on the CTR head GUID.         &*
*---------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
*& Date:        19-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#13672                             &*
*&              Passing the text (Note to Approver)                   &*
*----------------------------------------------------------------------*
*    TYPES: BEGIN OF ty_comment ,
*             header      TYPE crmt_object_id_db  ,   "-- Contract-Header
*             item_no     TYPE bbp_item_no ,          "-- Contract -Item No
**        Header_guid TYPE GUID ,
**        item_guid   TYPE GUID ,
*             tdid        TYPE tdid,                  "-- Text ID - HTXT,ITXT,ETXT,INTE,NOTE
*             uname       TYPE syst-uname,            "-- User name
*             comment     TYPE string,                "-- User comment Text
*             language    TYPE syst_langu,
*             timestamp   TYPE char15,
*             fullname    TYPE char50 ,               "-- User full name
*             header_guid TYPE GUID,
*             item_guid   TYPE GUID,
*           END OF ty_comment .

    DATA : lt_keytab        TYPE /iwbep/t_mgw_name_value_pair,
           lv_ctr_no        TYPE crmt_object_id_db,
           lv_ctr_item_no   TYPE zbbp_item_no,
           lt_comment       TYPE STANDARD TABLE OF zfio_ctr_usertext,
           ls_entity        LIKE LINE OF et_entityset,
           lv_ctr_head_guid TYPE GUID.                   "--Insert by  <VMANCHA> <US#8872>

    DATA :  lcl_contract_app TYPE REF TO  zcl_contract_app.

    CLEAR :lv_ctr_no , lv_ctr_item_no .

    lt_keytab = it_key_tab .

    SORT lt_keytab BY name ASCENDING.
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#8872>

    READ TABLE lt_keytab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
                                   WITH KEY name = 'ContractGuid'
                                   BINARY SEARCH .
    IF sy-subrc EQ 0.
      lv_ctr_head_guid = <fs_keytab>-value .
****** End of Insert by  <VMANCHA> <US#8872>
************************************************************************

      CREATE OBJECT lcl_contract_app .
************************************************************************
****** Begin of Insert by  <VMANCHA> <Performance>

      lcl_contract_app->get_db_texts_without_db_format(
          EXPORTING im_ctr_header_guid = lv_ctr_head_guid
                    im_mode            = 'HEADER'
          IMPORTING ex_texts           = lt_comment ).
****** End of Insert by  <VMANCHA> <Performance>
************************************************************************

      IF lt_comment IS NOT INITIAL.
        SORT lt_comment BY tdid.                                       " Venky - US#13672
        "For getting internal comments only
        LOOP AT lt_comment ASSIGNING FIELD-SYMBOL(<fs_comment>) WHERE
                           tdid = 'INTE' OR tdid = 'NOTM'.             " Venky - US#13672
          ls_entity-commentlogged = <fs_comment>-comment.
          ls_entity-fullname      = <fs_comment>-fullname.
          ls_entity-object_id     = <fs_comment>-header.
          ls_entity-ctr_header_guid     = lv_ctr_head_guid.
          ls_entity-text_id       = <fs_comment>-tdid.
          ls_entity-timestamp     = <fs_comment>-timestamp.
          ls_entity-userlanguage  = <fs_comment>-language.
          ls_entity-username      = <fs_comment>-uname.

          APPEND ls_entity TO et_entityset.
          CLEAR ls_entity.
        ENDLOOP.

      ENDIF.        "--Endif for IF lt_comment IS NOT INITIAL.
    ENDIF .         "-- Endif for IF sy-subrc EQ 0.( WITH KEY name = 'ContractId' BINARY SEARCH)

  ENDMETHOD.


  METHOD contractheaderse_create_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Sharanabasappa Noola (SHNOOLA)              &*
*& Created    : 22-Dec-2017                                           &*
*& Description: US#3073: Cancel purchase contact(Mass Cancellation)   &*
*& Transport  : DSQK904538                                            &*
*&--------------------------------------------------------------------&*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        15-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#8538                              &*
*&              Passing CTR header cancel type (S or H)               &*
*----------------------------------------------------------------------*
*& Date:        14-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3057                              &*
*&              Add the withdraw approval text to document and then   &*
*&              trigger the Withdraw Approval outbound message        &*
*&--------------------------------------------------------------------&*

    DATA: lo_obj       TYPE REF TO zcl_contract_app,
          ls_data      TYPE zcl_zfio_mng_ctr_mpc=>ts_contractheader,
          lt_return    TYPE bapiret2_t,
          lo_exception TYPE REF TO /iwbep/cx_mgw_tech_exception.

*****Transform data into the internal structure************
    io_data_provider->read_entry_data(
      IMPORTING
           es_data = ls_data ).

    CREATE OBJECT lo_obj.

*/.. RKORADA - 22-Mar - Fiori adjustment for flag
*    IF ls_data-ctr_action_flag = 'X'.
    IF ls_data-action = 'CANCEL'.

* Call method to cancel one or multiple contract if cancel flag is "X"
     " lo_obj->multiple_ctrs_cancellation(
"           EXPORTING im_contract_no     = ls_data-object_id             "lv_ctr_no
"                     im_cancelled_date  = ls_data-cancelled_date
"                     im_cancel_flag     = 'X'                           " ls_data-ctr_action_flag
"                     im_cancel_reason   = ls_data-cancel_reason
"                     im_cancel_type     = ls_data-cancel_type           " 8538 (Venky)
"           IMPORTING et_return_tab      = lt_return   ).

************************************************************************
****** Begin of Insert by  <VMANCHA> <US#3057>
*     If the action is to withdraw the approval
    ELSEIF ls_data-action = 'CANCEL_APPROVAL'.

     " lo_obj->withdraw_approval(
"           EXPORTING im_ctr_number         = ls_data-object_id
"                     im_ctr_header_guid    = ls_data-guid
"                     im_withdraw_note      = ls_data-cancel_approval_comment
"           IMPORTING ex_bapiret_msgs       = lt_return ).
****** End of Insert by  <VMANCHA> <US#3057>
************************************************************************
*{ US# 2970 - Multiple contract deletetion

*=={BOC_SP34_US2970_Delete CTR_By Nihar
    ELSEIF ls_data-action = 'DELETE'.

      lo_obj->delete_contract(
        EXPORTING
          im_contract_guid =  ls_data-guid   " Contract guid
        IMPORTING
          et_return_tab    =  lt_return    " Return table
      ).
*==}EOC_SP34_US2970_Delete CTR_By Nihar
*{ BOC - RKORADA / NPSCC-24802 : Discard change version

    ELSEIF ls_data-action = 'DISCARD_CV'.

      lo_obj->discard_change_version(
        EXPORTING
          im_ctr_guid     =  ls_data-guid  " Document change version guid
        RECEIVING
          rv_act_ver_guid =  ls_data-guid  " Document active version guid
      ).
*} EOC - RKORADA / NPSCC-24802 : Discard change version

* {BoC SP60 US# 20289 by SWDENDI
    ELSEIF ls_data-action = 'CANCEL_KODABA'.
*     Trigger cancel measure request outbound (KoDaBa) incase of 'Cancel KoDaBa'
      "DATA(lo_measure_request_cancel) = NEW zcl_measure_request( ).
"      lo_measure_request_cancel->measure_request_outbound(
"         EXPORTING im_object_type  = 'BUS2000113'
"                   im_document_num = ls_data-object_id
"                   im_mode         = 'CANCEL_KODABA' ).
* }EoC SP60 US# 20289 by SWDENDI
* {BoC SP60 US# 20289 by SWDENDI
    ELSEIF ls_data-action = 'SEND_REMAINDER'.
     " lo_obj->send_remainder(
"        EXPORTING
"          im_contract_guid =  ls_data-guid   " Contract guid
"          im_contract_num  =  ls_data-object_id " Contract number
"        IMPORTING
"          et_return_tab    =  lt_return ).   " Return table
* }EoC SP60 US# 20289 by SWDENDI
    ENDIF.


    IF lt_return[] IS NOT INITIAL.    "--Code relocated to here By Nihar

      CREATE OBJECT lo_exception .
*       Add messages to container & instantiate container
      lo_exception->get_msg_container( )->add_messages_from_bapi(
                                  it_bapi_messages = lt_return ).
*       Raise exception
      RAISE EXCEPTION lo_exception.

    ENDIF.
  ENDMETHOD.


  METHOD contractheaderse_get_entity.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                     &*
*& Created    : 2017-10-24                                            &*
*& Description: This method is display/create contract in page 2      &*
*&              PR fiori application                                  &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        14-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2962                              &*
*&              Passing the competitive bid and corresponding reason  &*
*----------------------------------------------------------------------*
*& Date:        18-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2944                              &*
*&              Passing the supplier contact person                   &*
*----------------------------------------------------------------------*
*& Date:        19-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for US#7898 -SP28                        &*
*&    Assign Incoterms/transport terms on header level for Contracts  &*
*----------------------------------------------------------------------*
*& Date:        16-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for US#2951                              &*
*&              Add Bundle ID field on Header Level of CTR            &*
*&--------------------------------------------------------------------&*
*& Date:        27-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3007                              &*
*&              Passing the pack term and return term details with    &*
*&              short and long texts                                  &*
*----------------------------------------------------------------------*
*& Date:        01-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#8872                              &*
*&              Passing version type of CTR and the data based on the &*
*&              CTR GUID received from fiori. And not the CTR number  &*
*----------------------------------------------------------------------*
*& Date:        09-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#9135                              &*
*&              Passing the supplier confirmation details             &*
*----------------------------------------------------------------------*
*& Date:        10-May-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for SP36_US#11266                        &*
*&              Enable text features from C8 for NPM and PM contracts &*
*----------------------------------------------------------------------*
*& Date:        19-June-2018                                         &*
*& Responsible: Infosys                                              &*
*& Developer:   Nihar Ranasingh (NRANASI)                            &*
*& Description: Changes done for SP38_US# 3026/12743                 &*
*&    PC App-Add result value to the IPS savings methods -Page2      &*
*&   Changes done to display Results for diff types of Price         &*
*&-------------------------------------------------------------------&*
*& Date:        19-June-2018                                         &*
*& Responsible: Infosys                                              &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                        &*
*& Description: Changes done for SP38_US#3041/2963                   &*
*&              WV/DV supplier declaration check                     &*
*&-------------------------------------------------------------------&*
*& Date:        17-Jul-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#3056                             &*
*&              Passing the approval link details                    &*
*---------------------------------------------------------------------*
*& Date:        30-Jul-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#2945                             &*
*&              Passing the output medium                            &*
*&-------------------------------------------------------------------&*
*& Date:        31/07/2018                                           &*
*& Developer:   Nihar Ranasingh(NRANASI)                             &*
*& Description: SP41-US# 14629-Fiori App Contract                    &*
*&          -(Service Location) On/Off Campus flag for IPS contracts &*
*&      This is Applicable only for NPM Contract                     &*
*---------------------------------------------------------------------*
*& Date:        03/08/2018                                           &*
*& Developer:   Nihar Ranasingh(NRANASI)                             &*
*& Description: SP41-US# 14773-PC App                                &*
*&              Remove contract confirmation on behalf of supplier   &*
*&              for eDocs contracts                                  &*
*---------------------------------------------------------------------*
*& Date:        13-Aug-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#11713                            &*
*&              Passing the output triggered timestamp               &*
*&-------------------------------------------------------------------&*
*& Date:        22/10/2018                                           &*
*& Developer:   Nihar Ranasingh(NRANASI)                             &*
*& Description: SP47-US#16130--PC_Override output language based on  &*
*&                             user preferences .                    &*
*---------------------------------------------------------------------*
*& Date:        15-Nov-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#3057                             &*
*&              If document is in awaiting approval, approval link is&*
*&              available, then send a flag to enable button 'Cancel &*
*&              Approval' if approval cancellation is not requested  &*
*---------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
*& Date:        10-Jan-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#15261                             &*
*&              Passing the approval urgency flag                     &*
*&--------------------------------------------------------------------&*
*& Date:        18-Jan-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Swathi Dendi (SWDENDI)                                &*
*& Description: Changes done for US#16590                             &*
*&              Translation of PC Application                         &*
*&--------------------------------------------------------------------&*
*& Date:        07-Feb-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Swathi Dendi (SWDENDI)                                &*
*& Description: Changes done for US# 18489 - Default Legal entity     &*
*&              in PC based on buyer's default plant                  &*
*&--------------------------------------------------------------------&*

"   " TYPES : BEGIN OF ts_process,
""              process_type     TYPE  bbpc_proc_type_t-process_type,     "process type
""              p_description_20 TYPE bbpc_proc_type_t-p_description_20,  " description
""              langu            TYPE bbpc_proc_type_t-langu,             "language
""            END OF ts_process.

"    DATA :lv_guid           TYPE crmt_object_guid,                        " ctr guid
"          lcl_ctr_app       TYPE REF TO zcl_contract_app,            " contract class
"          lo_info           TYPE REF TO zcl_search_help_and_info,
"          lv_purch_grp      TYPE hrobjid,
"          lt_messages       TYPE zbbp_pdt_messages,                        " message internal table
"          lt_status         TYPE zbbpt_pd_status,
"          ls_supplier       TYPE bu_partner,                              " supplier
"          lt_keytab         TYPE /iwbep/t_mgw_name_value_pair,            "fiori keytab
"          lt_partner        TYPE bbpt_pds_partner,
"          ls_process        TYPE ts_process,
"          ls_attr           TYPE bbp_attr_list,
"          lv_date           TYPE timestamp,
"          lv_time           TYPE t,
"          lt_attr_def       TYPE bbpt_attr_single,
"          lv_buyer          TYPE sy-uname,
"          lv_attr_single    TYPE bbps_attr_single,
"          lv_bu             TYPE zbu_id,
"          lt_attr_list      TYPE bbpt_attr_list,
"          lw_attr_list      TYPE bbp_attr_list,
"          lt_attr_value     TYPE bbpt_attr_single,
"          lr_attribute      TYPE RANGE OF zattribute, " By SOPABBA_US# NPSCC-31194
"          lv_buyer_country  TYPE land1,
"          lv_buyer_loc      TYPE bbp_location,                   "--}E--SP38_US#3041 By-TTHIRUM
"          ls_read_flags     TYPE bbps_detail_requested,
"          lv_op_buyer       TYPE syuname, "++ SRINIV US NPSCC 28929
"          lt_dfq_parameters TYPE STANDARD TABLE OF bapiparam,   "---SP47-US# 16130_By Nihar
"          lt_return         TYPE STANDARD TABLE OF bapiret2,
"****** Begin of Insert by  <VMANCHA> <US#3007>
"          ls_pack_terms     TYPE zcl_fio_manage_po_mpc=>ts_packterms,
"          lt_pack_terms     TYPE zcl_fio_manage_po_mpc=>tt_packterms,
"          ls_return_terms   TYPE zcl_fio_manage_po_mpc=>ts_retterms,
"          lt_return_terms   TYPE zcl_fio_manage_po_mpc=>tt_retterms,
"          lt_version        TYPE bbpt_pd_version_list_internal,
"          lv_lang1          TYPE spras,
"          ls_attr_single    TYPE bbps_attr_single,             " US# 18489 by SWDENDI
"          lo_exception      TYPE REF TO /iwbep/cx_mgw_busi_exception,
"          ls_messages       TYPE bapiret2,
"          lt_messgs         TYPE bapiret2_t.
"****** End of Insert by  <VMANCHA> <US#3007>

"    CONSTANTS : c_english     TYPE c LENGTH 10 VALUE 'English',
"****** Begin of Insert by  <VMANCHA> <US#8872>
"                lc_c          TYPE char01 VALUE 'C',                         " Change Version
"                lc_h          TYPE char01 VALUE 'H',                         " Historical Version
"**** BoC by SWDENDI US# 16590
"*                lc_active  TYPE char10 VALUE 'Active',                    " Active Version
"*                lc_change  TYPE char10 VALUE 'Change',                    " Change Version
"*                lc_history TYPE char10 VALUE 'Historical',                " Historical Version
"                lc_bus2000113 TYPE char10 VALUE 'BUS2000113',
"                lc_active     TYPE char10 VALUE 'ACTIVE',                    " Active Version
"                lc_change     TYPE char10 VALUE 'CHANGE',                    " Change Version
"                lc_history    TYPE char10 VALUE 'HISTORICAL',                " Historical Version
"                lc_chglog     TYPE zarea VALUE 'CHANGELOG',
"                lc_ctr_ref    TYPE rvari_vnam VALUE 'ZCTR_REFERENCE_TYPE',
"                lc_en         TYPE zlang VALUE 'E'.
"*                lc_en         TYPE Zlang VALUE 'EN'.
"**** EoC by SWDENDI US# 16590
"****** End of Insert by  <VMANCHA> <US#8872>

"    FIELD-SYMBOLS : <fs_keytab>          TYPE /iwbep/s_mgw_name_value_pair,
"                    <fs_request_details> TYPE any,
"                    <fs_filter_so>       TYPE /iwbep/t_mgw_select_option,
"                    <fs_property>        TYPE string,
"                    <fs_sel_opt>         TYPE /iwbep/t_cod_select_options.

"*HTALESR++ - US-10338

"* Fetching the currency description
"    SELECT waers, ltext FROM tcurt
"      INTO TABLE @DATA(lt_currdesc)
"      WHERE spras = @sy-langu.
"    IF sy-subrc = 0.
"      SORT lt_currdesc BY waers.
"    ENDIF.
"*HTALESR-- - US-10338
"*   Begin of changes *kausing*20/09/2019
"*    SELECT spras,sprsl,sptxt
"*      INTO TABLE @DATA(lt_t002tx)
"*       FROM t002tx
"*       WHERE spras = @sy-langu.
"*    IF sy-subrc IS INITIAL.
"*      SORT lt_t002tx BY spras sprsl.
"*    ENDIF.
"    SELECT c~spras,
"           a~language_key AS sprsl,
"           c~sptxt
"     INTO TABLE @DATA(lt_t002tx)
"     FROM zctr_lang  AS a
"     INNER JOIN t002 AS b
"     ON a~language_key = b~spras
"     INNER JOIN t002tx AS c
"     ON b~laiso = c~sprsl
"     BYPASSING BUFFER
"     WHERE c~spras = @sy-langu.
"    IF sy-subrc IS INITIAL.
"      SORT lt_t002tx BY spras sprsl.
"    ENDIF.
"*    End of changes by KAUSING*20/09/2019


"*"BOC{ US#21757_NPM VOB Validation in result section & translation info button_SOPABBA
"    DATA: lt_so10_names TYPE RANGE OF tdobname.

"    lt_so10_names = VALUE #( sign = 'I' option = 'EQ' ( low = 'ZBASELINE_DESC' )
"                                                      ( low = 'ZBUDGET_DESC' )
"                                                      ( low = 'ZPRICE_DESC' )
"                                                      ( low = 'ZQUOTES_DESC' )
"                                                      ( low = 'ZTARGET_DESC' ) ).

"    NEW zcl_search_help_and_info( )->get_so10_texts(
"      EXPORTING
"        im_so10_names   = lt_so10_names
"        im_language_key = sy-langu
"      IMPORTING
"        ex_so10_texts   = DATA(lt_so10_text) ).

"    er_entity-zdesc_baseline = COND #( WHEN line_exists( lt_so10_text[ so10_name  = 'ZBASELINE_DESC' ]  )
"                                            THEN  lt_so10_text[ so10_name  = 'ZBASELINE_DESC' ]-so10_text ).

"    er_entity-zdesc_budget = COND #( WHEN line_exists( lt_so10_text[ so10_name  = 'ZBUDGET_DESC' ]  )
"                                          THEN  lt_so10_text[ so10_name  = 'ZBUDGET_DESC' ]-so10_text ).

"    er_entity-zdesc_price = COND #( WHEN line_exists( lt_so10_text[ so10_name  = 'ZPRICE_DESC' ]  )
"                                         THEN  lt_so10_text[ so10_name  = 'ZPRICE_DESC' ]-so10_text ).

"    er_entity-zdesc_quote = COND #( WHEN line_exists( lt_so10_text[ so10_name  = 'ZQUOTES_DESC' ]  )
"                                         THEN  lt_so10_text[ so10_name  = 'ZQUOTES_DESC' ]-so10_text ).

"    er_entity-zdesc_target = COND #( WHEN line_exists( lt_so10_text[ so10_name  = 'ZTARGET_DESC' ]  )
"                                         THEN  lt_so10_text[ so10_name  = 'ZTARGET_DESC' ]-so10_text ).
"*"EOC} US#21757_NPM VOB Validation in result section & translation info button_SOPABBA
"    UNASSIGN <fs_keytab>.
"    MOVE it_key_tab TO lt_keytab.
"    SORT lt_keytab BY name ASCENDING.
"    CREATE OBJECT lcl_ctr_app. "calling method for supplier language

"****** Begin of Insert by  <VMANCHA> <US#8872>
"* BOC { US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"**--Get values from ZPO_FRM_CUS for PC
"    SELECT company_code , plant , bu , attribute
"*      FROM Zpo_frm_cus  " VMANCHA US#25281
"      FROM zprcss_conf   " VMANCHA US#25281
"      INTO TABLE @DATA(lt_frm_cus)
"        WHERE area      EQ 'PC_APP'" company_code IS NOT NULL  " Vforge - Negative conditions
"*        AND attribute EQ 'GPC_ATTACH_SWITCH'
"        AND attribute IN ( 'GPC_ATTACH_SWITCH', 'AWARDING' ) " SHENVIA  US#25837
"        AND active    EQ @abap_true.
"    IF sy-subrc IS INITIAL.
"      SORT lt_frm_cus BY company_code plant bu attribute.
"    ENDIF.
"* EOC } US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"*    We are going to fetch the data based on CTR GUID received from fiori
"    READ TABLE lt_keytab ASSIGNING <fs_keytab>
"                         WITH KEY name = 'ContractGuid'
"                         BINARY SEARCH.
"    IF sy-subrc = 0.

"      lv_guid = <fs_keytab>-value.

"      IF lv_guid IS INITIAL.
"****** End of Insert by  <VMANCHA> <US#8872>

"*/.. This logic for sending a blank structure to FIORI for SCRATCH CONTRACT CREATION
"        MOVE sy-uname TO er_entity-responsible_buyer.
"        er_entity-object_id = '0000000000'.         "--- AMAJAIN
"        er_entity-fiscal_year = sy-datum+0(4).
"        er_entity-created_system = 'N' .  " Release button issue - Send N to Fiori
"        er_entity-limit_per_release = '2500'.       "SP_38-US_13224 Defaulting limit per release value By--TTHIRUM

"* HTALESR++ - US-10338
"        SELECT SINGLE firstname, lastname, fullname  "fullname added by MONSING NPSCC-29610 Display full name.
"          FROM zresp_buyer
"          WHERE username EQ @er_entity-responsible_buyer
"           INTO @DATA(ls_buyer).

"        IF sy-subrc EQ 0.
"          er_entity-buyer_firstname = ls_buyer-firstname.
"          er_entity-buyer_lastname = ls_buyer-lastname.

"****** BOC BY MONSING NPSCC-29610 Display Full name
"*          CONCATENATE ls_buyer-firstname
"*                      ls_buyer-lastname
"*                 INTO er_entity-buyer_fullname SEPARATED BY space .   "--SP31_US#9620_ Added by Nihar

"          er_entity-buyer_fullname = ls_buyer-fullname.
"****** EOC BY MONSING NPSCC-29610 Display Full name


"        ENDIF.
"* HTALESR-- - US-10338
"*{ BOC - RKORADA - US# 2971
"        CLEAR: lt_attr_list, lt_attr_value.
"        ls_attr-attr_id = 'Z_WERKS'.
"        APPEND ls_attr TO lt_attr_list.
"        CLEAR ls_attr.
"        ls_attr-attr_id = 'Z_BU'.
"        APPEND ls_attr TO lt_attr_list.
"        CLEAR ls_attr.
"        ls_attr-attr_id = 'Z_BUKRS'. " US# 20389 Determine buyer's company code by SWDENDI
"        APPEND ls_attr TO lt_attr_list.
"        CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"          EXPORTING
"            iv_user                 = sy-uname
"            it_attr_list            = lt_attr_list
"          IMPORTING
"            et_attr_dft             = lt_attr_value
"          EXCEPTIONS
"            object_id_not_found     = 1
"            no_attributes_requested = 2
"            attributes_read_error   = 3
"            OTHERS                  = 4.
"        IF sy-subrc <> 0.
"          CLEAR : lt_attr_def.
"        ELSE.
"** Boc{ US# 18489  by SWDENDI
"          " Company code associated to plant in User's attribute will be the default company code
"          IF lt_attr_value IS NOT INITIAL.

"            DATA(lv_bunit) = VALUE #( lt_attr_value[ attr_id = 'Z_BU' ]-value DEFAULT space ).
"            er_entity-buyer_bu = lv_bunit.  " RKORADA - Send BU to fiori in scratch case as well
"            DATA(lv_buyer_co_code) = VALUE #( lt_attr_value[ attr_id = 'Z_BUKRS' ]-value OPTIONAL ).
"            lv_buyer_loc = VALUE #( lt_attr_value[ attr_id = 'Z_WERKS' ]-value OPTIONAL ).
"*            VMANCHA US#25281 - We should consider the company code of buyer, so commented the code
"*            IF line_exists( lt_attr_value[ attr_id = 'Z_WERKS' ] ).
"*              SELECT SINGLE company_code
"*                FROM bbp_locmap
"*                INTO @DATA(er_entity-co_code)
"*                WHERE ext_locno = @lv_buyer_loc.
"*              IF sy-subrc <> 0.
"*                CLEAR er_entity-co_code.
"*              ENDIF.
"*            ENDIF.

"* BOC { US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"            IF lv_buyer_co_code IS NOT INITIAL.
"              er_entity-co_code = lv_buyer_co_code.
"**--Check if create attribute exist for the Buyer
"              IF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                      bu  = lv_bunit attribute = 'GPC_ATTACH_SWITCH' ] ).

"                er_entity-gpc_active = abap_true.
"**--In case Plant = *
"              ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                      bu  = lv_bunit attribute = 'GPC_ATTACH_SWITCH' ] ).

"                er_entity-gpc_active = abap_true.
"**--In case BU = *
"              ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                      bu  = '*' attribute = 'GPC_ATTACH_SWITCH' ] ).

"                er_entity-gpc_active = abap_true.
"**--In case BU = *  and Plant = *
"              ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                      bu  = '*' attribute = 'GPC_ATTACH_SWITCH' ] ).

"                er_entity-gpc_active = abap_true.
"              ENDIF.
"            ENDIF.
"* EOC } US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"** }Eoc US# 18489  by SWDENDI

"* BOC { US# 25837 by SHENVIA Awarding Flag in NPM Contract
"**--Check if create attribute exist for the Buyer
"            IF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                    bu  = lv_bunit attribute =  'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case Plant = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                    bu  = lv_bunit attribute = 'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case BU = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                    bu  = '*' attribute = 'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case BU = *  and Plant = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                    bu  = '*' attribute = 'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.

"**--In case company code = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = lv_buyer_loc
"                                    bu  = lv_bunit attribute =  'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case company code = * and Plant = * and  BU = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = '*'
"                                   bu  = '*' attribute =  'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case BU = *  and Plant = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = lv_buyer_loc
"                                    bu  = '*' attribute =  'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"**--In case company code  = *  and Plant = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = '*'
"                                   bu  = lv_bunit attribute =  'AWARDING' ] ).

"              er_entity-award_applicable = abap_true.
"            ENDIF.

"*        IF line_exists( lt_frm_cus[ company_code = '*' plant = '*'
"*                             bu  = '100' attribute = 'AWARDING' ] ).
"*
"*          er_entity-award_applicable = abap_true.
"*        ELSE.
"*          CLEAR er_entity-award_applicable.
"*        ENDIF.
"* EOC } US# 25837 by SHENVIA Awarding Flag in NPM Contract


"          ENDIF.
"        ENDIF.

"*HTALESR++ - US-10338
"        IF er_entity-co_code IS NOT INITIAL.
"          SELECT SINGLE companyname
"            FROM zcompcodes
"            WHERE companyshort EQ @er_entity-co_code
"            INTO @er_entity-co_code_txt.

"          IF sy-subrc NE 0.
"            CLEAR er_entity-co_code_txt.
"          ENDIF.
"        ENDIF.
"*HTALESR-- - US-10338

"*} EOC - RKORADA - US# 2971

"*"==={-B-SP47-US# 16130--Override output language based on_By NRANASI
"*--"  If Output Language has been maintained for that User , then consider that Language .
"*--   Consider Language on change of supplier , only if Output Language is not set or not picked manually from F4

"*=="/  Call Gateway system to get the Language set for the User from Userdetails
"*--"/ Get the destination (DFQ)
"        SELECT bwsys UP TO 1 ROWS
"          FROM zinb_dest
"          INTO @DATA(lv_gw_sys)
"          WHERE gwsys = @sy-sysid.
"        ENDSELECT.

"        IF sy-subrc EQ 0.

"*--"/     Prepare the destination system ID with client
"          CONCATENATE lv_gw_sys '_' sy-mandt INTO lv_gw_sys.

"          CALL FUNCTION 'RFC_CALLBACK_REJECTED'.

"*--"/     Calling RFC FM to get the details from DFQ for the user
"          CALL FUNCTION 'BAPI_USER_GET_DETAIL'
"            DESTINATION lv_gw_sys
"            EXPORTING
"              username              = sy-uname
"              cache_results         = space
"            TABLES
"              parameter             = lt_dfq_parameters
"              return                = lt_return
"            EXCEPTIONS
"              communication_failure = 1
"              system_failure        = 2
"              OTHERS                = 3.

"          IF sy-subrc EQ 0 AND lt_dfq_parameters[] IS NOT INITIAL.

"            SORT lt_dfq_parameters BY parid .

"            IF line_exists( lt_dfq_parameters[ parid = 'ZOUTPUT_LANG' ] ).
"              DATA(lv_langkey) =  lt_dfq_parameters[ parid = 'ZOUTPUT_LANG' ]-parva .

"              CALL FUNCTION 'CONVERSION_EXIT_ISOLA_INPUT'
"                EXPORTING
"                  input            = lv_langkey
"                IMPORTING
"                  output           = er_entity-language_key
"                EXCEPTIONS
"                  unknown_language = 1
"                  OTHERS           = 2.
"              IF sy-subrc <> 0.
"*   Implement suitable error handling here
"                CLEAR er_entity-language_key.
"              ENDIF.
"            ELSE.
"              CLEAR lt_dfq_parameters.
"            ENDIF.

"            IF er_entity-language_key IS NOT INITIAL .
"*              Begin of comment by KASUING*20/09/2019
"*              SELECT SINGLE sptxt
"*                FROM t002t INTO @er_entity-language  "@DATA(lv_supp_lang)
"*                WHERE spras = @sy-langu
"*                  AND sprsl = @er_entity-language_key.
"*              IF sy-subrc NE 0.
"*                CLEAR er_entity-language.
"*              ENDIF.
"*             End of changes by KASUING*20/09/2019
"*             Begin of changes by KAUSING*20/09/2019
"              IF line_exists( lt_t002tx[ spras = sy-langu sprsl = er_entity-language_key ] ).
"                er_entity-language = lt_t002tx[ spras = sy-langu sprsl = er_entity-language_key ]-sptxt.
"              ENDIF.
"*             End of changes by KAUSING*20/09/2019
"            ENDIF.

"          ENDIF.

"        ENDIF.

"*"===}-E-SP47-US# 16130--Override output language based on_By NRANASI

"      ENDIF.
"    ELSE.
"      RETURN.
"    ENDIF.

"*---------------------------------------------------------------------------------------
"*{  BOC SP25-2954_Add Internal and External Notes on Header and Item Level - By Nihar

"    DATA: lo_pdo_model_mgnr TYPE REF TO /sapsrm/if_pdo_model_access,
"          ls_header         TYPE        bbp_pds_header,
"          lt_attach         TYPE        bbpt_pds_att_t,
"          lt_item           TYPE        bbpt_pd_item,
"          lt_longtext       TYPE        bbpt_pd_longtext,
"          lt_orgdata        TYPE        bbpt_pd_org,
"          lt_pridoc         TYPE TABLE OF bbp_pds_prc,
"          lv_longtext       TYPE string,
"          lt_header_rel_doc TYPE bbpt_pd_hrel.
"*          lo_cls            TYPE REF TO Zcl_carry_out_sourcing.
"*Get instance of the model manager class using the class /SAPSRM/CL_PDO_MODEL_FACTORY

"*   Getting the closed changed version as not closed from buffer and
"*   also waiting 1 seconds is also requried as it's still getting from buffer
"    IF lv_guid IS NOT INITIAL.
"      CALL FUNCTION 'BBP_PROCDOC_RESET_BUFFER'. " Venky - 8197, 3088
"*      WAIT UP TO 1 SECONDS.
"    ENDIF.

"* Authorization check for Users who can view all docs ignoring below check
"    AUTHORITY-CHECK OBJECT 'Z_OBJ_EXCP'
"                 ID 'ZOBJFLTR' FIELD 'N'.
"    IF sy-subrc NE 0.
"      DATA(ls_auth_ck) = abap_true.
"    ENDIF.

"*   Clear local internal tables
"    CLEAR : lt_attach[],lt_item[],lt_longtext[], lt_orgdata[],lt_partner[],lt_messages.
"    CALL METHOD /sapsrm/cl_pdo_model_factory=>get_instance
"      RECEIVING
"        eo_instance = lo_pdo_model_mgnr.    " PD Layer Get Detail Wrapper

"*{ BOC - RKORADA - NPSCC-25681  Quota App: Navigate back to change version

"    ASSIGN mr_request_details->* TO <fs_request_details>.
"    IF sy-subrc EQ 0 AND <fs_request_details> IS ASSIGNED.
"      ASSIGN COMPONENT 'FILTER_SELECT_OPTIONS'
"        OF STRUCTURE <fs_request_details> TO <fs_filter_so>.

"      IF sy-subrc EQ 0 AND <fs_filter_so> IS ASSIGNED.
"        LOOP AT <fs_filter_so> ASSIGNING FIELD-SYMBOL(<fs_filter>).

"          CASE <fs_filter>-property.
"            WHEN 'GetCurrentVer'.

"              READ TABLE <fs_filter>-select_options
"                ASSIGNING FIELD-SYMBOL(<fs_curr_version>) INDEX 1.
"              IF sy-subrc EQ 0 AND <fs_curr_version>-low EQ abap_true.
"                DATA(lv_get_curr_version) = abap_true.
"              ENDIF.
"            WHEN OTHERS.
"              CONTINUE.   " Do nothing
"          ENDCASE.
"        ENDLOOP.
"      ENDIF.
"    ENDIF.

"    IF lv_get_curr_version EQ abap_false.
"*} EOC - RKORADA - NPSCC-25681  Quota App: Navigate back to change version

"*/.. if the change version document is closed , we need to read from active guid.
"      SELECT SINGLE active_header
"        FROM bbp_pdhgp
"        WHERE guid EQ @lv_guid
"        AND version_type EQ 'C'
"        AND doc_closed EQ 'X'
"        INTO @DATA(lv_active_header).
"      IF sy-subrc EQ 0
"        AND lv_active_header IS NOT INITIAL.
"        lv_guid = lv_active_header.
"      ELSE.
"*{ BOC- RKORADA -NPSCC-25681  Quota App: Navigate back to change version

"        SELECT b~object_id, b~guid, b~version_type
"          FROM zctrhdbasic AS a
"          INNER JOIN zctrhdbasic AS b ON a~object_id EQ b~object_id
"          WHERE a~guid EQ @lv_guid
"          INTO TABLE @DATA(lt_ctr_ver_det).
"        IF sy-subrc EQ 0.

"          ASSIGN lt_ctr_ver_det[ version_type = 'C' ]-guid
"            TO FIELD-SYMBOL(<fs_chg_guid>) .
"          IF sy-subrc EQ 0 AND <fs_chg_guid> IS ASSIGNED.
"            " then Change version exists for this active version.
"            lv_guid = <fs_chg_guid>.
"          ENDIF.

"        ENDIF.
"*{ BOC- RKORADA -NPSCC-25681  Quota App: Navigate back to change version
"      ENDIF.

"*     BoC - NPSCC 31764 Amendment of Large Contract VIGSANK
"*      IF ls_header-process_type EQ 'ZDTL'.
"      IF lv_guid IS NOT INITIAL AND lv_get_curr_version IS INITIAL. "NPSCC 32615 Avoid Issue on Create
"*     Handle Amendment Case. Pick latest version of contract from LC table.
"        SELECT guid, pguid, changed_at FROM zctr_lcitms
"               INTO TABLE @DATA(lt_lc_ver)
"               WHERE pguid EQ @lv_guid.
"        IF sy-subrc IS INITIAL.
"          DATA(lv_lctr) = 'X'. "NPSCC 32615
"          SORT lt_lc_ver BY changed_at DESCENDING.
"          IF lt_lc_ver[ 1 ]-guid NE '00000000000000000000000000000001'.
"*         Manipulate GUID only when original ID is created
"            lv_guid = lt_lc_ver[ 1 ]-guid.
"          ENDIF.
"        ENDIF.
"      ENDIF.
"*      ENDIF.
"*     EoC - NPSCC 31764 Amendment of Large Contract VIGSANK

"    ENDIF.



"*   If the object is asssigned
"    IF lo_pdo_model_mgnr IS BOUND.
"*** Get the Header Level data

"      CLEAR ls_read_flags.
"      ls_read_flags-header_rel_tab = abap_true.
"      ls_read_flags-orgdata_tab = abap_true.
"      ls_read_flags-version_tab = abap_true.
"      ls_read_flags-longtext_tab = abap_true.
"      ls_read_flags-partner_tab = abap_true.

"      CALL METHOD lo_pdo_model_mgnr->get_detail
"        EXPORTING
"          iv_guid          = lv_guid          " GUID of a CRM Order Object
"          iv_with_itemdata = 'X'              " Checkbox
"          is_read_flags    = ls_read_flags
"        IMPORTING
"          et_status        = lt_status
"          et_messages      = lt_messages
"          et_orgdata       = lt_orgdata       " Table Type Org. Data
"          et_partner       = lt_partner       " Table Type Business Partner
"          et_longtext      = lt_longtext      " Long texts
"          es_header        = ls_header        " Header Data Procurement Document Interface
"          et_version       = lt_version      "-- Venky 8872
"          et_header_rel    = lt_header_rel_doc[].

"      IF lt_pridoc[] IS NOT INITIAL .
"        SORT lt_pridoc[] BY cond_type.
"      ENDIF.

"    ENDIF.

"    SELECT SINGLE high FROM
"      tvarvc INTO @DATA(lv_ctr_ref_type)
"      WHERE name = 'ZCTR_REFERENCE_TYPE'
"      AND low  = @ls_header-process_type.
"    IF sy-subrc <> '0'.
"      CLEAR lv_ctr_ref_type.
"    ENDIF.

"*}  EOC SP25-2954_Add Internal and External Notes on Header and Item Level - By Nihar
"*---------------------------------------------------------------------------------------

"    IF sy-subrc EQ 0
"      AND ls_header IS NOT INITIAL.   "-- added by NIhar-US2945
"* BOC{ US# 21678 by SWDENDI Interim filter in PC app for BMBS China
"*/.. Read responsible buyer details.
"      READ TABLE lt_orgdata ASSIGNING FIELD-SYMBOL(<fs_orgdata>) INDEX 1.
"      IF sy-subrc EQ 0.
"        lv_purch_grp  = <fs_orgdata>-proc_group_id.
"      ENDIF.

"      CREATE OBJECT lo_info.
"      CALL METHOD lo_info->get_buyer_from_purch_group
"        EXPORTING
"          iv_purch_grp = lv_purch_grp
"        IMPORTING
"          ev_buyer_id  = er_entity-responsible_buyer.
"      CLEAR: lt_attr_list, lt_attr_value.
"      lw_attr_list-attr_id = 'Z_BU'.
"      APPEND lw_attr_list TO lt_attr_list.
"      lw_attr_list-attr_id = 'Z_WERKS'.
"      APPEND lw_attr_list TO lt_attr_list.
"      lw_attr_list-attr_id = 'Z_BUKRS'.   "US# 23483 by SWDENDI
"      APPEND lw_attr_list TO lt_attr_list.

"      lv_buyer = er_entity-responsible_buyer.
"      CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"        EXPORTING
"          iv_user                 = lv_buyer
"          it_attr_list            = lt_attr_list
"        IMPORTING
"          et_attr_dft             = lt_attr_value
"          ev_attr_dft_single      = lv_attr_single
"        EXCEPTIONS
"          object_id_not_found     = 1
"          no_attributes_requested = 2
"          attributes_read_error   = 3
"          OTHERS                  = 4.
"      IF sy-subrc IS INITIAL.
"        SORT lt_attr_value BY attr_id.
"        READ TABLE  lt_attr_value ASSIGNING FIELD-SYMBOL(<fs_attr_val>)
"          WITH KEY attr_id = 'Z_BU' BINARY SEARCH.
"        IF sy-subrc EQ 0.
"          lv_bu = <fs_attr_val>-value.
"          er_entity-buyer_bu = <fs_attr_val>-value.  " RKORADA - US# 18969 - Send BU to fiori
"*          IF lv_bu = '100'.                      "--SP38_CTR_3026/12743_IPS flag
"*            er_entity-results_ips_flag = 'X' .   "-- Results Section is applicable only for IPS Buyer
"*          ENDIF.
"        ENDIF.
"*Boc US# 23483 Make Results section and related UX configurable (NPM) by SWDENDI
"        lv_buyer_co_code = COND #( WHEN line_exists( lt_attr_value[ attr_id = 'Z_BUKRS' ] ) THEN
"                                   lt_attr_value[ attr_id = 'Z_BUKRS' ]-value ).
"*BOC_By SOPABBA_US# NPSCC-31194_PC: Redesign hardcoded BU logics
"*        lr_attribute = VALUE #( ( sign = 'I' option = 'EQ' low = 'RESULT' )
"*                                ( sign = 'I' option = 'EQ' low = 'RESULT_COMP_BID' ) ).
"        SELECT company_code, bu, doc_type, attribute, result1
"          FROM zprcss_conf
"          INTO TABLE @DATA(lt_results)
"          WHERE area      = 'PC_APP'
"            AND attribute IN ( 'RESULT' , 'RESULT_COMP_BID' )
"            AND active    = @abap_true .
"*            AND company_code IS NOT NULL .   " Vforge negative condition
"        IF sy-subrc IS INITIAL.
"          SORT lt_results BY company_code bu doc_type attribute.
"          IF line_exists( lt_results[ company_code = lv_buyer_co_code
"                                      bu           = lv_bu
"                                      doc_type     = ls_header-process_type
"                                      attribute    = 'RESULT'
"                                      result1      = 'NPM' ] ).
"            DATA(lv_result) = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = lv_bu
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT'
"                                          result1      = 'NPM' ] ).
"            lv_result = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = lv_buyer_co_code
"                                          bu           = '*'
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT'
"                                          result1      = 'NPM' ] ).
"            lv_result = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = '*'
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT'
"                                          result1      = 'NPM' ] ).
"            lv_result = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = '*'
"                                          doc_type     = '*'
"                                          attribute    = 'RESULT'
"                                          result1      = 'NPM' ] ).
"            lv_result = abap_true.
"          ENDIF.
"* Attribute - 'RESULT_COMP_BID'
"          IF line_exists( lt_results[ company_code = lv_buyer_co_code
"                                      bu           = lv_bu
"                                      doc_type     = ls_header-process_type
"                                      attribute    = 'RESULT_COMP_BID'
"                                      result1      = 'NPM' ] ).
"            DATA(lv_result_comp_bid) = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = lv_bu
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT_COMP_BID'
"                                          result1      = 'NPM' ] ).
"            lv_result_comp_bid = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = lv_buyer_co_code
"                                          bu           = '*'
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT_COMP_BID'
"                                          result1      = 'NPM' ] ).
"            lv_result_comp_bid = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = '*'
"                                          doc_type     = ls_header-process_type
"                                          attribute    = 'RESULT_COMP_BID'
"                                          result1      = 'NPM' ] ).
"            lv_result_comp_bid = abap_true.
"          ELSEIF line_exists( lt_results[ company_code = '*'
"                                          bu           = '*'
"                                          doc_type     = '*'
"                                          attribute    = 'RESULT_COMP_BID'
"                                          result1      = 'NPM' ] ).
"            lv_result_comp_bid = abap_true.
"          ENDIF.
"          IF lv_result_comp_bid = abap_true
"            AND lv_result = abap_false.

"            er_entity-results_ips_flag = 'X'.

"          ELSEIF lv_result_comp_bid = abap_false
"            AND lv_result = abap_true.

"            er_entity-results_ips_flag = 'Y'.

"          ELSEIF lv_result_comp_bid = abap_true
"            AND lv_result = abap_true.

"            er_entity-results_ips_flag = 'Z'.
"          ENDIF.
"        ENDIF.

"*        SELECT company_code, bu, doc_type, result1
"*          FROM Zprcss_conf
"*          INTO TABLE @DATA(lt_results)
"*          WHERE area      = 'PC_APP'
"*            AND attribute = 'RESULT'
"*            AND active    = @abap_true .
"**            AND company_code IS NOT NULL .   " Vforge negative condition
"*        IF sy-subrc IS INITIAL.
"*          SORT lt_results BY doc_type.
"*          IF line_exists( lt_results[ company_code = lv_buyer_co_code bu = lv_bu doc_type = ls_header-process_type result1 = 'NPM' ] ).
"*            er_entity-results_ips_flag  = 'X'.
"*          ELSEIF line_exists( lt_results[ company_code = '*' bu = lv_bu doc_type = ls_header-process_type result1 = 'NPM' ] ).
"*            er_entity-results_ips_flag  = 'X'.
"*          ELSEIF line_exists( lt_results[ company_code = lv_buyer_co_code bu = '*' doc_type = ls_header-process_type result1 = 'NPM' ] ).
"*            er_entity-results_ips_flag = 'X'.
"*          ELSEIF line_exists( lt_results[ company_code = '*' bu = '*' doc_type = ls_header-process_type result1 = 'NPM' ] ).
"*            er_entity-results_ips_flag  = 'X'.
"*          ELSEIF line_exists( lt_results[ company_code = '*' bu = '*' doc_type = '*' result1 = 'NPM' ] ).
"*            er_entity-results_ips_flag  = 'X'.
"*          ENDIF.
"*        ENDIF.
"*EOC_By SOPABBA_US# NPSCC-31194_PC: Redesign hardcoded BU logics
"*Eoc US# 24761 Make Results section and related UX configurable (NPM) by SWDENDI
"*Eoc US# 23483 by SWDENDI

"        READ TABLE lt_attr_value ASSIGNING <fs_attr_val>
"          WITH KEY attr_id = 'Z_WERKS' BINARY SEARCH.
"        IF sy-subrc IS NOT INITIAL AND ls_auth_ck IS NOT INITIAL.
"          CREATE OBJECT lo_exception.
"          ls_messages-type   = 'E'.
"          ls_messages-id     = 'ZCL_MSG'.
"          ls_messages-number = '988'.
"          APPEND ls_messages TO lt_messgs.
"          lo_exception->get_msg_container( )->add_messages_from_bapi(
"          it_bapi_messages = lt_messgs ).
"          RAISE EXCEPTION lo_exception.
"          RETURN.
"        ELSEIF ls_auth_ck IS NOT INITIAL AND <fs_attr_val> IS ASSIGNED.
"          lv_buyer_loc = <fs_attr_val>-value.

"          DATA(lv_login_buyer) = sy-uname.
"* Implement a suitable exception handling here
"          IF lv_login_buyer NE lv_buyer.
"            CLEAR: lw_attr_list, lv_attr_single.
"            lw_attr_list-attr_id = 'Z_WERKS'.
"            CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"              EXPORTING
"                iv_user                 = lv_login_buyer
"                iv_attr_single          = lw_attr_list
"              IMPORTING
"                ev_attr_dft_single      = lv_attr_single
"              EXCEPTIONS
"                object_id_not_found     = 1
"                no_attributes_requested = 2
"                attributes_read_error   = 3
"                OTHERS                  = 4.
"            IF sy-subrc EQ 0 AND lv_attr_single IS NOT INITIAL.
"              SELECT user_group, buyer_plant
"                FROM zpd_auth_ck
"                INTO TABLE @DATA(lt_auth_chk)
"                      WHERE user_group IS NOT NULL "KAUSING*code cleanup*20/09/2019
"                      AND   buyer_plant IN (@lv_attr_single-value, @lv_buyer_loc).

"              IF sy-subrc IS INITIAL.
"                IF line_exists( lt_auth_chk[ buyer_plant = lv_buyer_loc ] ).
"                  DATA(lv_buyer_group) = lt_auth_chk[ buyer_plant = lv_buyer_loc ]-user_group.
"                ENDIF.
"                IF line_exists( lt_auth_chk[ buyer_plant = lv_attr_single-value ] ).
"                  DATA(lv_loginbuy_group) = lt_auth_chk[ buyer_plant = lv_attr_single-value ]-user_group.
"                ENDIF.

"                IF lv_buyer_group NE lv_loginbuy_group.
"                  CREATE OBJECT lo_exception.
"                  ls_messages-type   = 'E'.
"                  ls_messages-id     = 'ZCL_MSG'.
"                  ls_messages-number = '988'.
"                  APPEND ls_messages TO lt_messgs.
"                  lo_exception->get_msg_container( )->add_messages_from_bapi(
"                  it_bapi_messages = lt_messgs ).
"                  RAISE EXCEPTION lo_exception.
"                  RETURN.
"                ENDIF.
"              ENDIF.
"            ELSE.
"              CREATE OBJECT lo_exception.
"              ls_messages-type   = 'E'.
"              ls_messages-id     = 'ZCL_MSG'.
"              ls_messages-number = '988'.
"              APPEND ls_messages TO lt_messgs.
"              lo_exception->get_msg_container( )->add_messages_from_bapi(
"              it_bapi_messages = lt_messgs ).
"              RAISE EXCEPTION lo_exception.
"              RETURN.

"            ENDIF.
"          ENDIF.
"        ELSEIF <fs_attr_val> IS ASSIGNED.
"          lv_buyer_loc = <fs_attr_val>-value.
"        ENDIF.
"*  { BOC - RKORADA- NPSCC-16754 : Names of users with role "Virtual Buyer" do not show in the contract app
"* BOC by SRINIV for US NPSCC 28926
"        "reading operative buyer
"        SORT lt_partner BY partner_no.
"        DELETE lt_partner WHERE del_ind = abap_true.
"        DATA(lv_ob_partner_guid) = VALUE bu_partner_guid( lt_partner[ partner_fct = 'Z3' ]-partner_no OPTIONAL ).
"        CALL FUNCTION 'BP_CENTRALPERSON_GET'
"          EXPORTING
"            iv_bu_partner_guid  = lv_ob_partner_guid
"          IMPORTING
"            ev_username         = lv_op_buyer
"          EXCEPTIONS
"            no_central_person   = 1
"            no_business_partner = 2
"            no_id               = 3
"            OTHERS              = 4.
"        IF sy-subrc IS INITIAL.
"          er_entity-operative_buyer = CONV #( lv_op_buyer ).
"        ENDIF.
"        IF er_entity-operative_buyer IS NOT INITIAL.
"          DATA(lr_buyer) = VALUE susr_t_range_4_xubname( sign = 'I' option = 'EQ'
"                                  ( low = er_entity-operative_buyer )
"                                  ).
"        ENDIF.
"        IF er_entity-responsible_buyer IS NOT INITIAL.
"          APPEND VALUE #( sign = 'I' option = 'EQ' low = er_entity-responsible_buyer )
"                                  TO lr_buyer.
"        ENDIF.
"        IF lr_buyer IS NOT INITIAL.
"          SELECT
"            bname AS buyer,
"            name_first AS firstname,
"            name_last AS lastname,
"            name_text AS fullname "fullname added by MONSING NPSCC-29610 Display full name.
"            FROM v_usr_name
"            WHERE bname IN @lr_buyer
"             INTO TABLE @DATA(lt_buyers).

"*          SELECT name_first AS firstname, name_last AS lastname, name_text AS fullname "fullname added by MONSING NPSCC-29610 Display full name.
"*            FROM v_usr_name
"*            WHERE bname EQ @er_entity-responsible_buyer
"*            ORDER BY bname
"*            INTO @ls_buyer
"*            UP TO 1 ROWS.
"*          ENDSELECT.
"* EOC by SRINIV for US NPSCC 28926
"*   } EOC - RKORADA- NPSCC-16754 : Names of users with role "Virtual Buyer" do not show in the contract app
"          IF sy-subrc EQ 0.
"* BOC by SRINIV for US NPSCC 28926
"            DATA(ls_buyers) = VALUE #( lt_buyers[ buyer = er_entity-operative_buyer ] OPTIONAL ).
"            er_entity-operative_buyer_firstname = ls_buyers-firstname.
"            er_entity-operative_buyer_lastname  = ls_buyers-lastname.
"            er_entity-operative_buyer_fullname  = ls_buyers-fullname.
"            ls_buyers = VALUE #( lt_buyers[ buyer = er_entity-responsible_buyer ] OPTIONAL ).
"            er_entity-buyer_fullname = ls_buyers-fullname.
"            er_entity-buyer_firstname = ls_buyers-firstname.
"            er_entity-buyer_lastname = ls_buyers-lastname.
"          ENDIF.
"* EOC by SRINIV for US NPSCC 28926
"*          er_entity-buyer_firstname = ls_buyer-firstname.
"*          er_entity-buyer_lastname = ls_buyer-lastname.
"******* BOC BY MONSING NPSCC-29610 Display Full name
"**          CONCATENATE ls_buyer-firstname
"**                      ls_buyer-lastname
"**                 INTO er_entity-buyer_fullname SEPARATED BY space .   "--SP31_US#9620_ Added by Nihar
"*
"*          er_entity-buyer_fullname = ls_buyer-fullname.
"******* EOC BY MONSING NPSCC-29610 Display Full name

"        ENDIF.
"*   BOC { US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"*            VMANCHA US#25281 - We should consider the company code of buyer, so commented the code
"*        SELECT SINGLE company_code
"*        FROM bbp_locmap
"*        INTO @DATA(lv_cocode)
"*              WHERE ext_locno = @lv_buyer_loc.
"*        IF sy-subrc <> 0.
"*          CLEAR lv_cocode.
"*        ENDIF.
"**--Check if create attribute exist for the Buyer
"        IF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                        bu  = lv_bu attribute = 'GPC_ATTACH_SWITCH' ] ).
"          er_entity-gpc_active = abap_true.
"**--In case Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                             bu  = lv_bu attribute = 'GPC_ATTACH_SWITCH' ] ).
"          er_entity-gpc_active = abap_true.
"**--In case BU = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                            bu  = '*' attribute = 'GPC_ATTACH_SWITCH' ] ).
"          er_entity-gpc_active = abap_true.
"**--In case BU = *  and Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                              bu  = '*' attribute = 'GPC_ATTACH_SWITCH' ] ).
"          er_entity-gpc_active = abap_true.
"        ENDIF.
"        IF er_entity-gpc_active IS INITIAL.
"          CLEAR er_entity-zgpc_deactivate.
"        ELSE.
"          MOVE: ls_header-zgpc_deactivate TO er_entity-zgpc_deactivate.
"        ENDIF.
"* EOC } US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"* BOC { US# 25837 by SHENVIA Awarding Flag in NPM Contract
"**--Check if create attribute exist for the Buyer
"        IF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                bu  = lv_bu attribute =  'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                bu  = lv_bu attribute = 'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case BU = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = lv_buyer_loc
"                                bu  = '*' attribute = 'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case BU = *  and Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_co_code plant = '*'
"                                bu  = '*' attribute = 'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.

"**--In case company code = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = lv_buyer_loc
"                                bu  = lv_bu attribute =  'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case company code = * and Plant = * and  BU = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = '*'
"                               bu  = '*' attribute =  'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case BU = *  and Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = lv_buyer_loc
"                                bu  = '*' attribute =  'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"**--In case company code  = *  and Plant = *
"        ELSEIF line_exists( lt_frm_cus[ company_code = '*' plant = '*'
"                               bu  = lv_bu attribute =  'AWARDING' ] ).

"          er_entity-award_applicable = abap_true.
"*          er_entity-awarding_flag = ls_header-ps_idc_doc.
"        ENDIF.
"        IF er_entity-award_applicable EQ abap_true.
"          IF ls_header-ps_idc_doc EQ 'T'.
"            er_entity-awarding_flag = 'X'.
"          ELSE.
"            CLEAR er_entity-awarding_flag.
"          ENDIF.
"        ELSE.
"          CLEAR er_entity-awarding_flag.
"        ENDIF.
"* EOC } US# 25837 by SHENVIA Awarding Flag in NPM Contract
"*/..Get the buyer's country
"        SELECT a~country UP TO 1 ROWS
"         FROM adrc AS a INNER JOIN but020 AS b
"         ON a~addrnumber = b~addrnumber
"         INNER JOIN bbp_locmap
"         AS c ON c~partner_no = b~partner
"         BYPASSING BUFFER
"         INTO @lv_buyer_country
"         WHERE a~addrnumber IS NOT NULL AND c~ext_locno EQ @lv_buyer_loc.
"        ENDSELECT.
"        IF sy-subrc EQ 0.
"          IF ( lv_bu = 'IPS' OR lv_bu = '100' ) AND lv_buyer_country = 'DE' .
"            "--SP38-US#3041 WV/DV supplier declaration check By-TTHIRUM
"            er_entity-wv_disp_flag = 'X'.
"          ELSE.
"            er_entity-wv_disp_flag = ' '.
"          ENDIF.
"        ENDIF.
"* Boc { US# 18969 by SWDENDI Filling "Note to Approver" field is mandatory for TP/G
"*        IF ( ls_header-process_type EQ 'PM'
"*          OR ls_header-process_type EQ 'ZTP' ) "By SOPABBA_US# NPSCC-25480
"*          AND lv_bu IS NOT INITIAL.
"        IF lv_bu IS NOT INITIAL.
"          SELECT SINGLE function
"            FROM zbusines_rl
"            INTO @DATA(lv_function)
"            WHERE object_type EQ 'BUS2000113'
"              AND business_unit EQ @lv_bu
"              AND active EQ @abap_true.
"          IF sy-subrc IS INITIAL.
"            CONCATENATE lv_function '_RES_' lv_bu INTO DATA(lv_result_thres).
"            CONCATENATE lv_function '_AVOB_' lv_bu INTO DATA(lv_avob_thres).
"          ENDIF.
"        ENDIF.
"        SELECT name, numb, sign, opti, low, high
"          FROM tvarvc
"          INTO TABLE @DATA(lt_tvarvc)
"          WHERE name IN ( @lv_result_thres, @lv_avob_thres ). ", @lc_ctr_ref ).
"        IF sy-subrc IS INITIAL.
"          SORT lt_tvarvc BY name low.
"*          DATA(lv_ctr_ref_type) = VALUE #( lt_tvarvc[ name = 'ZCTR_REFERENCE_TYPE'
"*                                                      low  = ls_header-process_type ]-high  OPTIONAL ).
"        ENDIF.
"        IF lv_ctr_ref_type = 'PM'.
"          IF line_exists( lt_tvarvc[ name = lv_result_thres ] ).
"            er_entity-config_result = lt_tvarvc[ name = lv_result_thres ]-low.
"          ENDIF.
"          IF line_exists( lt_tvarvc[ name = lv_avob_thres ] ).
"            er_entity-config_avob = lt_tvarvc[ name = lv_avob_thres ]-low.
"          ENDIF.
"          IF ls_header-currency EQ 'EUR'.
"* Result - Change in price
"            er_entity-actual_result = ls_header-zprice_change_avob.
"*   ANP - Annual price change, delata value - change in Volume
"            IF ls_header-zannual_volume_avob GT ls_header-zvolume_change_avob.
"              er_entity-actual_avob = ls_header-zannual_volume_avob.
"            ELSE.
"              er_entity-actual_avob = ls_header-zvolume_change_avob.
"            ENDIF.
"          ELSE.
"            CALL FUNCTION 'CONVERT_TO_FOREIGN_CURRENCY'
"              EXPORTING
"                date             = sy-datum
"                foreign_currency = 'EUR'
"                local_amount     = ls_header-zprice_change_avob
"                local_currency   = ls_header-currency
"              IMPORTING
"                foreign_amount   = er_entity-actual_result
"              EXCEPTIONS
"                no_rate_found    = 1
"                overflow         = 2
"                no_factors_found = 3
"                no_spread_found  = 4
"                derived_2_times  = 5
"                OTHERS           = 6.
"            IF sy-subrc NE 0.
"              CLEAR : er_entity-actual_result.
"            ENDIF.
"            IF ls_header-zannual_volume_avob GT ls_header-zvolume_change_avob.
"              CALL FUNCTION 'CONVERT_TO_FOREIGN_CURRENCY'
"                EXPORTING
"                  date             = sy-datum
"                  foreign_currency = 'EUR'
"                  local_amount     = ls_header-zannual_volume_avob
"                  local_currency   = ls_header-currency
"                IMPORTING
"                  foreign_amount   = er_entity-actual_avob
"                EXCEPTIONS
"                  no_rate_found    = 1
"                  overflow         = 2
"                  no_factors_found = 3
"                  no_spread_found  = 4
"                  derived_2_times  = 5
"                  OTHERS           = 6.
"              IF sy-subrc NE 0.
"                CLEAR : er_entity-actual_avob.
"              ENDIF.
"            ELSE.
"              CALL FUNCTION 'CONVERT_TO_FOREIGN_CURRENCY'
"                EXPORTING
"                  date             = sy-datum
"                  foreign_currency = 'EUR'
"                  local_amount     = ls_header-zvolume_change_avob
"                  local_currency   = ls_header-currency
"                IMPORTING
"                  foreign_amount   = er_entity-actual_avob
"                EXCEPTIONS
"                  no_rate_found    = 1
"                  overflow         = 2
"                  no_factors_found = 3
"                  no_spread_found  = 4
"                  derived_2_times  = 5
"                  OTHERS           = 6.
"              IF sy-subrc NE 0.
"                CLEAR : er_entity-actual_avob.
"              ENDIF.
"            ENDIF.
"          ENDIF.
"        ENDIF.
"* Eoc } US# 18969 by SWDENDI Filling "Note to Approver" field is mandatory for TP/G
"      ENDIF.
"*    ENDIF. "Bug# 21993
"* Passing Remainder Date
"      er_entity-last_reminder_date = ls_header-zlast_reminder_date. " US# 22768 by SWDENDI
"*     Begin of changes by KAUSING*npscc 23193*Flag to indicate contract was reminded
"      IF ls_header-zlast_reminder_date <> '00000000'.
"        er_entity-reminder_flag = 'Y'.
"      ELSE.
"        er_entity-reminder_flag = 'N'.
"      ENDIF.
"*     End of changes by KAUSING*npscc 23193*flag to indicate that contract was reminded
"*
"*      IF er_entity-ctr_status EQ 'E0007'                   " BUG 28502
"*        AND ls_header-Zoutput_medium IS NOT INITIAL   " BUG 28502
"*        AND ls_header-Zoutput_medium NE 'XML'.        " BUG 28502
"*    Passing supplier confirmation details
"      er_entity-supp_conf_date = ls_header-zsupp_conf_date.    "--Insert by  <VMANCHA> <US#9135>
"      er_entity-supp_conf_num  = ls_header-zsupp_conf_num.
"*      ENDIF. " BUG 28502

"*  Passing version type of CTR
"      er_entity-version_type = ls_header-version_type.              "--Insert by  <VMANCHA> <US#8872>

"*For Consolidation Center
"      er_entity-consolidation_center = ls_header-zconsolidation_center.     "SHENVIA US :27568
"      SELECT domvalue_l AS center,
"             ddtext     AS centerdesc,
"             ddlanguage AS lang
"        INTO TABLE @DATA(lt_consolid_center)
"        FROM dd07t
"        WHERE domname EQ 'ZCONSOLID_CENTER_FLAG'
"          AND ddlanguage IN ( @sy-langu, @lc_en )
"          AND domvalue_l EQ @ls_header-zconsolidation_center.
"      IF sy-subrc EQ 0.
"        er_entity-consol_center_desc =
"          COND #( WHEN line_exists( lt_consolid_center[ lang = sy-langu ] )
"                    THEN lt_consolid_center[ lang = sy-langu ]-centerdesc
"                  ELSE
"                    lt_consolid_center[ lang = lc_en ]-centerdesc ) .
"      ENDIF.
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#2962>
"*     Passing the competitive bid and corresponding reason to fiori
"      DATA: lt_entries TYPE ztt_comp_bid_ctr.
"      lcl_ctr_app->get_comp_bid_and_reasons(
"                       EXPORTING im_language_key         = sy-langu
"                       IMPORTING ex_comp_bid_and_reasons = lt_entries ).

"      LOOP AT lt_entries ASSIGNING FIELD-SYMBOL(<fs_entries>)
"                         WHERE id = ls_header-zcomp_bid
"                         OR    id = ls_header-zreason.

"        IF <fs_entries>-id      = ls_header-zcomp_bid.

"          er_entity-comp_bid_id = <fs_entries>-id.
"          er_entity-comp_bid    = <fs_entries>-value.

"        ELSEIF <fs_entries>-id  = ls_header-zreason.

"          er_entity-reason_id   = <fs_entries>-id.
"          er_entity-reason      = <fs_entries>-value.

"        ENDIF.

"      ENDLOOP.
"****** End of Insert by  <VMANCHA> <US#2962>
"************************************************************************

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#3007>
"*     Pack term details
"      IF ls_header-pack_term IS NOT INITIAL.

"*       Call method to get the pack term details
"        lcl_ctr_app->get_all_pack_terms(
"                       EXPORTING im_pack_term         = ls_header-pack_term
"                       IMPORTING ex_pack_term_details = lt_pack_terms ).

"        IF lt_pack_terms IS NOT INITIAL.

"          ls_pack_terms = lt_pack_terms[ 1 ].

"          er_entity-pack_term           = ls_pack_terms-packterm_key.
"          er_entity-pack_term_shorttext = ls_pack_terms-packterm_shorttext.
"*          er_entity-pack_term_longtext  = ls_pack_terms-packterm_longtext. "US# 13378 by SWDENDI

"        ENDIF.

"      ENDIF.

"*     Return term details
"      IF ls_header-return_term IS NOT INITIAL.

"*       Call method to get the return term details
"        lcl_ctr_app->get_all_return_terms(
"                   EXPORTING im_return_term         = ls_header-return_term
"                   IMPORTING ex_return_term_details = lt_return_terms ).

"        IF lt_return_terms IS NOT INITIAL.

"          ls_return_terms = lt_return_terms[ 1 ].

"          er_entity-return_term           = ls_return_terms-retterm_key.
"          er_entity-return_term_shorttext = ls_return_terms-retterm_shorttext.
"*          er_entity-return_term_longtext  = ls_return_terms-retterm_longtext."US# 13378 by SWDENDI

"        ENDIF.

"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#3007>
"************************************************************************

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#2944>
"*     Pass supplier contact person details
"      SORT lt_partner BY partner_fct del_ind.
"      READ TABLE lt_partner ASSIGNING FIELD-SYMBOL(<fs_scp>)
"                            WITH KEY partner_fct = '00000017'
"                                     del_ind     = space
"                            BINARY SEARCH.
"      IF sy-subrc = 0.

"        er_entity-con_person_id    = <fs_scp>-partner_id.
"        er_entity-con_person_fname = <fs_scp>-firstname.
"        er_entity-con_person_lname = <fs_scp>-lastname.

"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#2944>
"************************************************************************

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#2945>
"      er_entity-zoutput_medium = ls_header-zoutput_medium.
"      IF ls_header-zoutput_medium = 'XML'.
"        er_entity-zoutput_medium_desc = 'eDocs'.
"      ELSEIF ls_header-zoutput_medium = 'PRN'.
"        er_entity-zoutput_medium_desc =  'Print'.
"      ELSEIF ls_header-zoutput_medium = 'PGA'.
"        er_entity-zoutput_medium_desc =  'proQ Guest Access'.
"      ELSEIF ls_header-zoutput_medium = 'IGA'.
"        er_entity-zoutput_medium_desc =  'Invitation to Guest Access'.
"      ELSEIF ls_header-zoutput_medium = 'NOP'. " ++ By SRINIV for NPSCC-31862 Don´t generate output (PDF, eDocs) for dummy plants
"        er_entity-zoutput_medium_desc =  'No Output'." ++ By SRINIV for NPSCC-31862 Don´t generate output (PDF, eDocs) for dummy plants
"      ENDIF.
"*      IF er_entity-Zoutput_medium = 'MAI'.
"*       If output medium is mail, then get the mail id od supplier contact
"*       person
"      SELECT a~partner1,
"             a~partner2,
"             b~name_first,
"             b~name_last,
"             c~smtp_addr,
"             d~tel_number,
"             a~zappl_edocs UP TO 1 ROWS
"        FROM but051 AS a
"        LEFT OUTER JOIN but000 AS b
"        ON b~partner = a~partner2
"        LEFT OUTER JOIN adr6 AS c
"        ON c~addrnumber = b~addrcomm
"        LEFT OUTER JOIN adrc AS d
"        ON d~addrnumber = b~addrcomm
"        INTO @DATA(ls_scp_details)
"        WHERE a~partner2 = @er_entity-con_person_id.
"      ENDSELECT.
"      IF sy-subrc = 0.
"        IF er_entity-zoutput_medium = 'MAI'.     "-- By NIhar _MOved here
"*       If output medium is mail, then get the mail id od supplier contact
"*       person
"          er_entity-zoutput_medium_desc = ls_scp_details-smtp_addr.
"        ENDIF.

"        er_entity-con_person_edoc_flag = ls_scp_details-zappl_edocs. ""--SP41-US# 14773_By Nihar
"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#2945>
"************************************************************************

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#12453>
"*     Pass release order contact details
"      READ TABLE lt_partner ASSIGNING FIELD-SYMBOL(<fs_roc>)
"                            WITH KEY partner_fct = 'Z2'
"                                     del_ind     = space
"                            BINARY SEARCH.
"      IF sy-subrc = 0.

"        er_entity-release_order_contact       = <fs_roc>-partner_id.
"        er_entity-release_order_contact_fname = <fs_roc>-firstname.
"        er_entity-release_order_contact_lname = <fs_roc>-lastname.

"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#12453>
"************************************************************************
"*"==={-B-SP38-US# 3026/12743_CTR:PC App-Add result value to the IPS savings methods-By NIhar-19June18

"*"-- Pass Corresponding VOB(Volume of Business) Before Negotiation(AN)/After Negotiation(AN) Value from DB to Fiori
"      er_entity-zres_price_bn   =  ls_header-zres_price_bn .
"      er_entity-zres_price_an   =  ls_header-zres_price_an .
"      er_entity-zres_quote_bn   =  ls_header-zres_quote_bn .
"      er_entity-zres_quote_an   =  ls_header-zres_quote_an .
"      er_entity-zres_target_bn   =  ls_header-zres_target_bn .
"      er_entity-zres_target_an   =  ls_header-zres_target_an .
"      er_entity-zres_budget_bn   =  ls_header-zres_budget_bn .
"      er_entity-zres_budget_an   =  ls_header-zres_budget_an .
"      er_entity-zres_baseline_bn =  ls_header-zres_baseline_bn  .
"      er_entity-zres_baseline_an =  ls_header-zres_baseline_an .
"      er_entity-zapp_urgent      = ls_header-zapp_urgent.    " VMANCHA - Venky US#15261
"      er_entity-lock_ind              = ls_header-zlock_ind.    " VMANCHA - Venky US#21862
"      er_entity-rpc_validation        = ls_header-bbp_reval.        " SOPABBA - NPSCC-25671
"      er_entity-zmethod_type     = ls_header-zmethod_type .     "--Method Dropdown value for Baseline Result Price

"*"===}-E-SP38-US# 3026/12743_CTR:PC App-Add result value to the IPS savings methods-By NIhar-19June18
"      "Begin of changes -- JVASUDE -- 23rd september,2020 -- NPSCC--30571
"      er_entity-production_country    = ls_header-ps_us01.
"      SELECT SINGLE landx50                                                       " Country Name
"        FROM t005t
"        INTO @er_entity-production_countrytext
"       WHERE spras = @sy-langu
"       AND   land1 = @er_entity-production_country.
"      IF sy-subrc IS NOT INITIAL.
"        CLEAR: er_entity-production_countrytext.
"      ENDIF.
"      er_entity-threeyp_flag          = ls_header-ps_us02.
"      er_entity-ps_subcon_item        = ls_header-ps_us03.
"      er_entity-lta_flag              = ls_header-ps_us04.
"      "End of changes -- JVASUDE -- 23rd september,2020 -- NPSCC--30571
"*     Fetch the process type description from the table
"      SELECT SINGLE process_type p_description_20 langu
"           FROM  bbpc_proc_type_t
"           INTO ls_process
"           WHERE process_type EQ ls_header-process_type
"             AND langu EQ sy-langu.

"      IF sy-subrc = 0.
"*       If the query is successful, assign it to er_entity structre
"        er_entity-ctr_type_desc = ls_process-p_description_20.
"      ENDIF.

"*    Begin of changes by KAUSING*26904*03/07/2020
"      IF lv_bu EQ '100'.
"        NEW zcl_contract_app( )->get_classification_code(
"           EXPORTING
"             im_header_guid = ls_header-guid    " GUID of a CRM Order Object
"           IMPORTING
"             ex_entityset   = DATA(lt_classification)
"         ).
"        DELETE lt_classification WHERE selected IS INITIAL.
"        DESCRIBE TABLE lt_classification LINES DATA(lv_lines).
"        IF lv_lines GT '1'.
"          er_entity-multi_classify_exists = abap_true.
"        ELSEIF lv_lines EQ '1'.
"          er_entity-classify_code   = lt_classification[ 1 ]-code.
"          er_entity-classify_text = lt_classification[ 1 ]-text.
"        ENDIF.
"      ENDIF.
"*    End of changes by KAUSING*26904*03/07/2020*

"* BOC BY TSACHAN US -2969 assign payterm terms

"      SELECT SINGLE * FROM zpterm_date
"            INTO @DATA(lw_data)
"            WHERE payment_term = @ls_header-pmnttrms.
"      IF sy-subrc IS INITIAL.
"        MOVE: lw_data-pterm_text TO er_entity-paymnt_shortdesc.
"      ENDIF.
"** EOC BY TSACHAN US -2969 assign payterm terms
"*../We must take status of the latest guid and having high weightage.
"      SELECT statuscode,status
"        FROM zctrhdstat
"        WHERE contractguid EQ @ls_header-guid
"        ORDER BY statusweight DESCENDING
"        INTO TABLE @DATA(lt_stat_we).

"      IF sy-subrc EQ 0.
"        er_entity-ctr_status  = VALUE #( lt_stat_we[ 1 ]-statuscode OPTIONAL ).
"        er_entity-ctr_status_text = VALUE #( lt_stat_we[ 1 ]-status OPTIONAL ).
"*      BOC by SHENVIA for BUG : 28776
"      ELSE.

"** Get the status description based on the status.
"*        IF ls_header-version_type = 'H'.
"*          " Passing released status for historic versions
"*          SELECT SINGLE estat, txt30
"*            FROM Zstatus
"*            INTO ( @er_entity-ctr_status , @er_entity-ctr_status_text )
"*            WHERE stsma = 'ZCT'
"*            AND estat = 'I1141'
"*            AND spras = @sy-langu.
"*          IF sy-subrc NE 0.
"*            CLEAR :  er_entity-ctr_status, er_entity-ctr_status_text.
"*          ENDIF.
"*        ENDIF.
"        DATA : lt_status1 TYPE TABLE OF bbp_pds_status.

"        CALL FUNCTION 'BBP_PD_STATUS_GETDETAIL'
"          EXPORTING
"            iv_guid         = ls_header-guid
"            iv_object_type  = 'BUS2000113'
"            iv_version_type = 'H'
"          TABLES
"            et_status       = lt_status1.

"        DELETE lt_status1 WHERE inact = 'X'.  " Delete the inactive version

"*     Get the status description and  weightage based on the status.
"        IF lt_status1 IS NOT INITIAL.
"          SELECT a~istat,
"                 a~index_stat,
"                 b~txt30
"            FROM zpd_stat_we AS a INNER JOIN zstatus AS b
"            ON a~istat = b~estat
"            FOR ALL ENTRIES IN @lt_status1
"            WHERE istat = @lt_status1-stat
"            AND b~stsma = 'ZCT'
"            AND b~spras = @sy-langu
"            AND a~object_type = 'BUS2000113'
"            INTO TABLE @DATA(lt_ctr_status_info)
"            BYPASSING BUFFER.

"          IF sy-subrc EQ 0.
"            SORT lt_ctr_status_info BY index_stat DESCENDING.

"            er_entity-ctr_status  = VALUE #( lt_ctr_status_info[ 1 ]-istat OPTIONAL ).
"            er_entity-ctr_status_text = VALUE #( lt_ctr_status_info[ 1 ]-txt30 OPTIONAL ).
"          ENDIF.

"        ENDIF.
"*      EOC by SHENVIA for BUG : 28776
"      ENDIF.
"*} EOC - RKORADA - NPSCC-18646 -  [INT]- Test Automation: NPM Contract is displayed in BBP_PD but not in FIORI
"*** BOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature

"      SELECT hdr_guid,ps_o_bo_obj_id
"        INTO TABLE @DATA(lt_usr_ld_data)
"        FROM zctr_item_det( p_system_lang = @sy-langu )
"*          FOR ALL ENTRIES IN @et_entityset
"        WHERE hdr_guid = @lv_guid."@er_entity-guid.
"      IF sy-subrc EQ 0.
"        SORT lt_usr_ld_data BY hdr_guid ASCENDING.
"        DELETE lt_usr_ld_data WHERE ps_o_bo_obj_id = space .
"      ENDIF.

"      DATA: rt_non_released_stat TYPE RANGE OF j_status.
"      rt_non_released_stat = VALUE #( ( sign = 'I' option = 'EQ' low = 'E0004'  )    "Error
"                           ( sign = 'I' option = 'EQ' low = 'E0014'  )    "Calculating AVoB Failed
"                           ( sign = 'I' option = 'EQ' low = 'E0015'  )    "Ready for Release
"                           ( sign = 'I' option = 'EQ' low = 'I1009'  )    "Saved
"                           ( sign = 'I' option = 'EQ' low = 'I1016'  ) ). "Release Rejected
"      IF line_exists( lt_usr_ld_data[ hdr_guid = lv_guid ] )
"          AND er_entity-version_no EQ space
"          AND er_entity-version_type EQ space   "Has never been released in proCure
"          AND er_entity-ctr_status IN rt_non_released_stat.  " Check Current version is in non released status.
"        er_entity-gl_userleadact = 'X'.
"      ENDIF.

"*** EOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#3056>
"*     If CTR is in Awaiting Approval
"      IF er_entity-ctr_status = 'I1015'                                 "{ BOC - RKORADA -US# NPSCC-15431 - SP43
"        OR er_entity-ctr_status EQ 'I1141'
"        OR er_entity-ctr_status EQ 'E0008'
"        OR er_entity-ctr_status EQ 'E0007'
"        OR er_entity-ctr_status EQ 'I1016'
"        OR er_entity-ctr_status EQ 'I1045'                           "} EOC - RKORADA -US# NPSCC-15431 - SP43
"        OR er_entity-ctr_status EQ 'E0018'        "npscc 30367*KAUSING
"        OR ( er_entity-ctr_status IS INITIAL
"            AND ls_header-version_type EQ 'H' ).
"* As part of US#15433 VMANCHA
"**       Get the approval link from table
"*        SELECT approval_link UP TO 1 ROWS
"*          FROM Zapprov_res
"*          INTO @er_entity-ctr_approval_link
"*          WHERE object_guid = @ls_header-guid.
"*        ENDSELECT.
"*        IF sy-subrc <> 0.
"*          CLEAR: er_entity-ctr_approval_link.
"*        ENDIF.
"        LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_approval_link>)
"                WHERE guid EQ ls_header-guid AND tdid = 'ZADL'.
"          CONCATENATE er_entity-ctr_approval_link <fs_approval_link>-tdline
"          INTO er_entity-ctr_approval_link.
"        ENDLOOP.
"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#3056>
"************************************************************************
"****** Begin of Insert by  <SOPABBA> <US#18576>
"      IF er_entity-ctr_status = 'E0011'.
"        er_entity-kdb_measure_assigned_by = ls_header-zmeasure_assigned_by.
"        LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_measure_link>)
"                            WHERE guid EQ ls_header-guid AND tdid = 'ZMAL'.
"          CONCATENATE er_entity-kdb_measure_assignment_link <fs_measure_link>-tdline
"          INTO er_entity-kdb_measure_assignment_link.
"        ENDLOOP.
"      ENDIF.
"****** End of Insert by  <SOPABBA> <US#18576>
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#3057>
"*     If document is in awaiting approval and approval link is available
"      IF er_entity-ctr_status = 'I1015'
"*        AND er_entity-ctr_approval_link IS NOT INITIAL.
"        AND ls_header-zapproval_wi_id IS NOT INITIAL. " RKORADA/13.01.2020 to make in sync with approval reset tool
"*       Check if approval cancellation already requested
"        SELECT COUNT( * )
"          FROM zpd_apprcnl
"          WHERE object_type = 'BUS2000113'   "KAUSING*vforge fix
"          AND   document_id = @ls_header-object_id
"          AND   withdrawal_req = @abap_true.
"*       If not requested, then send a flag to enable button 'Cancel Approval'
"        IF sy-subrc <> 0.
"          er_entity-cancel_approval_flag = abap_true.
"        ENDIF.
"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#3057>
"************************************************************************

"*"-- Added by Nihar US2954 - for Text save & Dispaly
"      MOVE : ls_header-object_id             TO er_entity-object_id,
"             ls_header-guid                  TO er_entity-guid,
"             ls_header-description           TO er_entity-description,
"             ls_header-process_type          TO er_entity-contracttype,
"             ls_header-ext_create_date       TO er_entity-version_creation_date, " VMANCHA US#24078
"             ls_header-zcreated_sys     TO er_entity-created_system .  ""--SP27-US5605 (CTR created in NPS,field value = 'N', created in GLOBUS -> field value = 'G' ,By Nihar

"      IF ls_header-zcreated_sys = 'N'.                                 "--SP34_US#11748-: Show Globus lock indicator for PC-- By Nihar
"        er_entity-created_system_desc = TEXT-010. "'Created in NPS'.
"      ELSEIF ls_header-zcreated_sys = 'G' .
"*        er_entity-created_system_desc = 'Created in Globus' .  "kausing*NPSCC-23411
"        er_entity-created_system_desc = TEXT-011. "'Locked by GLOBUS'.  "kausing*npscc-23411

"      ENDIF.
"** Begin of Changes US# 29273 by SOPABBA
"      er_entity-ctr_ref_type = lv_ctr_ref_type.
"** End of Changes US# 29273 by SOPABBA


"** Begin of Changes US# 17021 by SWDENDI
"      SELECT guid, top_division, top_div_desc
"        FROM zv_ctr_div
"        INTO TABLE @DATA(lt_plant_div)
"        WHERE guid = @er_entity-guid.
"      IF sy-subrc  = 0.
"        SORT lt_plant_div BY top_division top_div_desc ASCENDING.
"        DELETE ADJACENT DUPLICATES FROM lt_plant_div COMPARING top_division top_div_desc.
"        DESCRIBE TABLE lt_plant_div LINES lv_lines.
"        IF lv_lines GT '1'.
"          er_entity-multi_div_exists = abap_true.
"        ELSE.
"          DATA(ls_plant_div) = lt_plant_div[ 1 ].
"          er_entity-top_div_id   = ls_plant_div-top_division.
"          er_entity-top_div_desc = ls_plant_div-top_div_desc.
"        ENDIF.
"      ENDIF.
"** End of Changes US# 17021 by SWDENDI
"* HTALESR++ - US-10338
"      READ TABLE lt_currdesc ASSIGNING FIELD-SYMBOL(<fs_currdesc>) WITH KEY waers = ls_header-currency BINARY SEARCH.
"      IF sy-subrc = 0.
"        er_entity-curr_desc = <fs_currdesc>-ltext.
"      ENDIF.
"* HTALESR-- - US-10338

"      MOVE:    ls_header-currency                TO er_entity-currency,
"               ls_header-vper_start              TO er_entity-validity_from,
"               ls_header-vper_end                TO er_entity-validity_to,
"               ls_header-zcontract_target_value TO er_entity-contract_target_value ,   "--US6632 - CTR Target Value
"               ls_header-zlimit_per_release TO er_entity-limit_per_release,
"               ls_header-currency                TO er_entity-currency_limit_release ,
"               ls_header-zcommodity_code    TO er_entity-commodity_code,
"               ls_header-ps_fiscal_year          TO  er_entity-fiscal_year ,
"               ls_header-zplantassign_ind   TO  er_entity-plantassign_ind ,
"               ls_header-zctr_hdr_bundle_id TO  er_entity-bundle_id ,                  "--SP31-US#2951- Add Bundle IDs_ By NIhar
"               ls_header-zmanual_creation_date TO er_entity-creation_date,             "--SP33-US#3052 Change manual contract creation date (Header) By-TTHIRUM

"*{ BOC - RKORADA - US 2971

"               ls_header-co_code      TO er_entity-co_code.             " US# 2971
"****** Begin of Insert by  <VMANCHA> <US#8872>
"      er_entity-version_type = ls_header-version_type.
"      SORT lt_version BY guid ASCENDING.
"****** Boc by SWDENDI US# 16590
"* This part is commented as data type of language field in table had been changed US# 20282 -- SWDENDI
"*      CALL FUNCTION 'CONVERSION_EXIT_ISOLA_OUTPUT'
"*        EXPORTING
"*          input  = sy-langu
"*        IMPORTING
"*          output = lv_lang1.
"      lv_lang1 = sy-langu.
"      SELECT object_type, text_id, area , language, text
"      FROM zaf_pd_tran
"      INTO TABLE @DATA(lt_af_pd_tran)
"      WHERE object_type = @lc_bus2000113
"        AND text_id IN ( @lc_active, @lc_change, @lc_history )
"        AND area = @lc_chglog
"        AND language IN ( @lv_lang1 , @lc_en ).
"      IF sy-subrc EQ 0.
"        SORT lt_af_pd_tran BY object_type text_id area language.
"      ENDIF.
"****** Eoc by SWDENDI US# 16590
"      IF er_entity-created_system EQ 'N'.
"* If verions type is space, then it is active version
"        IF ls_header-version_type     = space.
"**** BoC by SWDENDI US# 16590
"*          er_entity-version_type_desc = lc_active.
"          IF line_exists( lt_af_pd_tran[ text_id = lc_active language = lv_lang1 ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_active language = lv_lang1 ]-text.
"          ELSEIF line_exists( lt_af_pd_tran[ text_id = lc_history language = lc_en ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_active language = lc_en ]-text.
"          ENDIF.
"**** EoC by SWDENDI US# 16590
"*       If it has change version which is not closed, then active version
"*       should not be editable.
"          IF line_exists( lt_version[ version_type = lc_c
"                                      doc_closed   = abap_false ] ).
"            er_entity-editable = abap_false.
"          ELSE.

"            IF NOT ( er_entity-ctr_status EQ 'E0003' OR er_entity-ctr_status EQ 'I1045'
"              OR er_entity-ctr_status EQ 'I1015' OR er_entity-ctr_status EQ 'I1040'
"              OR er_entity-ctr_status EQ 'E0013'                     " Venky US#16210
"              OR er_entity-ctr_status EQ 'E0011' ).   " Bug# 20283  By SOPABBA
"              er_entity-editable = abap_true.
"            ENDIF.
"            IF er_entity-ctr_status EQ 'I1141'
"              OR er_entity-ctr_status EQ 'E0008'
"              OR er_entity-ctr_status EQ 'E0007'                     " US# 8538 enable for PM also
"              OR er_entity-ctr_status EQ 'E0017'
"              OR er_entity-ctr_status EQ 'E0018'          "npscc 30967*KAUSING
"              OR er_entity-ctr_status EQ 'E0016'.

"              er_entity-cancelable = 'X'.

"*              IF ls_header-Zoutput_medium NE 'PRN'.
"              DATA lv_tz TYPE ttzz-tzone.
"              CONVERT DATE ls_header-output_trig_date TIME ls_header-output_trig_time
"                DAYLIGHT SAVING TIME abap_true
"                INTO TIME STAMP er_entity-zoutput_trig_timestamp TIME ZONE lv_tz.
"              er_entity-zoutput_trig_time = ls_header-output_trig_time.
"*              ENDIF.
"            ENDIF.

"          ENDIF.
"* If verions type is C, then it is change version
"        ELSEIF ls_header-version_type = lc_c.
"**** BoC by SWDENDI US# 16590
"*          er_entity-version_type_desc = lc_change.
"          IF line_exists( lt_af_pd_tran[ text_id = lc_change language = lv_lang1 ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_change language = lv_lang1 ]-text.
"          ELSEIF line_exists( lt_af_pd_tran[ text_id = lc_change language = lc_en ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_change language = lc_en ]-text.
"          ENDIF.
"**** EoC by SWDENDI US# 16590
"          IF NOT ( er_entity-ctr_status EQ 'E0003' OR er_entity-ctr_status EQ 'I1045'
"            OR er_entity-ctr_status EQ 'I1015' OR er_entity-ctr_status EQ 'I1040'
"            OR er_entity-ctr_status EQ 'E0013'                         " Venky US#16210
"            OR er_entity-ctr_status EQ 'E0011' ).   " Bug# 20283  By SOPABBA

"            er_entity-editable = abap_true.
"          ENDIF.
"*         Begin of changes by KAUSING*npscc 28973*28th June 2020
"          CONVERT DATE ls_header-output_trig_date TIME ls_header-output_trig_time
"            DAYLIGHT SAVING TIME abap_true
"            INTO TIME STAMP er_entity-zoutput_trig_timestamp TIME ZONE 'UTC'.
"          er_entity-zoutput_trig_time = ls_header-output_trig_time.
"*         End of changes by KAUSING*npscc 28973*28th June 2020

"* If verions type is H, then it is historical version
"        ELSEIF ls_header-version_type = lc_h.
"**** BoC by SWDENDI US# 16590
"*          er_entity-version_type_desc = lc_history.
"          IF line_exists( lt_af_pd_tran[ text_id = lc_history language = lv_lang1 ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_history language = lv_lang1 ]-text.
"          ELSEIF line_exists( lt_af_pd_tran[ text_id = lc_history language = lc_en ] ).
"            er_entity-version_type_desc = lt_af_pd_tran[ text_id = lc_history language = lc_en ]-text.
"          ENDIF.
"**** EoC by SWDENDI US# 16590
"          er_entity-editable = abap_false.

"          READ TABLE lt_version ASSIGNING FIELD-SYMBOL(<fs_version>)
"            WITH KEY guid = ls_header-guid BINARY SEARCH.
"          IF sy-subrc EQ 0.
"            CONCATENATE er_entity-version_type_desc
"                        <fs_version>-version_no
"                   INTO er_entity-version_type_desc
"                   SEPARATED BY space.
"          ENDIF.

"*         Begin of changes by KAUSING*npscc 28973*28th June 2020
"          CONVERT DATE ls_header-output_trig_date TIME ls_header-output_trig_time
"            DAYLIGHT SAVING TIME abap_true
"            INTO TIME STAMP er_entity-zoutput_trig_timestamp TIME ZONE 'UTC'.
"          er_entity-zoutput_trig_time = ls_header-output_trig_time.
"*         End of changes by KAUSING*npscc 28973*28th June 2020

"        ENDIF.
"      ENDIF.
"****** End of Insert by  <VMANCHA> <US#8872>
"*     BoC - NPSCC 32615 Set Editable false for large contract having change lock
"      IF ls_header-process_type EQ 'ZDTL'.
"        IF ls_header-change_lock = 'X'.
"          er_entity-editable = abap_false.
"          er_entity-cancelable = abap_false.
"        ENDIF.
"      ENDIF.
"*     EoC - NPSCC 32615 Set Editable false for large contract having change lock

"*/.. RKROADA - 26/10/2018 -Bug NPSCC-16755 - GLOBUS created contracts show with version number 2 in the app despite being the first version
"      IF ls_header-version_type = space AND ls_header-version_no IS NOT INITIAL.
"        er_entity-version_no = ls_header-version_no - 1.
"      ENDIF.

"      CALL FUNCTION 'BBP_PD_CONVERT_DATETIME_TO_TS'
"        EXPORTING
"          iv_date       = sy-datum
"          iv_time       = lv_time
"          iv_time_zone  = sy-zonlo
"        IMPORTING
"          ev_timestamp  = lv_date
"        EXCEPTIONS
"          convert_error = 1
"          OTHERS        = 2.

"      IF sy-subrc NE 0.
"        CLEAR lv_date.
"      ENDIF.


"      SELECT SINGLE companyname
"        FROM zcompcodes
"        WHERE companyshort EQ @ls_header-co_code
"        INTO @er_entity-co_code_txt.

"      IF sy-subrc NE 0.
"        CLEAR er_entity-co_code_txt.
"      ENDIF.
"*} EOC - RKORADA - US 2971

"*/.. Get commodity code from CDS view.
"      IF  er_entity-commodity_code IS NOT INITIAL .    "--By Nihar for Blank Comm_code

"        SELECT SINGLE categorydesc
"          FROM zcommcode                             "Zcomm_code
"          WHERE categoryid EQ @er_entity-commodity_code
"                INTO @DATA(lv_commodity_desc).
"        IF sy-subrc EQ 0.
"          er_entity-commodity_desc = lv_commodity_desc.
"        ENDIF.
"      ENDIF.

"      MOVE : ls_header-pmnttrms      TO er_entity-payment_terms ,   "--TSACHAN US -2969 assign payterm terms
"*             lv_longtext             TO er_entity-longtext, "US# 13378 by SWDENDI

"*"--{ BOC - SP28_US# 7898-Assign Incoterms/transport terms on header level  - By Nihar
"             ls_header-incoterm_key  TO er_entity-incoterm_key ,
"             ls_header-incoterm_loc  TO er_entity-incoterm_loc  .

"      CLEAR : lw_data, lv_longtext .      "-- Reuse for Payemntterm longtext/Incoterms Longtext
"      SELECT SINGLE *
"        FROM bbpc_incoterms_t
"        INTO @DATA(lw_incoterm_data)
"        WHERE language     = @sy-langu
"          AND incoterm_key = @ls_header-incoterm_key .

"      IF sy-subrc = 0.
"        er_entity-incoterm_shorttext = lw_incoterm_data-description .
"      ENDIF.

"*      lo_cls->get_payterm_incoterm_longtext(  "US# 13378 by SWDENDI
"*              EXPORTING im_incoterm_id       = ls_header-incoterm_key
"*              IMPORTING ex_incoterm_longtext = lv_longtext ).
"*
"*      er_entity-incoterm_longtext = lv_longtext.
"*"--} EOC - SP28_US# 7898-Assign Incoterms/transport terms on header level  - By Nihar

"**"--{ BOC - SP29_US# 2971-Legal Entity (CompCode/Comp Name)  - By Nihar
"*      MOVE : ls_header-co_code TO er_entity-co_code .      "-- Commented by Nihar, as someone has again added same code above
"**"--} EOC - SP29_US# 2971-Legal Entity (CompCode/Comp Name)  - By Nihar

"*  BoC - NPSCC 30740 Error tab for large contracts - temp soln
"      IF er_entity-contracttype EQ 'ZDTL'.
"        IF er_entity-ctr_status EQ 'E0004' OR "Error in Upload Excel/CTR Creation issues
"           er_entity-ctr_status EQ 'E0014'. "AVoB Failed "NPSCC-30234 Handle AvoB error for Large Contracts
"          er_entity-error_text = TEXT-021. "'Please check excel in attachment section for more details'.
"        ENDIF.
"      ENDIF.
"*  EoC - NPSCC 30740 Error tab for large contracts


"*{  BOC SP25-2954_Add Internal and External Notes on Header and Item Level - By Nihar
"*""==={-B-SP36-US# 11266_CTR:Enable text features from C8 for NPM and PM contracts- By NIhar-10May18
"*"-- Below code commented as we can have mulitple rows of data for text type HTXT ,
"*"-- so need to have LOOP~ENDLOOP.
"      IF lt_longtext[] IS NOT INITIAL.

"        LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_htxt>)
"          WHERE guid EQ ls_header-guid
"            AND tdid = 'HTXT'.

"          CONCATENATE er_entity-supplier_text <fs_htxt>-tdline
"          INTO er_entity-supplier_text RESPECTING BLANKS.
"        ENDLOOP.

"*"===}-E-SP36-US# 11266_CTR:Enable text features from C8 for NPM and PM contracts- By NIhar-10May18
"**** Begin of change US 3073 by SHNOOLA on 28-12-2017
"* Cancellation reason should get stored in the internal note in contract header
"*"==Commenting this below code bcause the canelation reason is displayed only partial
"*"==Because of the read statement----By TTHIRUM.

"        LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_hrej>)  "--{B--Insert by TTHIRUM for US-12311
"          WHERE guid EQ ls_header-guid AND tdid = 'HREJ'.

"          CONCATENATE er_entity-cancel_reason <fs_hrej>-tdline
"          INTO er_entity-cancel_reason.
"        ENDLOOP.                                               "--{E--Insert by TTHIRUM for US-12311
"**** End of change US 3073 by SHNOOLA on 28-12-2017
"*{ BOC - RKORADA - US# 7861 - Show negative quality feed back
"*       Pass the text only if the document is in 'Quality Check failed' status
"        IF er_entity-ctr_status = 'E0004'.           " VMANCHA BUG#18314
"          IF line_exists( lt_longtext[ guid = ls_header-guid tdid = 'ZAPF' ] ).
"            LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_qcf>)
"              WHERE guid = ls_header-guid AND tdid = 'ZAPF'.
"              IF <fs_qcf>-tdformat EQ '*'.
"                CONCATENATE er_entity-error_text <fs_qcf>-tdline
"                  INTO er_entity-error_text.
"              ELSEIF <fs_qcf>-tdformat EQ ' '.
"                CONCATENATE er_entity-error_text'#'
"                  INTO er_entity-error_text.
"              ENDIF.
"            ENDLOOP.
"            CONCATENATE TEXT-016 er_entity-error_text
"            INTO er_entity-error_text SEPARATED BY cl_abap_char_utilities=>newline.
"          ELSEIF line_exists( lt_longtext[ guid = ls_header-guid tdid = 'ZKDF' ] ).
"            LOOP AT lt_longtext ASSIGNING <fs_qcf>
"              WHERE guid = ls_header-guid AND tdid = 'ZKDF'.
"              IF <fs_qcf>-tdformat EQ '*'.
"                CONCATENATE er_entity-error_text <fs_qcf>-tdline
"                  INTO er_entity-error_text.
"              ELSEIF <fs_qcf>-tdformat EQ ' '.
"                CONCATENATE er_entity-error_text '#'
"                  INTO er_entity-error_text.
"              ENDIF.
"            ENDLOOP.
"            CONCATENATE TEXT-015 er_entity-error_text
"            INTO er_entity-error_text SEPARATED BY cl_abap_char_utilities=>newline.
"          ELSEIF line_exists( lt_longtext[ guid = ls_header-guid tdid = 'ZQCF' ] ).
"            LOOP AT lt_longtext ASSIGNING <fs_qcf>
"              WHERE guid = ls_header-guid AND tdid = 'ZQCF'.
"              IF <fs_qcf>-tdformat EQ '*'.
"                CONCATENATE er_entity-error_text <fs_qcf>-tdline
"                  INTO er_entity-error_text.
"              ELSEIF <fs_qcf>-tdformat EQ ' '.
"                CONCATENATE er_entity-error_text '#'
"                  INTO er_entity-error_text.
"              ENDIF.
"            ENDLOOP.
"            CONCATENATE TEXT-014 er_entity-error_text
"            INTO er_entity-error_text SEPARATED BY cl_abap_char_utilities=>newline.
"**BOC_US#NPSCC-25669_BY SOPABBA_RPC: timewise retroactive Price Change is not allowed (no plant check)
"          ELSEIF line_exists( lt_longtext[ guid = ls_header-guid tdid = 'ZRPC' ] ).
"            LOOP AT lt_longtext ASSIGNING <fs_qcf>
"              WHERE guid = ls_header-guid AND tdid = 'ZRPC'.
"              IF <fs_qcf>-tdformat EQ '*'.
"                CONCATENATE er_entity-error_text <fs_qcf>-tdline
"                  INTO er_entity-error_text SEPARATED BY space.
"              ELSEIF <fs_qcf>-tdformat EQ ' '.
"                CONCATENATE er_entity-error_text '#'
"                  INTO er_entity-error_text.
"              ENDIF.
"            ENDLOOP.
"*            CONCATENATE TEXT-018 er_entity-error_text "US# 30364 by SWDENDI
"*            INTO er_entity-error_text SEPARATED BY cl_abap_char_utilities=>newline.
"          ENDIF.
"**EOC_US#NPSCC-25669_BY SOPABBA_RPC: timewise retroactive Price Change is not allowed (no plant check)
"        ENDIF.                                                         " VMANCHA BUG#18314
"*} EOC - RKORADA - US# 7861 - Show negative quality feed back

"*--{BOC--SP_48-US_17060 Approval box rejection comment BY--TTHIRUM
"        IF er_entity-ctr_status EQ 'I1016'.
"          LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_approver_comment>)
"            WHERE guid EQ ls_header-guid AND tdid = 'ZABT'.
"            CONCATENATE er_entity-approver_comments <fs_approver_comment>-tdline
"              INTO er_entity-approver_comments.
"          ENDLOOP.
"        ENDIF.
"*--}EOC--SP_48-US_17060 Approval box rejection comment BY--TTHIRUM

"      ENDIF.      "--Endif for IF lt_longtext[] IS NOT INITIAL.
"*}  EOC SP25-2954_Add Internal and External Notes on Header and Item Level - By Nihar
"*---------------------------------------------------------------------------------
"      er_entity-req_supplier_rating = ls_header-ztrig_rate_req.  " By Shenvia for US NPSCC-28782

"*      NPSCC-27487 :Display reference RFx number in case contract is created from RFx
"      er_entity-rfx_reference_flag = ls_header-ps_selprom_block.  " By SHENVIA for US NPSCC-27487

"    ENDIF.
"* Deleting the duplicate suppliers from the partner table and keeping only the activated one
"    IF lt_partner IS NOT INITIAL.
"      SORT lt_partner  BY partner_guid.
"      SELECT partner_guid, disabled
"      FROM crmd_partner
"      FOR ALL ENTRIES IN @lt_partner
"      WHERE partner_guid EQ @lt_partner-partner_guid
"      INTO TABLE @DATA(lt_partner_del).
"      IF sy-subrc IS INITIAL.
"        LOOP AT lt_partner_del ASSIGNING FIELD-SYMBOL(<fs_partner_del>).
"          READ TABLE lt_partner ASSIGNING FIELD-SYMBOL(<fs_partner_a>) WITH KEY partner_guid = <fs_partner_del>-partner_guid BINARY SEARCH.
"          IF sy-subrc IS INITIAL AND <fs_partner_del>-disabled EQ 'X'.
"*            Delete the partner if the disable field is checked
"            DELETE lt_partner WHERE partner_guid = <fs_partner_del>-partner_guid.
"          ENDIF.
"        ENDLOOP.
"      ENDIF.
"    ENDIF.

"*   Fetch the supplier from the partner table
"    SORT lt_partner BY partner_fct.
"    READ TABLE lt_partner ASSIGNING FIELD-SYMBOL(<fs_partner>) WITH KEY partner_fct = '00000019'
"    BINARY SEARCH.
"    IF sy-subrc = 0.
"      ls_supplier = <fs_partner>-partner_id.
"*     convert the supplier to SAP internal foemat
"      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"        EXPORTING
"          input  = ls_supplier
"        IMPORTING
"          output = ls_supplier.

"    ENDIF.

"*   If the supplier is not initial,
"*   fetch the supplier guid from but000 table
"*   and assign it to lt_partner table
"*   With the address number of the supplier, fetch the supplier language
"*   and populate the fiori field for the supplie language
"    IF ls_supplier IS NOT INITIAL.
"      er_entity-supplier = ls_supplier.
"      er_entity-language_key = ls_header-zlanguage.
"*      Begin of commetns by KAUSING*vforge fix*20/09/2019
"*      SELECT SINGLE sptxt INTO er_entity-language
"*        FROM t002t
"*        WHERE spras = sy-langu
"*        AND sprsl = er_entity-language_key.
"*      End of commetns by KAUSING*vforge fix*20/09/2019
"*      Begin of changes by KAUSING*20/09/2019
"      IF line_exists( lt_t002tx[ spras = sy-langu sprsl = er_entity-language_key ] ).
"        er_entity-language = lt_t002tx[ spras = sy-langu sprsl = er_entity-language_key ]-sptxt.
"      ELSE.
"        CLEAR er_entity-language .
"        er_entity-language = c_english.
"        er_entity-language_key = 'E'.
"        er_entity-supplier = ls_supplier.
"      ENDIF.
"*     End of changes by KAUSING*20/09/2019

"*   BOC by SHENVIA for US NPSCC-28254 (Second Output Language)
"      er_entity-second_language_key = ls_header-ps_wh_ind.
"      IF line_exists( lt_t002tx[ spras = sy-langu sprsl = er_entity-second_language_key ] ).
"        er_entity-second_language = lt_t002tx[ spras = sy-langu sprsl = er_entity-second_language_key ]-sptxt.
"      ENDIF.
"*   EOC by SHENVIA for US NPSCC-28254 (Second Output Language)

"*     Begin of commetns by KAUSING*vforge fix*20/09/2019
"*      IF sy-subrc NE 0.
"*        CLEAR er_entity-language .
"*        er_entity-language = c_english.
"*        er_entity-language_key = 'E'.
"*        er_entity-supplier = ls_supplier.
"*      ENDIF.
"*    End of commetns by KAUSING*vforge fix*20/09/2019
"    ENDIF.      "-- Added Nihar  -- END

"    IF er_entity-supplier IS NOT INITIAL.
"      SELECT SINGLE name_org1 , zsupplglbid, zhotai
"        INTO ( @er_entity-supplier_name , @er_entity-global_supplier , @er_entity-hotai_ippan_flag )
"        FROM but000
"        WHERE partner = @er_entity-supplier.
"      IF sy-subrc NE 0.
"        CLEAR : er_entity-supplier_name,
"                er_entity-global_supplier,
"                er_entity-hotai_ippan_flag.
"      ENDIF.

"    ENDIF.

"**/.. Read responsible buyer details.
"*    READ TABLE lt_orgdata ASSIGNING FIELD-SYMBOL(<fs_orgdata>) INDEX 1.
"*    IF sy-subrc EQ 0.
"*      lv_purch_grp  = <fs_orgdata>-proc_group_id.
"*    ENDIF.
"*
"*    CREATE OBJECT lo_info.
"*    CALL METHOD lo_info->get_buyer_from_purch_group
"*      EXPORTING
"*        iv_purch_grp = lv_purch_grp
"*      IMPORTING
"*        ev_buyer_id  = er_entity-responsible_buyer.
"**{ BOC - RKORADA- NPSCC-16754 : Names of users with role "Virtual Buyer" do not show in the contract app
"*    SELECT name_first AS firstname, name_last AS lastname
"*      FROM v_usr_name
"*      WHERE bname EQ @er_entity-responsible_buyer
"*      ORDER BY bname
"*      INTO @ls_buyer
"*      UP TO 1 ROWS.
"*    ENDSELECT.
"**} EOC - RKORADA- NPSCC-16754 : Names of users with role "Virtual Buyer" do not show in the contract app
"*    IF sy-subrc EQ 0.
"*      er_entity-buyer_firstname = ls_buyer-firstname.
"*      er_entity-buyer_lastname = ls_buyer-lastname.
"*      CONCATENATE ls_buyer-firstname
"*                  ls_buyer-lastname
"*             INTO er_entity-buyer_fullname SEPARATED BY space .   "--SP31_US#9620_ Added by Nihar
"*    ENDIF.
"*=={BOC- SP-34_US-12091 Fiori App PC: Activate Quick view card
"*/..To get responsible buyer email address
"    IF er_entity-responsible_buyer IS NOT INITIAL.
"      SELECT SINGLE a~name_text, b~smtp_addr
"        FROM v_username AS a
"        INNER JOIN adr6 AS b
"        ON a~persnumber = b~persnumber
"        INTO ( @er_entity-buyer_fullname, @er_entity-email_address )
"        WHERE a~bname EQ @er_entity-responsible_buyer.
"      IF sy-subrc NE 0.
"        CLEAR er_entity-email_address.

"      ENDIF.
"    ENDIF.
"*   BOC SRINIV US NPSCC 28926
"    IF er_entity-operative_buyer IS NOT INITIAL.
"      SELECT SINGLE a~name_text, b~smtp_addr
"        FROM v_username AS a
"        INNER JOIN adr6 AS b
"        ON a~persnumber = b~persnumber
"        INTO ( @er_entity-operative_buyer_fullname,
"         @er_entity-operative_buyer_email_addr )
"        WHERE a~bname EQ @er_entity-operative_buyer.
"      IF sy-subrc NE 0.
"        CLEAR er_entity-operative_buyer_email_addr.
"      ENDIF.
"    ENDIF.
"*   EOC SRINIV US NPSCC 28926
"*==}EOC- SP-34_US-12091 Fiori App PC: Activate Quick view card

"*/..{--BOC SP_38-US3041/2963 WV/DV supplier declaration check
"*/.. END - Read responsible buyer details.

"*    lw_attr_list-attr_id = 'Z_BU'.
"*    APPEND lw_attr_list TO lt_attr_list.
"*    lw_attr_list-attr_id = 'Z_WERKS'.
"*    APPEND lw_attr_list TO lt_attr_list.
"*
"*
"*    lv_buyer = er_entity-responsible_buyer.
"*
"*    CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"*      EXPORTING
"*        iv_user                 = lv_buyer
"*        it_attr_list            = lt_attr_list
"*      IMPORTING
"*        et_attr_dft             = lt_attr_value
"*        ev_attr_dft_single      = lv_attr_single
"*      EXCEPTIONS
"*        object_id_not_found     = 1
"*        no_attributes_requested = 2
"*        attributes_read_error   = 3
"*        OTHERS                  = 4.
"*    IF sy-subrc IS INITIAL.
"*      SORT lt_attr_value BY attr_id.
"*      READ TABLE  lt_attr_value ASSIGNING FIELD-SYMBOL(<fs_attr_val>)
"*        WITH KEY attr_id = 'Z_BU' BINARY SEARCH.
"*      IF sy-subrc EQ 0.
"*        lv_bu = <fs_attr_val>-value .
"*        IF lv_bu = '100'.                      "--SP38_CTR_3026/12743_IPS flag
"*          er_entity-results_ips_flag = 'X' .   "-- Results Section is applicable only for IPS Buyer
"*        ENDIF.
"*      ENDIF.

"*      READ TABLE lt_attr_value ASSIGNING <fs_attr_val>
"*        WITH KEY attr_id = 'Z_WERKS' BINARY SEARCH.
"*      IF sy-subrc EQ 0.
"*        lv_buyer_loc = <fs_attr_val>-value.
"** BOC { US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"*        SELECT SINGLE ext_locno, company_code
"*          FROM bbp_locmap
"*          INTO @DATA(ls_cocode)
"*          WHERE ext_locno = @lv_buyer_loc.
"*        IF sy-subrc <> 0.
"*         CLEAR er_entity-co_code.
"*        ENDIF.
"** EOC } US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form
"*      ENDIF.
"* BOC { US# 20849 by SWDENDI Switch to include/exclude GPCs from PC Output Form

"**/..Get the buyer's country
"*      SELECT a~country UP TO 1 ROWS
"*        FROM adrc AS a INNER JOIN but020 AS b
"*        ON a~addrnumber = b~addrnumber
"*        INNER JOIN bbp_locmap AS c ON c~partner_no = b~partner
"*        INTO @lv_buyer_country
"*        WHERE c~ext_locno EQ @lv_buyer_loc.
"*      ENDSELECT.
"*
"*      IF sy-subrc EQ 0.
"*        IF ( lv_bu = 'IPS' OR lv_bu = '100' ) AND lv_buyer_country = 'DE' .
"**        IF ls_header-Zwv_relevant EQ 'X' OR ls_header-Zwv_relevant EQ ' '.
"*          "--SP38-US#3041 WV/DV supplier declaration check By-TTHIRUM
"*          er_entity-wv_disp_flag = 'X'.
"**        ENDIF.
"*        ELSE.
"*          er_entity-wv_disp_flag = ' '.
"*        ENDIF.
"*      ENDIF.

"*    ENDIF.

"    MOVE: ls_header-zwv_relevant TO er_entity-wv_releveant,
"          ls_header-zservl_key TO er_entity-zservl_key.   ""--SP41-US# 14629-_By Nihar
"*/..}--EOC SP_38-US3041/2963 WV/DV supplier declaration check


"*--{BOC-SP_48-US_16951 Include supplier rejection reason in supplier response section of PC BY-TTHIRUM

"    IF er_entity-ctr_status EQ 'E0007' OR er_entity-ctr_status EQ 'E0008' OR
"      er_entity-ctr_status EQ 'E0018' OR "npscc 30967*KAUSING
"      er_entity-ctr_status EQ 'E0017' OR "Reservation Reviewed.       " SHENVIA for US NPSCC-26265
"      er_entity-ctr_status EQ 'E0016'. " Confirmed with Reservation   " SHENVIA for US NPSCC-26265
"*
"      TYPES: rty_guid TYPE RANGE OF GUID.

"      DATA: ls_qte_header_det TYPE bbp_pds_quot_header_d,
"            lv_timestamp      TYPE bbp_time_stamp,
"            lv_convert_date   TYPE bbp_date,
"            rt_guid           TYPE RANGE OF GUID,
"            lt_qte_longtext   TYPE TABLE OF bbp_pds_longtext.

"      DELETE lt_header_rel_doc WHERE objtype_a NE 'BUS2200'.
"      SORT lt_header_rel_doc BY objtype_a.

"      rt_guid = VALUE rty_guid( FOR ls_quote_guid IN lt_header_rel_doc
"                                ( sign = 'I' option = 'EQ' low = ls_quote_guid-guid_b ) ).

"      SELECT  a~guid              AS doc_guid,
"              a~object_id         AS doc_no,
"              a~object_type       AS doc_type,
"              a~changed_at        AS changed_at
"      FROM zsr_ctrresp( p_object_type  = 'BUS2202',
"                        p_stat_profile = 'ZCQ' ) AS a
"      WHERE a~guid IN @rt_guid
"        AND a~object_id IS NOT NULL   "Vforge by SWDENDI
"        AND a~ctr_num IS NOT NULL
"      INTO TABLE @DATA(lt_quote_details).
"      IF sy-subrc EQ 0.
"        SORT lt_quote_details BY changed_at DESCENDING.
"      ENDIF.

"      IF er_entity-ctr_status EQ 'E0017' OR "Reservation Reviewed.
"         er_entity-ctr_status EQ 'E0016'. " Confirmed with Reservation
"        CLEAR : er_entity-supplier_name, er_entity-supp_reason.
"      ENDIF.

"      READ TABLE lt_quote_details ASSIGNING FIELD-SYMBOL(<fs_quote_details>) INDEX 1.
"      IF sy-subrc EQ 0.
"        CALL FUNCTION 'BBP_PD_QUOT_GETDETAIL'
"          EXPORTING
"            i_guid     = <fs_quote_details>-doc_guid
"          IMPORTING
"            e_header   = ls_qte_header_det
"          TABLES
"            e_longtext = lt_qte_longtext.

"        lv_timestamp = ls_qte_header_det-changed_at.

"        CALL FUNCTION 'BBP_PDH_CONVERT_TS2DT'
"          EXPORTING
"            iv_timestamp  = lv_timestamp
"*           IV_TIMESTAMPL =
"            iv_time_zone  = sy-zonlo
"          IMPORTING
"            ev_date       = lv_convert_date
"*           EV_TIME       =
"          EXCEPTIONS
"            convert_error = 1
"            OTHERS        = 2.
"        IF sy-subrc <> 0.
"          CLEAR: lv_convert_date.
"        ENDIF.


"        IF er_entity-ctr_status EQ 'E0007'.
"          er_entity-supp_date = ls_qte_header_det-changed_at. " By SHENVIA for Bug : NPSCC-28401 " to display date in timestamp

"          LOOP AT lt_qte_longtext ASSIGNING FIELD-SYMBOL(<fs_longtext>)
"            WHERE tdid = 'REMA'.
"            CONCATENATE er_entity-supp_reason <fs_longtext>-tdline
"                   INTO er_entity-supp_reason.
"          ENDLOOP.
"        ENDIF.
"        IF er_entity-ctr_status = 'E0008' AND er_entity-supp_conf_date IS INITIAL. "Bug# 28599
"          er_entity-supp_date = ls_qte_header_det-changed_at.
"        ENDIF.
"      ENDIF.


"* Start of Changes By SHENVIA for US NPSCC-26265
"      IF er_entity-ctr_status EQ 'E0017' OR "Reservation Reviewed.
"         er_entity-ctr_status EQ 'E0016'. " Confirmed with Reservation
"*       Supplier name
"        CLEAR : er_entity-supplier_name, er_entity-supp_reason, er_entity-supplier_resp_date.

"        DATA : lt_comment TYPE TABLE OF zfio_ctr_usertext.

"        lcl_ctr_app->get_db_texts_without_db_format(
"            EXPORTING im_ctr_header_guid = lv_guid
"                      im_mode            = 'HEADER'
"            IMPORTING ex_texts           = lt_comment ).

"        SORT lt_comment BY tdid ASCENDING.
"        DELETE ADJACENT DUPLICATES FROM lt_comment COMPARING tdid ." ALL FIELDS.

"        DATA(ls_comment) = COND #( WHEN line_exists( lt_comment[ tdid = 'CONR' ] )
"                           THEN lt_comment[ tdid = 'CONR' ] ).

"        IF ls_comment IS NOT INITIAL.

"          er_entity-supplier_resp_date = ls_comment-timestamp.
"          er_entity-supp_reason = ls_comment-comment.

"*    Display Supplier name
"          IF ls_comment-uname IS NOT INITIAL.

"            SELECT a~partner2,a~zportal_x_id,a~zcovisint_id,
"               b~name_last , b~name_first
"              FROM but051 AS a
"              INNER JOIN but000 AS b ON a~partner2  EQ b~partner
"              WHERE a~zportal_x_id EQ @ls_comment-uname
"              INTO TABLE @DATA(lt_covisint).
"            IF sy-subrc EQ 0.
"              DATA(ls_covisint) = lt_covisint[ 1 ].
"              er_entity-supplier_name = |{ ls_covisint-name_last } { ls_covisint-name_first }|.
"            ENDIF.
"          ENDIF.

"        ENDIF.

"**************************  For E0017  ******************************

"        DATA(ls_comment1) = COND #( WHEN line_exists( lt_comment[ tdid = 'RWRB' ] )
"                           THEN lt_comment[ tdid = 'RWRB' ] ).

"        IF ls_comment1 IS NOT INITIAL.

"          SELECT name_first AS firstname, name_last AS lastname
"                 FROM v_usr_name
"                 WHERE bname EQ @ls_comment1-uname
"                 INTO TABLE @DATA(lt_buyer1).

"          IF sy-subrc EQ 0.
"*        Buyer response
"            DATA(ls_buyer1) = lt_buyer1[ 1 ].
"            er_entity-buy_review_date = ls_comment1-timestamp.
"            er_entity-buy_review_comt = ls_comment1-comment.
"            er_entity-review_buyer_name = |{ ls_buyer1-firstname } { ls_buyer1-lastname }|.
"          ENDIF.
"        ENDIF.

"      ENDIF.
"* End of Changes By SHENVIA for US NPSCC-26265

"    ENDIF.
"*--}EOC-SP_48-US_16951 Include supplier rejection reason in supplier response section of PC BY-TTHIRUM

"*--{BOC-SP_48-US_17060 Include approver's rejection comment By--TTHIRUM
"    IF er_entity-ctr_status EQ 'I1016'.
"      CLEAR: lv_timestamp, lv_convert_date.
"      lv_timestamp = ls_header-changed_at.
"      CALL FUNCTION 'BBP_PDH_CONVERT_TS2DT'
"        EXPORTING
"          iv_timestamp  = lv_timestamp
"*         IV_TIMESTAMPL =
"          iv_time_zone  = sy-zonlo
"        IMPORTING
"          ev_date       = lv_convert_date
"*         EV_TIME       =
"        EXCEPTIONS
"          convert_error = 1
"          OTHERS        = 2.
"      IF sy-subrc <> 0.
"        CLEAR: lv_convert_date.
"      ENDIF.

"      er_entity-approver_date = lv_convert_date.
"    ENDIF.
"*--}EOC-SP_48-US_17060 Include approver's rejection comment By--TTHIRUM
"*{ BOC RKORADA - SP_49-NPSCC-13058 Show AVoB on contract document level
"* Below code is commented Contract_target_Value field is used as total value field for both
"*    PM and NPM contracts  - US18261_ BY SOPABBA
"*    IF ls_header-process_type = 'PM'.
"*      er_entity-total_avob = ls_header-Zavob_value.               " Venky
"*    ENDIF.

"*} EOC RKORADA - SP_49-NPSCC-13058 Show AVoB on contract document level

"* Begin of changes by KAUSING*NPSCC-24077 Quota Shift Create new contract from quota app
"* Check if action value is 'QUOTA_CREATE'
"*&--------------------------------------------------------------------&*
"    "Begin -- NPSCC-30571 -- Terms -- JVASUDE -- 25th September
"    IF ls_header-process_type = 'ZDTL'.
"      er_entity-plantassign_ind = 'H'.
"    ENDIF.
"    "End -- NPSCC-30571 -- Terms -- JVASUDE -- 25th September
"*&--------------------------------------------------------------------&*
"    DATA: lv_auth_flag TYPE char1.
"    CLEAR lv_auth_flag.

"    CALL FUNCTION 'ZAUTH_CHECK_USER'
"      EXPORTING
"        i_uname     = sy-uname
"*       i_authobject = lc_contguestauth
"      IMPORTING
"        e_auth_flag = lv_auth_flag.

"    MOVE: lv_auth_flag TO er_entity-display_access.
"*    IF line_exists( it_key_tab[ name = 'Action' ] ) AND
"*        it_key_tab[ name = 'Action' ]-value EQ 'QUOTA_CREATE'.
"**     Clear the below fields
"**     ReleaseOrderContact, ReleaseOrderContactFname, ReleaseOrderContactLname
"**     SuppConPersonEdocFlag, SuppConPersonFname, SuppConPersonId
"**     SuppConPersonLname, Supplier, SupplierName
"*      CLEAR: er_entity-supp_conf_date,
"*             er_entity-supp_conf_num,
"*             er_entity-con_person_edoc_flag,
"*             er_entity-con_person_fname,
"*             er_entity-con_person_id,
"*             er_entity-con_person_lname,
"*             er_entity-supplier,
"*             er_entity-supplier_name,
"*             er_entity-supplier_text,
"*             er_entity-supp_date,
"*             er_entity-supp_reason,
"*             er_entity-release_order_contact,
"*             er_entity-release_order_contact_fname,
"*             er_entity-release_order_contact_lname.
"*
"*
"*    ENDIF.
"*End of changes by KAUSING*npscc 24077 Quota Shift Create new contract from quota app



  ENDMETHOD.


  METHOD contractheaderse_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-10-24                                           &*
*& Description: This method is display contracts over list in page 1 &*
*&              PR fiori application                                 &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*---------------------------------------------------------------------*
*& Date       : 13-Feb-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi (TTHIRUM)/Nihar(NRANASI)                  &*
*& Description: SP31_US#9543-                                        &*
*&              Fiori App Contract-Define search/filter criteria     &*
*&              for Contracts Page 1 Storysplit Part1                &*
*---------------------------------------------------------------------*
*---------------------------------------------------------------------*
*& Date       : 26-Feb-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi (TTHIRUM)                                 &*
*& Description: SP34_US#5599-                                        &*
*&              Fiori App Contracts Personalize list view page 1     &*
*---------------------------------------------------------------------*

    DATA: es_ctr_list   TYPE zcl_zfio_mng_ctr_mpc=>tt_contractheader,
          lc_contracts  TYPE REF TO zcl_contract_app,
          lv_ctr_no     TYPE crmt_object_id_db,
********** Begin of change for sorting by AMISIN*******************
          lt_sort_order TYPE abap_sortorder_tab,
          ls_sort_order TYPE abap_sortorder,
          lt_orderby    TYPE /iwbep/t_mgw_tech_order.
********** End of change for sorting by AMISIN*******************

    FIELD-SYMBOLS : <fs_filter> TYPE  /iwbep/s_mgw_select_option.

    UNASSIGN <fs_filter>.
    READ TABLE it_filter_select_options ASSIGNING <fs_filter> WITH KEY property = 'ContractId' BINARY SEARCH.

    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_ctr>) INDEX 1.         " Interm fix
      IF sy-subrc EQ 0.
        MOVE <fs_ctr>-low TO lv_ctr_no.
      ENDIF.
    ENDIF.

    DATA(lt_select_option2) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    IF it_filter_select_options IS NOT INITIAL.

      DATA(lt_select_option) = it_filter_select_options.

    ELSEIF it_filter_select_options IS INITIAL AND iv_filter_string IS NOT INITIAL.
      " Cound not visulaize filters
      RETURN .

    ENDIF.

    CREATE OBJECT lc_contracts.
*"-- All filter logic for the Filter values on frontend is applied inside below method to fetch COntracts
*"--  which match the filtere values .
    "CALL METHOD lc_contracts->get_contract_list
"      EXPORTING
"        im_contract_num   = lv_ctr_no
"        is_paging         = is_paging
"        it_filter_options = lt_select_option "it_filter_select_options      "SP-31 US#9614  (By TTHIRUM)
"        im_search_string  = iv_search_string              "SP-31 US#9614  (By Nihar)
"      IMPORTING
"        et_contracts_list = et_entityset.

*/.. US# 2964 - RKORADA - Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).
*{ BOC - RKORADA - NPSCC-27869 Optimization of count call - Dont send result set to FIORI
    es_response_context-count = lines( et_entityset ).

    DATA(lv_buyer) = VALUE #( lt_select_option[ property = 'ResponsibleBuyer' ]-select_options[ 1 ]-low  OPTIONAL ).

    IF lv_buyer EQ 'COUNT'.
      REFRESH et_entityset.
      RETURN.
    ENDIF.
*} EOC - RKORADA - NPSCC-27869 Optimization of count call - Dont send result set to FIORI
*{==BOC SP_34-US_5599 Fiori App Contracts Personalize list view page 1 By-TTHIRUM

********** Start of change for sorting by AMISIN*******************
* Sorting
    lt_orderby = io_tech_request_context->get_orderby( ).
    IF lt_orderby IS INITIAL.
*     Sorting ET_EntitySet By Default with contract number
*      SORT et_entityset BY object_id DESCENDING .
      SORT et_entityset BY creation_date_time DESCENDING .                "SP_38-US_13240 By TTHIRUM
    ENDIF.

    LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
      CLEAR ls_sort_order.
      IF <fs_orderby>-order EQ 'desc'.
        ls_sort_order-descending = 'X'.
      ENDIF.
****Begin of change US 18114 BY SHNOOLA ON 11-01-2019
      IF <fs_orderby>-property = 'CONTRACT_TARGET_VALUE'.
        ls_sort_order-name = 'EUR_TARGET_VALUE'.
      ELSE.
****End of change US 18114 BY SHNOOLA ON 11-01-2019
        ls_sort_order-name = <fs_orderby>-property.
      ENDIF.
      APPEND ls_sort_order TO lt_sort_order.
    ENDLOOP.
    SORT et_entityset BY (lt_sort_order).
********** End of change for sorting by AMISIN*******************

*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.
    ENDIF.  "By SOPABBA Bug# NPSCC-32987
* {Boc SP 58 US# 17023 Add Attribute Division to Filter section by SWDENDI
    IF et_entityset IS NOT INITIAL.

      "SELECT guid, object_id, top_division, top_div_desc
"        FROM zv_ctr_div
"        INTO TABLE @DATA(lt_ctr_div)
"        FOR ALL ENTRIES IN @et_entityset
"        WHERE object_id = @et_entityset-object_id.
"      IF sy-subrc EQ 0 AND lt_ctr_div IS NOT INITIAL.
"        SORT lt_ctr_div BY guid object_id top_division ASCENDING.
"      ENDIF.
*** BOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature

      "SELECT hdr_guid, ps_o_bo_obj_id
"        INTO TABLE @DATA(lt_usr_ld_data)
"          FROM zctr_item_det( p_system_lang = @sy-langu )
"          FOR ALL ENTRIES IN @et_entityset
"          WHERE hdr_guid = @et_entityset-guid.
"      IF sy-subrc EQ 0.
"        SORT lt_usr_ld_data BY hdr_guid ASCENDING.
"        DELETE lt_usr_ld_data WHERE ps_o_bo_obj_id = space .
"      ENDIF.

      DATA: rt_non_released_stat TYPE RANGE OF j_status.
      rt_non_released_stat = VALUE #( ( sign = 'I' option = 'EQ' low = 'E0004'  )    "Error
                           ( sign = 'I' option = 'EQ' low = 'E0014'  )    "Calculating AVoB Failed
                           ( sign = 'I' option = 'EQ' low = 'E0015'  )    "Ready for Release
                           ( sign = 'I' option = 'EQ' low = 'I1009'  )    "Saved
                           ( sign = 'I' option = 'EQ' low = 'I1016'  ) ). "Release Rejected

*** EOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature

      LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity_set>).
        "DATA(lt_ctr_div_temp) = lt_ctr_div[].
"        DELETE lt_ctr_div_temp WHERE guid NE <fs_entity_set>-guid.
"*            DATA(lt_ctr_div_1) = FILTER #( lt_ctr_div USING KEY guid
"*                                                WHERE guid = <fs_entity_set>-guid ).
"        DESCRIBE TABLE lt_ctr_div_temp LINES DATA(lv_lines).
"        IF lv_lines GT '1'.
"          <fs_entity_set>-multi_div_exists = abap_true.
"        ELSEIF lv_lines EQ '1'.
"          DATA(ls_ctr_div) = lt_ctr_div_temp[ 1 ].
"          <fs_entity_set>-top_div_id   = ls_ctr_div-top_division.
"          <fs_entity_set>-top_div_desc = ls_ctr_div-top_div_desc.
"        ENDIF.
"*** BOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature
"        IF line_exists( lt_usr_ld_data[ hdr_guid = <fs_entity_set>-guid ] )
"          AND <fs_entity_set>-version_no EQ space
"          AND <fs_entity_set>-version_type EQ space   "Has never been released in proCure
"          AND <fs_entity_set>-ctr_status IN rt_non_released_stat.  " Check Current version is in non released status.
"          <fs_entity_set>-gl_userleadact = 'X'.
"        ENDIF.
"*** EOC BY MONSING NPSCC-30178 Indicator for contracts migrated from GLOBUS with user-lead transfer feature
      ENDLOOP.
    ENDIF.

* }Eoc SP 58 US# 17023 Add Attribute Division to Filter section by SWDENDI
*    ENDIF.  "By SOPABBA Bug# NPSCC-32987
*/.. US# 2964 - RKORADA - End of logic for paging and lazy loading.
*}==EOC SP_34-US_5599 Fiori App Contracts Personalize list view page 1 By-TTHIRUM

  ENDMETHOD.


  METHOD contractitempart_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-11-07                                           &*
*& Description: This method is display part numbers in F4 help       &*
*&              US# 2980                                             &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*

    DATA : lcl_ctr_app  TYPE REF TO zcl_contract_app,            " Local class from contract application
           lt_filters   TYPE /iwbep/t_mgw_select_option,              " Variable for filters
           lv_srh_es1   TYPE string,                                  " Local variable for ES1 search string
           lv_srh_es2   TYPE string,                                  " Local variable for ES1 search string
           lt_commodity TYPE /iwbep/t_cod_select_options,             " Select Option table for commodity code
           lt_desc      TYPE /iwbep/t_cod_select_options,             " Select option table for description
           lt_part      TYPE /iwbep/t_cod_select_options.             " Select option table for part numbers

    MOVE it_filter_select_options TO  lt_filters.

    SORT lt_filters BY property ASCENDING.
*/.. Read filters for product id from Fiori
    READ TABLE lt_filters
      ASSIGNING FIELD-SYMBOL(<fs_filter>)
      WITH KEY property = 'ProductId' BINARY SEARCH.
    IF sy-subrc EQ 0.
*      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_part>) INDEX 1.
*      IF sy-subrc EQ 0.
*        MOVE <fs_part>-low TO lt_part.
*      ENDIF.
      MOVE <fs_filter>-select_options TO lt_part.
    ENDIF.
*/.. Read filters for ES1 from Fiori
    READ TABLE lt_filters
      ASSIGNING <fs_filter>
      WITH KEY property = 'ES1' BINARY SEARCH.
    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_es1>) INDEX 1.
      IF sy-subrc EQ 0.
        MOVE <fs_es1>-low TO lv_srh_es1.
      ENDIF.

    ENDIF.
*/.. Read filters for ES2 from Fiori
    READ TABLE lt_filters
     ASSIGNING <fs_filter>
     WITH KEY property = 'ES2' BINARY SEARCH.
    IF sy-subrc EQ 0.
      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_es2>) INDEX 1.
      IF sy-subrc EQ 0.
        MOVE <fs_es2>-low TO lv_srh_es2.
      ENDIF.

    ENDIF.
*/.. Read filters for category id from Fiori

    READ TABLE lt_filters
      ASSIGNING <fs_filter>
      WITH KEY property = 'CategoryId' BINARY SEARCH.
    IF sy-subrc EQ 0.
*      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_category_id>) INDEX 1.
*      IF sy-subrc EQ 0.
*        MOVE <fs_category_id>-low TO lt_commodity.
*      ENDIF.
      MOVE <fs_filter>-select_options TO lt_commodity.
    ENDIF.
*/.. Read filters for description from Fiori
    READ TABLE lt_filters
      ASSIGNING <fs_filter>
      WITH KEY property = 'Description' BINARY SEARCH.
    IF sy-subrc EQ 0.
*      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_desc>) INDEX 1.
*      IF sy-subrc EQ 0.
*        MOVE <fs_desc>-low TO lv_desc.
*      ENDIF.
      MOVE <fs_filter>-select_options TO lt_desc.
    ENDIF.

    CREATE OBJECT lcl_ctr_app.

****/.. Calling core contract class for part number search help based on various search fields and global search
***
***    CALL METHOD lcl_ctr_app->get_part_numbers
***      EXPORTING
***        it_srh_part          = lt_part
***        iv_srh_es1           = lv_srh_es1
***        iv_srh_es2           = lv_srh_es2
***        it_commodity         = lt_commodity
***        it_desc              = lt_desc
***        iv_srh_str           = iv_search_string
***        is_paging            = is_paging
***        iv_responsible_buyer = sy-uname
***      IMPORTING
***        et_part_number       = et_entityset.

  ENDMETHOD.


  METHOD contractitemplan_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : KAUSING                                              &*
*& Created    : 2018-01-29                                           &*
*& Description: Changes done for SP25-US#3001 (Contract)             &*
*&         This method is to Read all  plants for Item contract      &*
*&                                                                   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        22-Feb-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Nihar Ranasingh (NRANASI)                            &*
*& Description: Changes done for SP31-US#3012                        &*
*&         Specify Delivery Lot size on Plant level for Items of CTR &*
*& Code changes done in Class-:lcl_contract_app->get_plant_details   &*
*&  to fetch plant details of Items                                  &*
*---------------------------------------------------------------------*
*& Date:        06-Mar-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#8872                             &*
*&              Passing the data based on the CTR head GUID.         &*
*---------------------------------------------------------------------*

*   Data declaration
    DATA : lt_keytab              TYPE /iwbep/t_mgw_name_value_pair,
*           lt_entityset     TYPE TABLE OF Zfio_ctr_hdr_plant_dis,
           lv_plant               TYPE zbbp_location,   "NPSCC 24077*kausing
           lt_entityset           TYPE TABLE OF zfio_ctr_itm_plant_dis,
           lv_ctr_no              TYPE crmt_object_id_db,
           lv_ctr_item_no         TYPE zbbp_item_no,
           lv_ctr_item_guid       TYPE GUID,
           lv_transfer_to_ctr_typ TYPE crmt_process_type_db,         "US# NPSCC-26113_BY SOPABBA
           lcl_contract_app       TYPE REF TO zcl_contract_app,
           lv_ctr_head_guid       TYPE GUID,                            " Venky 8872
           lv_succ_date           TYPE dats,
           lv_valid_from          TYPE dats.

*   Constant declaration

*   Clear local variables
    CLEAR: lt_keytab[], lv_ctr_no, lv_ctr_item_no.

*   Move key tab entries to local internal table
    lt_keytab[] = it_key_tab[].

*   Sort lt_keytab with name
    SORT   lt_keytab[] BY name.

*   Create an instance of the class ZCL_CONTRACT_APP
    CREATE OBJECT lcl_contract_app.

*   Read the table lt_keytab with contract number and item number.
*   Call the method GET_PLANT_DETAILS of the contract class ZCL_CONTRACT_APP
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#8872>
*    READ TABLE lt_keytab  ASSIGNING FIELD-SYMBOL(<fs_keytab>)
*                                    WITH KEY name = lc_contract BINARY SEARCH .
*    IF sy-subrc EQ 0.
*      lv_ctr_no = <fs_keytab>-value .

*  Begin of changes by KASUING*npscc 24077*09/10/2019
*   Check if it is a case of ctr create from quota app
    IF line_exists( it_filter_select_options[ property = 'PlantNo' ] ) AND
      it_filter_select_options[ property = 'PlantNo' ]-select_options[ 1 ]-low IS NOT INITIAL.
      lv_plant = it_filter_select_options[ property = 'PlantNo' ]-select_options[ 1 ]-low.
    ENDIF.
*   End of changes BY KAUSING*npscc 24077*09/10/2019
    IF line_exists( it_filter_select_options[ property = 'Action' ] )." AND (
*   BOC Bug# NPSCC 28016_By SOPABBA
* In case of transfer plant validity should not be passed. to differentiate Copy/Transfer action
* below logic is changed
*      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'TRANSFER' OR
*      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'COPY' ).
*
      IF it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'TRANSFER'.
        DATA(lv_transfer_flag) = 'T'.
      ELSEIF it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'COPY' .
        lv_transfer_flag = 'C'.
      ENDIF.
*   EOC Bug# NPSCC 28016_By SOPABBA
    ENDIF.

    IF line_exists( it_filter_select_options[ property = 'Action' ] )"US# 27757 by Kaushal
      AND it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'PNC'.
      DATA(lv_pnc_flag) = abap_true.
      IF line_exists( it_filter_select_options[ property = 'ValidFrom' ] )."Bug# 28313 by SWDENDI
        lv_succ_date = VALUE #( it_filter_select_options[ property = 'ValidFrom' ]-select_options[ 1 ]-low OPTIONAL ).
      ENDIF.
    ENDIF.

    IF line_exists( it_filter_select_options[ property = 'Action' ] )"US# 29958 by SWDENDI
      AND it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'SUPP_CHANGE'.
      DATA(lv_snc_flag) = abap_true.
      lv_valid_from = VALUE #( it_filter_select_options[ property = 'ValidFrom' ]-select_options[ 1 ]-low OPTIONAL ).
      DATA(lv_quota) = VALUE #( it_filter_select_options[ property = 'Quota' ]-select_options[ 1 ]-low OPTIONAL ).
    ENDIF.
*   Begin of Changes BY SOPABBA_US# NPSCC-26113	Transfer of IPS LiAb type contracts - Plants on Header
    IF lv_transfer_flag EQ 'T'
      AND line_exists( it_filter_select_options[ property = 'ContractType' ] ).
      lv_transfer_to_ctr_typ = VALUE #( it_filter_select_options[ property = 'ContractType' ]-select_options[ 1 ]-low OPTIONAL ).
    ENDIF.
*   End of Changes BY SOPABBA_US# NPSCC-26113	Transfer of IPS LiAb type contracts - Plants on Header

    READ TABLE lt_keytab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
                                   WITH KEY name = 'ContractGuid'
                                   BINARY SEARCH .
    IF sy-subrc EQ 0.
      lv_ctr_head_guid = <fs_keytab>-value .
****** End of Insert by  <VMANCHA> <US#8872>
************************************************************************
*     Read the item number from lt_keytab
      READ TABLE lt_keytab  ASSIGNING FIELD-SYMBOL(<fs_keyitemno>)
*                                    WITH KEY name = lc_itemno
                                    WITH KEY name = 'Guid'
                                    BINARY SEARCH .
      IF sy-subrc IS INITIAL.
*     Pass the item number and fetch the plants assigned to it.
*        MOVE: <fs_keyitemno>-value TO lv_ctr_item_no.
        MOVE: <fs_keyitemno>-value TO lv_ctr_item_guid.

        CALL METHOD lcl_contract_app->get_plant_details
          EXPORTING
            im_ctr_head_guid       = lv_ctr_head_guid                        " Venky 8872
            iv_item_guid           = lv_ctr_item_guid
            im_transfer_flag       = lv_transfer_flag
            im_transfer_to_ctr_typ = lv_transfer_to_ctr_typ            "US# NPSCC-26113_BY SOPABBA
            im_pnc_succ_date       = lv_succ_date                            "Bug# 28313 by SWDENDI
          IMPORTING
            et_plant               = lt_entityset.
*      Begin of changes BY KAUSING*npscc 24077*09/10/2019
        IF lv_plant IS NOT INITIAL.
          DELETE lt_entityset WHERE plant NE lv_plant.
        ENDIF.
*      End of changes by KAUSING*npscc 24077*09/10/2019
        LOOP AT lt_entityset ASSIGNING FIELD-SYMBOL(<fs_entityset>).
          APPEND INITIAL LINE TO et_entityset
          ASSIGNING FIELD-SYMBOL(<fs_entset>).
          MOVE-CORRESPONDING <fs_entityset> TO <fs_entset>.
          MOVE: lv_ctr_item_no TO <fs_entset>-item_no,
                lv_ctr_no      TO <fs_entset>-object_id,
                lv_ctr_item_guid      TO <fs_entset>-item_guid,
                lv_ctr_head_guid TO <fs_entset>-ctr_header_guid.         " Venky 8872

*      Begin of changes BY KAUSING*npscc 24077*09/10/2019
          IF lv_plant IS NOT INITIAL.
*           Plant should bedisplayed as commonn plant.
            CLEAR: <fs_entset>-deviation_id, <fs_entset>-deviation_description.
          ENDIF.
*      End of changes BY KAUSING*npscc 24077*09/10/2019
          "IF lv_pnc_flag EQ abap_true." OR lv_snc_flag = abap_true. "US# 27757 by Kaushal , 29958 by SWDENDI
"            CLEAR: <fs_entset>-zlogistic_supplier, <fs_entset>-zincoterm_key,<fs_entset>-zincoterm_loc,
"                   <fs_entset>-zincoterm_shorttext,<fs_entset>-zincoterm_country_iso,<fs_entset>-zincoterm_country_name,
"                   <fs_entset>-logistic_supplier_name,<fs_entset>-production_location_name,<fs_entset>-zproduction_location,
"                   <fs_entset>-zvat_shipping_country,<fs_entset>-vat_ship_country_name, <fs_entset>-zincoterm_key_ind,
"                   <fs_entset>-incoterm_key_ind_text.
"          ENDIF.
        ENDLOOP.
   "     IF lv_snc_flag = abap_true. "US# 29958 by SWDENDI.
"          DELETE: et_entityset WHERE zvper_end LT lv_valid_from,
"                  et_entityset WHERE zvper_start GT lv_valid_from.
"          MODIFY et_entityset FROM VALUE #( zvper_start = lv_valid_from quota_val = lv_quota epu = abap_false ) TRANSPORTING zvper_start quota_val epu
"          WHERE plant IS NOT INITIAL.
"        ENDIF.
      ENDIF. "item number
    ENDIF.  " Contract number
  ENDMETHOD.


  METHOD contractitemrmsa_create_entity.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Swathi Dendi(SWDENDI)                      &*
*& Created    : 225-Nov-2020                                         &*
*& US         : NPSCC - 31848                                        &*
*& Description: RM Sale: New section and fields needed for the raw   &*
*&              material sales contract (ZRMS)                       &*
*&-------------------------------------------------------------------&*
*---------------------------------------
*&  Data Declarations
*---------------------------------------

    DATA: ls_rmsale_data TYPE zcl_zfio_mng_ctr_mpc=>ts_contractitemrmsale,
          lt_rmsale_data TYPE zcl_zfio_mng_ctr_mpc=>tt_contractitemrmsale.

*****Transform data into the internal structure************
    io_data_provider->read_entry_data(
      IMPORTING
           es_data = ls_rmsale_data ).

    IF ls_rmsale_data IS NOT INITIAL.
      APPEND ls_rmsale_data TO lt_rmsale_data.
* Below method is called to update database
      zcl_contract_app=>item_rm_sale_creation(
        EXPORTING
          im_rmsale_data   =  lt_rmsale_data ).
    ENDIF.
  ENDMETHOD.


  METHOD contractitemrmsa_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Swathi Dendi(SWDENDI)                      &*
*& Created    : 225-Nov-2020                                         &*
*& US         : NPSCC - 31848                                        &*
*& Description: RM Sale: New section and fields needed for the raw   &*
*&              material sales contract (ZRMS)                       &*
*&-------------------------------------------------------------------&*

 "   IF line_exists( it_key_tab[ name = 'Guid' ] ).
"      DATA(lv_item_guid) = CONV crmt_object_guid( it_key_tab[ name = 'Guid' ]-value ).
"      IF lv_item_guid IS NOT INITIAL.
"        SELECT a~item_guid,
"               a~supplier AS supplier_code,
"               a~supplier_contactperson AS con_person_id,
"               a~sales_price,
"               a~currency,
"               b~suppliername AS supplier_name,
"               b~supp_global_id AS global_supplier,
"               c~name_first AS con_person_fname,
"               c~name_last AS con_person_lname
"               FROM zit_rm_sale AS a
"               LEFT OUTER JOIN zsupplist AS b
"                 ON b~supplierid = a~supplier AND language = @sy-langu
"               LEFT OUTER JOIN but000 AS c ON c~partner = a~supplier_contactperson
"          INTO TABLE @DATA(lt_rm_sale)
"          WHERE a~item_guid = @lv_item_guid
"          AND a~supplier IS NOT NULL
"          AND a~del_ind = @abap_false.
"        IF sy-subrc IS INITIAL.
"          SORT lt_rm_sale BY item_guid supplier_code.
"          DELETE ADJACENT DUPLICATES FROM lt_rm_sale COMPARING item_guid supplier_code.
"          et_entityset = CORRESPONDING #( lt_rm_sale ).
"        ELSE.
"          CLEAR lt_rm_sale.
"        ENDIF.
"      ENDIF.
"    ENDIF.
  ENDMETHOD.


  METHOD contractitemset_get_entity.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                                    &*
*& Developer  : Infosys / Aman Jain (AMAJAIN)                                    &*
*& Created    : 2017-11-03                                                        &*
*& Description: This method is to display the collection of contract line items   &*
*&              US 2954                                            &*
*&-------------------------------------------------------------------&*
*&                                                                   &*
* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

*    THIS METHOD IS NO LONGER EXECUTED FOR ITEM DETAILS ,
*    ITEM_ENTITYSET Is being called to get details of all Items together

*  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*&-------------------------------------------------------------------&*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        27-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3007                              &*
*&              Passing the pack term and return term details with    &*
*&              short and long texts                                  &*
*----------------------------------------------------------------------*
*& Date:        09-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for SP34- US#11791                       &*
*&              Passing Comm_Code Description to display on ItemLevel &*
*----------------------------------------------------------------------*
   " DATA: lt_keytab           TYPE /iwbep/t_mgw_name_value_pair,
"          lv_ctr_no           TYPE crmt_object_id_db,
"          lv_ctr_guid         TYPE GUID,
"          lv_ctr_item_guid    TYPE GUID,
"          lv_ctr_item_no      TYPE zbbp_item_no,
"          lv_ctr_item         TYPE bbp_item_no,
"          lo_pdo_model_mgnr   TYPE REF TO /sapsrm/if_pdo_model_access,
"          ls_read_flags       TYPE bbps_detail_requested,
"          lv_purch_grp        TYPE hrobjid,
"          lw_attr_list        TYPE bbp_attr_list,
"          lv_es1_es2(15)      TYPE c,
"          lv_attr_single      TYPE bbps_attr_single,
"          lv_attr_login_buyer TYPE bbps_attr_single,
"          lo_exception        TYPE REF TO /iwbep/cx_mgw_busi_exception,
"          ls_messages         TYPE bapiret2,
"          lt_messgs           TYPE bapiret2_t,
"          lt_conditions       TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          lt_conditions_asc   TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          lt_conditions_desc  TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          ls_pd_header_d      TYPE bbp_pds_ctr_header_d,
"          lv_supplier         TYPE bu_partner,
"          lt_item             TYPE STANDARD TABLE OF bbp_pds_ctr_item_d,
"          lt_partner          TYPE STANDARD TABLE OF bbp_pds_partner,
"          lt_db_icf           TYPE STANDARD TABLE OF bbp_pds_icf_ctr,
"          lt_dis              TYPE TABLE OF bbp_pds_dis,
"          lt_longtext         TYPE STANDARD TABLE OF bbp_pds_longtext,
"          lt_orgdata          TYPE TABLE OF bbp_pds_org,
"          rt_part             TYPE /iwbep/t_cod_select_options,
"          rt_src_itemcode     TYPE RANGE OF zsrc_itemcode, " US# 22830_SOPABBA
"          rt_prod_guid        TYPE RANGE OF tdobname.

"    FIELD-SYMBOLS :    <fs_keytab> TYPE /iwbep/s_mgw_name_value_pair.
"*/..Move the values of internal table it_key_tab to local internal table lt_keytab.
"    MOVE it_key_tab TO lt_keytab.
"    SORT lt_keytab BY name ASCENDING.
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#8872>
"**/..Read internal table lt_keytab with key name equals 'ContractId' and get the value of ContractID
"**..to local variable lv_ctr_no.
"    READ TABLE lt_keytab WITH KEY name = 'ContractGuid' ASSIGNING <fs_keytab> BINARY SEARCH .
"    IF sy-subrc EQ 0.
"      MOVE <fs_keytab>-value TO lv_ctr_guid.
"    ENDIF.
"****** End of Insert by  <VMANCHA> <US#8872>
"************************************************************************
"*/..Read internal table lt_keytab with key name equals 'ItemNo' and get the value of ItemNo
"*..to local variable lv_ctr_item_no.
"    READ TABLE lt_keytab WITH KEY name = 'ItemNo' ASSIGNING <fs_keytab> BINARY SEARCH .
"    IF sy-subrc EQ 0.
"      MOVE <fs_keytab>-value TO lv_ctr_item_no.
"    ENDIF.
"*/..Read internal table lt_keytab with key name equals 'Guid' and get the value of Guid
"*..to local variable lv_ctr_item_guid.
"    READ TABLE lt_keytab WITH KEY name = 'Guid' ASSIGNING <fs_keytab> BINARY SEARCH .
"    IF sy-subrc EQ 0.
"      MOVE <fs_keytab>-value TO lv_ctr_item_guid.
"    ENDIF.

"*/.. Default item when adding an item initially
"* RKORADA
"    IF lv_ctr_guid EQ '0000' OR lv_ctr_guid IS INITIAL OR lv_ctr_item_guid IS INITIAL. "Venky 8872
"*/ RKORADAA
"      MOVE : lv_ctr_no TO er_entity-object_id ,
"             lv_ctr_item_no TO er_entity-number_int,
"             '0'       TO er_entity-disp_number.                        " INSERT - RKORADA - 15/02/2018 NPSCC 10177
"      er_entity-price_unit = '1'.
"      RETURN.
"    ELSE.
"*/.. Check if the item exists in the system?
"*/..Select contract number from the header table crmd_orderadm_h, inner join from the item table crmd_orderadm_i
"*/..where guid equals to the guid(header) in the item table.
"*//.. VForge comments - Standard tables without auth objects
"      SELECT SINGLE number_int INTO lv_ctr_item
"        FROM crmd_orderadm_h AS a
"        INNER JOIN crmd_orderadm_i AS b
"        ON a~guid = b~header
"        WHERE a~guid = lv_ctr_guid                                      " Venky 8872
"        AND b~guid EQ lv_ctr_item_guid.                                 " RKORADA
"      IF sy-subrc NE 0.
"        MOVE : lv_ctr_no TO er_entity-object_id ,
"               lv_ctr_item_no TO er_entity-number_int,
"               '0'       TO er_entity-disp_number.                        " INSERT - RKORADA - 15/02/2018 NPSCC 10177
"        RETURN.
"      ENDIF.

"    ENDIF.
"* BOC{ US# 21678 by SWDENDI Interim filter in PC app for BMBS China
"** Authorization check for Users who can view all docs ignoring below check
"*    AUTHORITY-CHECK OBJECT 'Z_OBJ_EXCP'
"*                 ID 'ZOBJFLTR' FIELD 'N'.
"*    IF sy-subrc IS NOT INITIAL AND lv_ctr_guid IS NOT INITIAL.
"*      CALL METHOD /sapsrm/cl_pdo_model_factory=>get_instance
"*        RECEIVING
"*          eo_instance = lo_pdo_model_mgnr.
"*      IF lo_pdo_model_mgnr IS BOUND.
"*        CLEAR ls_read_flags.
"*        ls_read_flags-orgdata_tab = abap_true.
"**  ** Get the Header Level data
"*        CALL METHOD lo_pdo_model_mgnr->get_detail
"*          EXPORTING
"*            iv_guid          = lv_ctr_guid          " GUID of a CRM Order Object
"*            iv_with_itemdata = 'X'              " Checkbox
"*          IMPORTING
"*            et_orgdata       = DATA(lt_orgdata)       " Table Type Org. Data
"*            es_header        = DATA(ls_header).
"*        IF sy-subrc IS INITIAL AND ls_header IS NOT INITIAL.
"**/.. Read responsible buyer details.
"*          READ TABLE lt_orgdata ASSIGNING FIELD-SYMBOL(<fs_orgdata>) INDEX 1.
"*          IF sy-subrc EQ 0.
"*            lv_purch_grp  = <fs_orgdata>-proc_group_id.
"*          ENDIF.
"*
"*          NEW Zcl_search_help_and_info( )->get_buyer_from_purch_group(
"*            EXPORTING
"*              iv_purch_grp = lv_purch_grp
"*            IMPORTING
"*              ev_buyer_id  = DATA(lv_buyer) ).
"*
"*          CLEAR: lw_attr_list, lv_attr_single.
"*          lw_attr_list-attr_id = 'Z_WERKS'.
"*          CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"*            EXPORTING
"*              iv_user                 = lv_buyer
"*              iv_attr_single          = lw_attr_list
"*            IMPORTING
"*              ev_attr_dft_single      = lv_attr_single
"*            EXCEPTIONS
"*              object_id_not_found     = 1
"*              no_attributes_requested = 2
"*              attributes_read_error   = 3
"*              OTHERS                  = 4.
"*          IF sy-subrc IS INITIAL AND lv_attr_single IS NOT INITIAL.
"*            DATA(lv_login_buyer) = sy-uname.
"*            IF lv_buyer NE lv_login_buyer.
"*              CLEAR: lw_attr_list, lv_attr_login_buyer.
"*              lw_attr_list-attr_id = 'Z_WERKS'.
"*              CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"*                EXPORTING
"*                  iv_user                 = lv_login_buyer
"*                  iv_attr_single          = lw_attr_list
"*                IMPORTING
"*                  ev_attr_dft_single      = lv_attr_login_buyer
"*                EXCEPTIONS
"*                  object_id_not_found     = 1
"*                  no_attributes_requested = 2
"*                  attributes_read_error   = 3
"*                  OTHERS                  = 4.
"*              IF sy-subrc IS INITIAL AND lv_attr_login_buyer IS NOT INITIAL.
"*                SELECT user_group, buyer_plant
"*                  FROM Zpd_auth_ck
"*                  INTO TABLE @DATA(lt_auth_chk)
"*                    WHERE user_group IS NOT NULL AND buyer_plant IN (@lv_attr_single-value, @lv_attr_login_buyer-value).
"*                IF sy-subrc IS INITIAL.
"*                  IF line_exists( lt_auth_chk[ buyer_plant = lv_attr_single-value ] ).
"*                    DATA(lv_buyer_group) = lt_auth_chk[ buyer_plant = lv_attr_single-value ]-user_group.
"*                  ENDIF.
"*                  IF line_exists( lt_auth_chk[ buyer_plant = lv_attr_login_buyer-value ] ).
"*                    DATA(lv_loginbuy_group) = lt_auth_chk[ buyer_plant = lv_attr_login_buyer-value ]-user_group.
"*                  ENDIF.
"*
"*                  IF lv_buyer_group NE lv_loginbuy_group.
"*                    CREATE OBJECT lo_exception.
"*                    ls_messages-type   = 'E'.
"*                    ls_messages-id     = 'ZCL_MSG'.
"*                    ls_messages-number = '988'.
"*                    APPEND ls_messages TO lt_messgs.
"*                    lo_exception->get_msg_container( )->add_messages_from_bapi(
"*                    it_bapi_messages = lt_messgs ).
"*                    RAISE EXCEPTION lo_exception.
"*                    RETURN.
"*                  ENDIF.
"*                ENDIF.
"*              ELSE.
"*                CREATE OBJECT lo_exception.
"*                ls_messages-type   = 'E'.
"*                ls_messages-id     = 'ZCL_MSG'.
"*                ls_messages-number = '988'.
"*                APPEND ls_messages TO lt_messgs.
"*                lo_exception->get_msg_container( )->add_messages_from_bapi(
"*                it_bapi_messages = lt_messgs ).
"*                RAISE EXCEPTION lo_exception.
"*                RETURN.
"*              ENDIF.
"*            ENDIF.
"*          ELSE.
"*            CREATE OBJECT lo_exception.
"*            ls_messages-type   = 'E'.
"*            ls_messages-id     = 'ZCL_MSG'.
"*            ls_messages-number = '988'.
"*            APPEND ls_messages TO lt_messgs.
"*            lo_exception->get_msg_container( )->add_messages_from_bapi(
"*            it_bapi_messages = lt_messgs ).
"*            RAISE EXCEPTION lo_exception.
"*            RETURN.
"*          ENDIF.
"*        ENDIF.
"*      ENDIF.
"*    ENDIF.
"* EOC} US# 21678 by SWDENDI Interim filter in PC app for BMBS China

"    IF  lv_ctr_guid IS NOT INITIAL   AND lv_ctr_item_guid IS NOT INITIAL.

"      CALL FUNCTION 'BBP_PROCDOC_RESET_BUFFER'.

"      CALL FUNCTION 'BBP_PD_CTR_GETDETAIL'
"        EXPORTING
"          i_guid          = lv_ctr_guid
"          i_with_itemdata = 'X'
"        IMPORTING
"          e_header        = ls_pd_header_d
"          et_conditions   = lt_conditions
"        TABLES
"          e_item          = lt_item
"          e_partner       = lt_partner
"          e_orgdata       = lt_orgdata
"          e_longtext      = lt_longtext
"          e_icf           = lt_db_icf
"          e_dis           = lt_dis.
"      SORT lt_longtext BY guid tdid tdspras counter tdformat .
"      ASSIGN lt_partner[ partner_fct = '00000019' ] TO FIELD-SYMBOL(<fs_supplier>).
"      IF sy-subrc EQ 0 AND <fs_supplier> IS ASSIGNED.
"        lv_supplier  = <fs_supplier>-partner_id.
"        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"          EXPORTING
"            input  = lv_supplier
"          IMPORTING
"            output = lv_supplier.
"        SELECT SINGLE countryiso
"          INTO @DATA(lv_prod_country)
"          FROM zsupplist
"          WHERE  supplierid = @lv_supplier.
"        IF sy-subrc NE 0.
"          CLEAR lv_prod_country.
"        ENDIF.
"      ENDIF.
"*BOC_NPSCC-29273_Raw Material Buy user-lead enablement
"      SELECT SINGLE high
"        INTO @DATA(lv_ctr_ref_type)
"        FROM tvarvc
"        WHERE name EQ 'ZCTR_REFERENCE_TYPE'
"          AND low = @ls_pd_header_d-process_type.
"      IF sy-subrc <> '0'.
"        CLEAR: lv_ctr_ref_type.
"      ENDIF.
"*EOC_NPSCC-29273_Raw Material Buy user-lead enablement
"*      IF lv_quota_ctr_cr IS NOT INITIAL AND lt_dis IS NOT INITIAL.
"*        SELECT SINGLE  b~partner_guid
"*          FROM bbp_locmap AS a
"*          INNER JOIN but000 AS b
"*          ON a~partner_no = b~partner
"*          INTO @DATA(lv_plant_guid)
"*          WHERE a~ext_locno EQ @lv_plant.
"*        IF sy-subrc IS INITIAL.
"*          DELETE lt_dis WHERE location NE lv_plant_guid.
"*          ra_item_guid = VALUE #( FOR ls_dis IN lt_dis
"*                                        ( sign = 'I'
"*                                          option = 'EQ'
"*                                          low = ls_dis-p_guid ) ).
"*          DELETE lt_item WHERE guid NOT IN ra_item_guid.
"*        ENDIF.
"*      ENDIF.

"      IF lt_item[] IS NOT INITIAL.
"        SELECT a~guid,                        "--BugFix_SP39_US#12966/12968/11197,To Display COmm_code as per Buyer BU -- By NIhar
"               a~price_unit,
"               b~ordered_prod
"          FROM bbp_pdigp AS a INNER JOIN crmd_orderadm_i AS b
"           ON  a~guid = b~guid
"          INTO TABLE @DATA(lt_item_price_unit)
"          FOR ALL ENTRIES IN @lt_item
"          WHERE a~guid = @lt_item-guid .

"        IF sy-subrc EQ 0.
"          SORT lt_item_price_unit BY guid .
"        ENDIF.

"*       Begin of changes by KAUSING*npscc 31966
"        rt_part = VALUE #( FOR ls_item_prod IN lt_item
"                              ( sign = 'I' option = 'EQ' low = ls_item_prod-ordered_prod )
"                          ).
"        DELETE rt_part WHERE low IS INITIAL.
"        IF rt_part IS NOT INITIAL.
"          SELECT a~product_id, a~product_guid, b~langu, b~short_text
"            FROM comm_product AS a
"            INNER JOIN comm_prshtext AS b
"            ON b~product_guid = a~product_guid
"          INTO TABLE @DATA(lt_product_descr)
"          WHERE a~product_id IN @rt_part.
"          IF sy-subrc IS INITIAL.
"            SORT lt_product_descr BY product_id.

"            SELECT company_code,
"                   plant,
"                   output_language,
"                   first_alt_lang,
"                   second_alt_lang,
"                   third_alt_lang
"              FROM zpart_lang
"              INTO TABLE @DATA(lt_part_lang)
"              WHERE object_type = 'BUS2000113'
"              AND ( company_code EQ @ls_pd_header_d-co_code
"              OR    company_code EQ '*' )
"              AND output_language IN ( @ls_pd_header_d-zlanguage, @sy-langu ).
"            IF sy-subrc IS INITIAL.
"              SORT lt_part_lang BY company_code plant output_language.
"            ENDIF.
"          ENDIF.
"        ENDIF.
"        CLEAR rt_part[].
"*       End of changes by KAUSING*NPSCC 31966

"        SELECT waers, ltext FROM tcurt
"          INTO TABLE @DATA(lt_currdesc)
"          WHERE spras = @sy-langu.
"        IF sy-subrc = 0.
"          SORT lt_currdesc BY waers.
"        ENDIF.

"*{ BOC -RKORADA - NPSCC-26596 - INT Error message "price type" occured although price was added to the item
"        IF lv_ctr_ref_type EQ 'PM' . "By SOPABBA_US# NPSCC-29273
"*        IF ls_pd_header_d-process_type EQ 'PM'
"*          OR ls_pd_header_d-process_type EQ 'ZTP' . "By SOPABBA_US# NPSCC-25480

"          SELECT bbp_item_guid, kschl, kbetr , kpein
"            FROM /1cn/abpsap068
"            FOR ALL ENTRIES IN @lt_item
"            WHERE bbp_item_guid EQ @lt_item-guid
"            AND kschl = '01CT'
"            AND release_status = @abap_false
"            INTO TABLE @DATA(lt_cnd_inf).
"          IF sy-subrc EQ 0.
"            SORT lt_cnd_inf BY bbp_item_guid ASCENDING .
"          ENDIF.

"          DATA(lo_ctr_epu) = NEW zcl_ctr_epu( ).
"*         Get the total doc AVOB and item related AVOB
"          lo_ctr_epu->get_epu_and_avob(
"                 EXPORTING im_ctr_header_guid = lv_ctr_guid
"                           im_mode            = 'ITEMS'
"                           im_liefmenge_type  = 'LiefMenge'
"                           im_period          = 'CY'
"                           im_icf             = lt_db_icf
"                           im_items           = lt_item
"                 IMPORTING ex_item_epu_and_avob = DATA(lt_item_epu_avob) ).

"        ELSE.
"          SELECT bbp_item_guid, kschl, kbetr , kpein
"            FROM /1cn/abpsap016
"            FOR ALL ENTRIES IN @lt_item
"            WHERE bbp_item_guid EQ @lt_item-guid
"            AND kschl = '01CT'
"            AND release_status = @abap_false
"            INTO TABLE @lt_cnd_inf.
"          IF sy-subrc EQ 0.
"            SORT lt_cnd_inf BY bbp_item_guid ASCENDING .
"          ENDIF.
"        ENDIF.
"*} EOC RKORADA - NPSCC-26596 - INT Error message "price type" occured although price was added to the item
"        SELECT spras, msehi, mseht, msehl FROM t006a
"          INTO TABLE @DATA(lt_t006a)
"          FOR ALL ENTRIES IN @lt_item
"          WHERE spras = @sy-langu
"            AND msehi = @lt_item-unit.
"        IF sy-subrc = 0.
"          SORT lt_t006a BY msehi.
"        ENDIF.
"        SELECT msehi, decan AS unit_decan INTO TABLE @DATA(lt_unitdec)
"          FROM t006
"          FOR ALL ENTRIES IN @lt_item
"          WHERE msehi = @lt_item-unit.
"        IF sy-subrc EQ 0.
"          SORT lt_unitdec BY msehi ASCENDING.
"        ENDIF.

"        SELECT zprice_type, ztype_desc
"        INTO TABLE @DATA(lt_pricetype_desc)
"          FROM zptype
"          WHERE zprice_type IS NOT NULL
"          AND spras = @sy-langu .
"        IF sy-subrc EQ 0.
"          SORT lt_pricetype_desc BY zprice_type.
"        ENDIF.

"        SELECT payment_term AS pmnttrms,
"               pterm_text AS pmnt_text
"               FROM zpterm_date
"               INTO TABLE @DATA(lt_pmnt_text)
"               FOR ALL ENTRIES IN @lt_item
"               WHERE payment_term = @lt_item-pmnttrms.
"        IF sy-subrc EQ 0.
"          SORT lt_pmnt_text BY pmnttrms ASCENDING.
"        ENDIF.

"        SELECT pack_term, name1
"              FROM zpac_term
"              INTO TABLE @DATA(lt_pkttrm_text)
"              FOR ALL ENTRIES IN @lt_item
"              WHERE pack_term = @lt_item-pack_term
"              AND  spras = @sy-langu.
"        IF sy-subrc EQ 0.
"          SORT lt_pkttrm_text BY pack_term ASCENDING.
"        ENDIF.

"        SELECT absgr, absgr_text
"         FROM zreturn_trm
"         INTO TABLE @DATA(lt_rtntrm_text)
"         FOR ALL ENTRIES IN @lt_item
"         WHERE absgr = @lt_item-return_term
"         AND  spras = @sy-langu.
"        IF sy-subrc EQ 0.
"          SORT lt_rtntrm_text BY absgr ASCENDING.
"        ENDIF.

"*{ BOC - RKORADA - US# 2985
"        DELETE lt_conditions WHERE del_ind EQ 'X'.
"        MOVE : lt_conditions TO lt_conditions_asc,
"               lt_conditions TO lt_conditions_desc.
"        SORT lt_conditions_asc BY p_guid ASCENDING date_from ASCENDING.
"        SORT lt_conditions_desc BY p_guid ASCENDING date_to DESCENDING.
"*} EOC - RKORADA - US# 2985
"        SORT lt_item BY zdisp_number .

"      ENDIF.
"*/.. Read responsible buyer details.
"      READ TABLE lt_orgdata ASSIGNING FIELD-SYMBOL(<fs_orgdata>) INDEX 1.
"      IF sy-subrc EQ 0.
"        lv_purch_grp  = <fs_orgdata>-proc_group_id.
"      ENDIF.

"      NEW zcl_search_help_and_info( )->get_buyer_from_purch_group(
"        EXPORTING
"          iv_purch_grp = lv_purch_grp
"        IMPORTING
"          ev_buyer_id  = DATA(lv_buyer) ).

"      NEW zcl_search_help_and_info( )->get_country_list(
"                   EXPORTING im_language_key  = sy-langu
"                   IMPORTING ex_all_countries = DATA(lt_all_countries) ).
"      SORT lt_all_countries BY country.

"      ASSIGN lt_item[ guid = lv_ctr_item_guid ] TO FIELD-SYMBOL(<fs_item>).

"      IF sy-subrc IS INITIAL AND <fs_item> IS ASSIGNED.
"        DELETE lt_item WHERE del_ind EQ 'X'.
"        DESCRIBE TABLE lt_item LINES er_entity-max_item_no.

"*//.. Move contract header status
"        NEW zcl_contract_app( )->get_contract_header_status(
"          EXPORTING
"            im_ctr_head_guid = ls_pd_header_d-guid
"          IMPORTING
"            e_status         = er_entity-ctr_status
"            e_status_text    = er_entity-ctr_status_text ).
"        er_entity-object_id       =  ls_pd_header_d-object_id.
"        er_entity-ctr_header_guid =  ls_pd_header_d-guid.
"        er_entity-contracttype    =  ls_pd_header_d-process_type.
"        er_entity-created_system =  ls_pd_header_d-zcreated_sys.

"        IF  ls_pd_header_d-zcreated_sys = 'N'.
"          er_entity-created_system_desc     = TEXT-010.
"        ELSEIF ls_pd_header_d-zcreated_sys = 'G'.
"          er_entity-created_system_desc     = TEXT-011.
"        ENDIF.

"        er_entity-item_guid       = <fs_item>-guid.
"        er_entity-number_int      =  <fs_item>-number_int.
"        er_entity-item_num_sort   =  <fs_item>-number_int.
"        SHIFT er_entity-number_int LEFT DELETING LEADING '0'.

"        er_entity-disp_number     = <fs_item>-zdisp_number.
"        SHIFT er_entity-disp_number LEFT DELETING LEADING '0'.

"        IF ls_pd_header_d-zcreated_sys EQ 'G'.
"          MOVE er_entity-number_int TO er_entity-disp_number.
"        ENDIF.

"*       Begin of changes by KAUSING*npscc 31966
"        DATA(ls_part_lang) = VALUE #( lt_part_lang[ company_code = ls_pd_header_d-co_code
"                                                    output_language = ls_pd_header_d-zlanguage ] OPTIONAL ).
"        IF ls_part_lang IS INITIAL.
"          ls_part_lang = VALUE #( lt_part_lang[ company_code = '*' output_language = ls_pd_header_d-zlanguage ] OPTIONAL ).
"        ENDIF.
"        IF ls_part_lang IS INITIAL.
"          ls_part_lang = VALUE #( lt_part_lang[ company_code = ls_pd_header_d-co_code
"                                                      output_language = sy-langu ] OPTIONAL ).
"          IF ls_part_lang IS INITIAL.
"            ls_part_lang = VALUE #( lt_part_lang[ company_code = '*' output_language = sy-langu ] OPTIONAL ).
"          ENDIF.
"        ENDIF.
"        IF ls_part_lang IS NOT INITIAL.
"          IF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-output_language ] ).
"            er_entity-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-output_language ]-short_text OPTIONAL ).

"          ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-first_alt_lang ] ).
"            er_entity-description = lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-first_alt_lang ]-short_text.
"          ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-second_alt_lang ] ).
"            er_entity-description = lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-second_alt_lang ]-short_text.
"          ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-third_alt_lang ] ).
"            er_entity-description = lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-third_alt_lang ]-short_text.
"          ENDIF.
"        ENDIF.
"        IF er_entity-description IS INITIAL.
"*       End of changeby KAUSING*NPSCC 31966
"          er_entity-description     =  <fs_item>-description .
"        ENDIF.   "KAUSING*NPSCC 31966
"        er_entity-product_id      =  <fs_item>-ordered_prod .
"        er_entity-ordered_prod      =  <fs_item>-ordered_prod .

"        IF <fs_item>-ordered_prod IS NOT INITIAL .
"*            AND <fs_item>-ordered_prod+0(2) NE 'B9' .
"          rt_part = VALUE #( ( sign = 'I' option = 'EQ' low = to_upper( <fs_item>-ordered_prod ) ) ).
"          rt_prod_guid = VALUE #( ( sign = 'I' option = 'EQ' low = <fs_item>-product ) ).
"          IF rt_prod_guid IS NOT INITIAL.
"            DATA(lr_text_ids) = VALUE tspsrid(  sign = 'I' option = 'EQ' ( low = 'BASE') ( low = 'INSP') ).
"            DATA(lr_text_obj) = VALUE tspsrobj( sign = 'I' option = 'EQ' ( low = 'PRODUCT' ) ).
"            NEW zcl_contract_app( )->get_partno_text(
"            EXPORTING
"              im_object = lr_text_obj
"              im_name   = rt_prod_guid
"              im_id     = lr_text_ids
"            IMPORTING
"              ex_text   = DATA(lt_so10_text) ).
"          ENDIF.

"          IF <fs_item>-ordered_prod IS NOT INITIAL .
"            IF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP' tdlang = sy-langu ] ).
"              er_entity-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP'
"                                                         tdlang = sy-langu ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP' tdlang = 'E' ] ).
"              er_entity-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP'
"                                                         tdlang = 'E' ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE' tdlang = sy-langu ] ).
"              er_entity-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE'
"                                                         tdlang = sy-langu ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE' tdlang = 'E' ] ).
"              er_entity-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE'
"                                                         tdlang = 'E' ]-text.
"            ENDIF.
"          ELSE.
"            LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_long_text>)
"                                          WHERE guid = <fs_item>-guid
"                                           AND  tdid = 'ETXT'.
"              CONCATENATE er_entity-item_long_desc
"                          <fs_long_text>-tdline INTO er_entity-item_long_desc .

"            ENDLOOP.
"          ENDIF.

"          SELECT product_guid, product_id, char_name, char_value
"            FROM zparts_char
"            INTO TABLE @DATA(lt_parts_char)
"            WHERE product_guid IS NOT NULL
"            AND product_id = @<fs_item>-ordered_prod
"            AND char_name IN ( '2', '3', '16' , '17', '32', '19' ) .

"          IF sy-subrc EQ 0.
"            SORT lt_parts_char BY product_guid product_id char_name.

"            rt_src_itemcode = VALUE #( FOR ls_part_char IN lt_parts_char
"                                         WHERE ( char_name EQ '32' )
"                                             ( sign = 'I' option = 'EQ' low = ls_part_char-char_value ) ).

"            SELECT itemcode_type, source_item_code,
"                   item_code_description, item_code_ext
"              FROM zmat_config
"              INTO TABLE @DATA(lt_mat_config)
"              WHERE itemcode_type IS NOT NULL
"                AND source_item_code IN @rt_src_itemcode.

"            IF sy-subrc NE 0.
"              CLEAR lt_mat_config.
"            ENDIF.
"          ENDIF.
"          NEW zcl_search_help_and_info( )->get_comm_code_for_partno(
"            EXPORTING
"              it_srh_part          = rt_part
"              iv_responsible_buyer = lv_buyer
"            IMPORTING
"              et_part_number       = DATA(lt_partno) ).

"          DATA : it_cat1 TYPE TABLE OF comm_category,     " KAUSING*vforge fix
"                 it_cat2 TYPE TABLE OF comm_category.  " KAUSING*vforge fix

"*       Begin of changes by KAUSING*vforge fix
"          it_cat1 = VALUE #( FOR ls_partno IN lt_partno
"                              ( category_id = ls_partno-category_id ) ).

"          it_cat2 = VALUE #( FOR ls_item IN lt_item
"                               ( category_id = ls_item-category_id ) ) .
"          APPEND LINES OF it_cat2 TO  it_cat1 .
"          IF it_cat1[] IS NOT INITIAL.
"            SELECT categoryid ,
"                  categorydesc
"            FROM zcommcode
"            FOR ALL ENTRIES IN @it_cat1
"            WHERE categoryid EQ @it_cat1-category_id
"            INTO TABLE @DATA(lt_commodity_desc).
"            IF sy-subrc EQ 0.
"              SORT lt_commodity_desc BY categoryid .
"            ENDIF.
"          ENDIF.
"        ENDIF.

"        er_entity-commodity_code  =  VALUE #( lt_partno[ ordered_prod = <fs_item>-ordered_prod ]-category_id OPTIONAL ).

"        IF er_entity-commodity_code IS INITIAL.       "-- Incase free text/materia
"          er_entity-commodity_code  =  <fs_item>-category_id .
"        ENDIF.

"        IF er_entity-commodity_code IS NOT INITIAL .
"          er_entity-commoditycode_description = VALUE #( lt_commodity_desc[ categoryid = er_entity-commodity_code ]-categorydesc OPTIONAL ).
"        ENDIF.
"        er_entity-price_unit = VALUE #( lt_cnd_inf[ bbp_item_guid = <fs_item>-guid ]-kpein OPTIONAL ).
"        er_entity-price     = <fs_item>-price.
"        IF er_entity-price IS INITIAL.
"          er_entity-price = VALUE #( lt_cnd_inf[ bbp_item_guid = <fs_item>-guid ]-kbetr OPTIONAL ).
"        ENDIF.

"        er_entity-quantity  = <fs_item>-quantity .
"        er_entity-unit      = <fs_item>-unit.
"        er_entity-zgs       = <fs_item>-zzgs .
"        er_entity-unit_text = VALUE #( lt_t006a[ msehi = er_entity-unit ]-msehl OPTIONAL ).
"        er_entity-currency  = <fs_item>-currency.
"        er_entity-curr_desc  = VALUE #( lt_currdesc[ waers = <fs_item>-currency ]-ltext OPTIONAL ).

"        IF <fs_item>-pmnttrms IS NOT INITIAL.
"          er_entity-payment_terms  = <fs_item>-pmnttrms.
"          er_entity-paymnt_shortdesc = VALUE #( lt_pmnt_text[ pmnttrms = <fs_item>-pmnttrms ]-pmnt_text OPTIONAL ).
"        ENDIF.
"        IF <fs_item>-pack_term IS NOT INITIAL.
"          er_entity-pack_term  = <fs_item>-pack_term.
"          er_entity-pack_term_shorttext = VALUE #( lt_pkttrm_text[ pack_term = <fs_item>-pack_term ]-name1 OPTIONAL ).
"        ENDIF.
"        IF <fs_item>-return_term IS NOT INITIAL.
"          er_entity-return_term  = <fs_item>-return_term.
"          er_entity-return_term_shorttext = VALUE #( lt_rtntrm_text[ absgr = <fs_item>-return_term ]-absgr_text OPTIONAL ).
"        ENDIF.
"        IF <fs_item>-itm_released IS INITIAL.
"          er_entity-cancelled = 'X'.
"        ENDIF.
"        er_entity-ps_subcon_item = <fs_item>-zsub_contract_flag.
"        er_entity-lta_flag = <fs_item>-zlta_flag.
"        er_entity-threeyp_flag = <fs_item>-z3yp_flag.
"        er_entity-price_type = <fs_item>-zprice_type.
"        er_entity-price_type_desc = VALUE #( lt_pricetype_desc[ zprice_type = er_entity-price_type ]-ztype_desc OPTIONAL ).

"        LOOP AT lt_longtext ASSIGNING <fs_long_text>
"                                      WHERE guid = <fs_item>-guid AND tdid = 'ITXT'.
"          CONCATENATE er_entity-supplier_text
"                      <fs_long_text>-tdline INTO er_entity-supplier_text .

"        ENDLOOP.

"        IF er_entity-unit IS NOT INITIAL.
"          IF er_entity-unit = 'EA'.
"            CLEAR: er_entity-unit_decan.
"          ELSE.
"            er_entity-unit_decan = VALUE #( lt_unitdec[ msehi = er_entity-unit ]-unit_decan OPTIONAL ).
"          ENDIF.
"        ENDIF.
"* BOC Bug 29288_Split logic is removed as local parts without es1 es2 can have space
"*        SPLIT er_entity-product_id AT '_'
"*          INTO er_entity-product_id DATA(lv_itm_code).
"*        SPLIT er_entity-product_id AT space
"*          INTO er_entity-product_id lv_es1_es2.

"        er_entity-product_id = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                       char_name = '16' ]-char_value DEFAULT space ).
"* EOC Bug 29288_Split logic is removed as local parts without es1 es2 can have space
"        er_entity-print_product_id = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                               char_name = '19' ]-char_value DEFAULT space ).
"        IF er_entity-print_product_id IS INITIAL.
"          er_entity-print_product_id = er_entity-product_id.
"        ENDIF.

"        er_entity-es1 = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                 char_name = '2' ]-char_value DEFAULT space ).
"*        IF er_entity-es1 EQ space.
"*          MOVE :  lv_es1_es2+0(4)        TO er_entity-es1.
"*        ENDIF.

"        er_entity-es2 = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                               char_name = '3' ]-char_value DEFAULT space ).
"*        IF er_entity-es2 EQ space.
"*          MOVE :  lv_es1_es2+5(4)        TO er_entity-es2.
"*        ENDIF.

"        DATA(lv_src_itemcode) = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                         char_name = '32' ]-char_value DEFAULT space ).
"        DATA(ls_matconfig) = COND #( WHEN line_exists( lt_mat_config[ source_item_code = lv_src_itemcode  ]  )
"                                          THEN  lt_mat_config[ source_item_code = lv_src_itemcode  ] ).
"        er_entity-itemcodetype      = ls_matconfig-itemcode_type.
"        er_entity-itemcodetype_desc = ls_matconfig-item_code_description.
"        IF <fs_item>-zctr_released EQ 'X'.
"          MOVE 'X' TO er_entity-ctr_released.
"        ENDIF.
"        IF <fs_item>-itm_released IS INITIAL.
"          MOVE 'X' TO er_entity-cancelled.
"        ENDIF.

"        IF line_exists( lt_item_epu_avob[ item_guid = <fs_item>-guid ] ).
"          er_entity-epu = lt_item_epu_avob[ item_guid = <fs_item>-guid ]-epu.
"          er_entity-avob = <fs_item>-zavob_value.
"          er_entity-enable_epu_hyperlink = lt_item_epu_avob[ item_guid = <fs_item>-guid ]-epu_link_flag.
"        ENDIF.

"        IF lv_ctr_ref_type EQ 'PM' . "By SOPABBA_US# NPSCC-29273
"*        IF ls_pd_header_d-process_type EQ 'PM'
"*          OR ls_pd_header_d-process_type EQ 'ZTP'.    "By SOPABBA_US# NPSCC-25480
"          er_entity-production_country = <fs_item>-zproduction_land.
"          IF line_exists( lt_all_countries[ country = <fs_item>-zproduction_land ] ).
"            er_entity-production_countrytext = lt_all_countries[ country = <fs_item>-zproduction_land ]-text.
"          ENDIF.
"          IF er_entity-production_country IS INITIAL." AND ( lv_transfer_flag EQ abap_true OR lv_copy_flag EQ abap_true ).
"            er_entity-production_country = lv_prod_country.
"            IF line_exists( lt_all_countries[ country = er_entity-production_country ] ).
"              er_entity-production_countrytext = lt_all_countries[ country = er_entity-production_country ]-text.
"            ENDIF.
"          ENDIF.
"        ENDIF.

"        er_entity-validity_from = VALUE #( lt_conditions_asc[ p_guid = <fs_item>-guid ]-date_from  OPTIONAL ).
"        er_entity-validity_to  = VALUE #( lt_conditions_desc[ p_guid = <fs_item>-guid ]-date_to  OPTIONAL ).
"* BOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA
"        IF <fs_item>-src_guid IS NOT INITIAL.
"          er_entity-pr_reference = abap_true.
"        ENDIF.
"* BOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA
"** Begin of changes by KAUSING*npscc 22130*16/07
"*          IF lv_transfer_flag IS NOT INITIAL.
"*            IF NOT ( er_entity-validity_to GE lv_valid_from ).
"**              Skip this record.
"*              CLEAR er_entity.
"*            ELSE.
"*              er_entity-validity_from = lv_valid_from + 1.
"*              er_entity-validity_to = lv_valid_to.
"*            ENDIF.
"*          ENDIF.
"**         End of changes by KAUSING*npscc 22130*16/07

"      ENDIF.
"    ENDIF.
  ENDMETHOD.


  METHOD contractitemset_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Aman Jain (AMAJAIN)                        &*
*& Created    : 2017-11-03                                           &*
*& Description: This method is to display the collection of          &*
*&              contract line items -US 2954                         &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        06-Mar-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#8872                             &*
*&              Passing the data based on the CTR head GUID.         &*
*---------------------------------------------------------------------*
*& Date:        09-Apr-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Nihar Ranasingh (NRANASI)                            &*
*& Description: Changes done for SP34- US#11791                      &*
*&              Passing Comm_Code Description to display on ItemLevel&*
*---------------------------------------------------------------------*
*& Date       : 12-Apr-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Nihar Ranasingh (NRANASI)                            &*
*& Description: SP33_US#11748-                                       &*
*&              Fiori App PC : Show Globus lock indicator for PC     &*
*---------------------------------------------------------------------*
*& Date       : 16-Apr-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi Thirumal(TTHIRUM)                         &*
*& Description: SP35_US#11200-                                       &*
*&              Fiori PC App - Filter function for item columns      &*
*---------------------------------------------------------------------*
*& Date       : 23-Apr-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Nihar Ranasingh (NRANASI)                            &*
*& Description: SP36_US#2936/12240- Create NPM CTR from PR           &*
*&  At this place we made fix for Item Price_unit to display on Fiori&*
*---------------------------------------------------------------------*
*---------------------------------------------------------------------*
*& Date:        02/07/2018                                           &*
*& Developer:   Tamilarasi Thirumal/Nihar Ranasingh(TTHIRUM/NRANASI) &*
*& Description: SP_37/39-US# 12966/12968/11197- PC:                  &*
*&      Lookup BU specific commodity code on importing PCs           &*
*& Here code is to display the Comm_Code as per Buyer BU for partno  &*
*---------------------------------------------------------------------*
*---------------------------------------------------------------------*
*& Date:        25/10/2018                                           &*
*& Developer:   Gayathri Saminathan (GSAMINA)                        &*
*& Description: SP_47-US# 13056- PC:                                 &*
*&              Show EPU data on line item level                     &*
*---------------------------------------------------------------------*
*&-------------------------------------------------------------------&*
*& Date:        09-Nov-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#15357                            &*
*&              Passing the calculated AVOB.                         &*
*---------------------------------------------------------------------*
*& Date:        08-Jan-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#14251                             &*
*&              Calculate total AVOB based on first date of price for &*
*&              specific part and plant combination for LIEFMENGE_CY  &*
*&--------------------------------------------------------------------&*
    "DATA: lw_ctr_item        TYPE zcl_zfio_mng_ctr_mpc=>ts_contractitem,
"          lt_keytab          TYPE /iwbep/t_mgw_name_value_pair,
"          lv_ctr_status      TYPE j_status,
"          lv_ctr_status_text TYPE j_txt30,                         "-- INSET US 9013 - RKORADA
"          lv_es1_es2(15)     TYPE c,      " es1 and es2 field.     "-- US# 8162 - By NIhar
"          lv_ctr_guid        TYPE GUID,
"          lv_transfer_flag   TYPE flag,                            " NPSCC 22130*KAUSING
"          lv_valid_to        TYPE dats,                            " NPSCC 22130*KAUSING
"          lv_valid_from      TYPE dats,                            " NPSCC 22130*KAUSING
"          lv_quota_ctr_cr    TYPE flag,                            " NPSCC 24077*KAUSING
"          lv_part            TYPE comt_product_id,                 " NPSCC 24077*KAUSING
"          lv_plant           TYPE bbp_location,                    " NPSCC 24077*KAUSING
"          lv_ctr_head_guid   TYPE GUID,                        " NPSCC 24077*KAUSING
"          lv_ctr_item_guid   TYPE GUID,                        " NPSCC 24077*KAUSING
"          lt_conditions      TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          lt_conditions_asc  TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          lt_conditions_desc TYPE TABLE OF bbp_pds_cnd_d,                     " INSERT US 2985
"          ls_pd_header_d     TYPE bbp_pds_ctr_header_d,
"          lt_item            TYPE STANDARD TABLE OF bbp_pds_ctr_item_d,
"          lt_partner         TYPE STANDARD TABLE OF bbp_pds_partner,
"          lt_longtext        TYPE STANDARD TABLE OF bbp_pds_longtext,
"          lt_item_rel_doc    TYPE TABLE OF bbp_pds_ilrel,
"          lt_s4_supp_part    TYPE ztt_part_sup_rel_fetch,  "NPSCC-2990
"          lcl_contract_app   TYPE REF TO zcl_contract_app,
"********** Begin of change for sorting by AMISIN*******************
"          lt_sort_order      TYPE abap_sortorder_tab,
"          ls_sort_order      TYPE abap_sortorder,
"          lt_orderby         TYPE /iwbep/t_mgw_tech_order,
"          lt_db_icf          TYPE STANDARD TABLE OF bbp_pds_icf_ctr,   " Venky US#14251
"          lt_dis             TYPE TABLE OF bbp_pds_dis,                " KAUSING*11/10/2019
"          ra_item_guid       TYPE /iwbep/t_cod_select_options,         " KAUSING*11/10/2019
"          lt_orgdata         TYPE TABLE OF bbp_pds_org ,           "--BugFix_SP39_US#12966/12968/11197 By NIhar
"********** End of change for sorting by AMISIN*******************
"          lr_itemcode_type   TYPE RANGE OF zitemcode_type,        " KAUSING*16/03/2020*npscc 27757
"          lv_supplier        TYPE bu_partner,
"          lv_purch_grp       TYPE hrobjid,
"          rt_part            TYPE /iwbep/t_cod_select_options,
"          rt_src_itemcode    TYPE RANGE OF zsrc_itemcode, " US# 22830_SOPABBA
"          rt_prod_guid       TYPE RANGE OF tdobname,
"          lo_info            TYPE REF TO zcl_search_help_and_info,
"          lt_dd07v           TYPE TABLE OF dd07v,
"          rt_item_guid       TYPE RANGE OF GUID,
"          lv_longtext        TYPE string,
"          lt_number          TYPE TABLE OF zdisp_number,
"          rt_number          TYPE RANGE OF crmt_item_no,
"          lv_item_number     TYPE crmt_item_no.

"    FIELD-SYMBOLS : <fs_pricecond> TYPE bbp_pds_cnd_d.

"    TYPES: BEGIN OF ty_pmnt_text,
"             pmnttrms  TYPE bbp_md_zterm,
"             pmnt_text TYPE bbp_text1_052,
"           END OF ty_pmnt_text.

"    DATA: lt_pmnt_text TYPE STANDARD TABLE OF ty_pmnt_text,
"          lr_pay_term  TYPE RANGE OF bbp_md_zterm,     "US# NPSCC-26113_BY SOPABBA
"          lr_pack_term TYPE RANGE OF zpack_term,  "US# NPSCC-26113_BY SOPABBA
"          lr_ret_term  TYPE RANGE OF bbp_absgr,        "US# NPSCC-26113_BY SOPABBA
"          ls_pmnt_text TYPE ty_pmnt_text.

"*../Move values from internal table it_key_tab to local internal table lt_keytab.
"    MOVE it_key_tab TO lt_keytab.
"    SORT lt_keytab BY name ASCENDING.

"    DATA(lt_sel_columns) = io_tech_request_context->get_select( ).
"    DATA(lv_rfc_name) = |ZLDAP_{ sy-sysid }|.

"*HTALESR++ - US-10338
"* Fetching the currency description
"    SELECT waers, ltext FROM tcurt
"      INTO TABLE @DATA(lt_currdesc)
"      WHERE spras = @sy-langu.
"    IF sy-subrc = 0.
"      SORT lt_currdesc BY waers.
"    ENDIF.
"*HTALESR-- - US-10338
"* Boc US# NPSCC-29958  SupChng: Apply Supplier Change in new contract - SWDENDI
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"       it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'SUPP_CHANGE'.
"      DATA(lv_snc_flag) = abap_true.
"      DATA(lv_from_date) = VALUE #( it_filter_select_options[ property = 'SuccStartDate' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_item_nums) = VALUE #( it_filter_select_options[ property = 'SpecificItemnums' ]-select_options[ 1 ]-low OPTIONAL ).
"      SPLIT lv_item_nums AT ',' INTO TABLE lt_number.
"      rt_number = VALUE #( FOR ls_num IN lt_number
"                         ( sign = 'I' option = 'EQ' low = |{ ls_num  ALPHA = OUT }| ) ).
"    ENDIF.
"* Eoc US# NPSCC-29958  SupChng: Apply Supplier Change in new contract - SWDENDI

"*  Begin of changes by KAUSING*npscc 24077*09/10/2019
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"       it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'QUOTA_CREATE'.
"      MOVE: 'X' TO lv_quota_ctr_cr.
"      lv_part = VALUE #( it_filter_select_options[ property = 'OrderedProd' ]-select_options[ 1 ]-low OPTIONAL ).
"      lv_plant = VALUE #( it_filter_select_options[ property = 'Plant' ]-select_options[ 1 ]-low OPTIONAL ).
"    ENDIF.
"* End of changes by KAUSING*npscc 24077*09/10/2019
"*Boc US# 22139 by SWDENDI -Extend
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'EXTEND'.
"      DATA(lv_extend_flag) = abap_true.
"    ENDIF.
"*Eoc US# 22139 by SWDENDI -Extend
"*  Begin of changes by KASUING*npscc 22130*16/07/2019
"*   Check if action value is Transfer
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'TRANSFER'.
"      MOVE: 'X' TO lv_transfer_flag.
"    ENDIF.
"    lv_valid_from = VALUE #( it_filter_select_options[ property = 'TransferFrom' ]-select_options[ 1 ]-low OPTIONAL ).
"    IF lv_valid_from IS NOT INITIAL AND lv_transfer_flag IS NOT INITIAL. " US# 22139 by SWDENDI -Extend
"      lv_valid_from = lv_valid_from - 1.
"    ENDIF.
"    lv_valid_to = VALUE #( it_filter_select_options[ property = 'TransferTo' ]-select_options[ 1 ]-low OPTIONAL ).

"*   Check if action value is Copy
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'COPY'.
"      DATA(lv_copy_flag) = abap_true.
"    ENDIF.

"*   Begin of changes by KAUSING*npscc 27757* Part number changes new
"*   Check if action flag is PNC
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'PNC'.
"      DATA(lv_pnc_flag) = abap_true.
"      DATA(lv_pred_item_guid) = VALUE #( it_filter_select_options[ property = 'Guid' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_succ_part) = VALUE #( it_filter_select_options[ property = 'SuccProductId' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_succ_es1) = VALUE #( it_filter_select_options[ property = 'SuccEs1' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_succ_es2) = VALUE #( it_filter_select_options[ property = 'SuccEs2' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_item_code_type) = VALUE #( it_filter_select_options[ property = 'ItemCodeType' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_succ_date) = VALUE #( it_filter_select_options[ property = 'SuccStartDate' ]-select_options[ 1 ]-low OPTIONAL ).

"    ENDIF.
"*   End of changes by KAUSING*npscc 27757* Part number changes new
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"    IF lv_transfer_flag = abap_true
"      AND line_exists( it_filter_select_options[ property = 'ContractType' ] ).
"      DATA(lv_transfer_to_ctr_type) = VALUE #( it_filter_select_options[ property = 'ContractType' ]-select_options[ 1 ]-low OPTIONAL ).
"    ENDIF.
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"    lv_ctr_guid = VALUE #( lt_keytab[ name = 'ContractGuid' ]-value OPTIONAL ).

"    IF lv_ctr_guid IS NOT INITIAL.
"*Boc Bug# NPSCC-28130 by SWDENDI  Incorrect items are shown in fiori while navigating
"      IF line_exists( it_filter_select_options[ property = 'ReqVerGuid' ] )
"        AND it_filter_select_options[ property = 'ReqVerGuid' ]-select_options[ 1 ]-low IS NOT INITIAL.
"        lv_ctr_guid = VALUE #( it_filter_select_options[ property = 'ReqVerGuid' ]-select_options[ 1 ]-low OPTIONAL ).
"      ENDIF.
"*Eoc Bug# NPSCC-28130 by SWDENDI Incorrect items are shown in fiori while navigating
"****** End of Insert by  <VMANCHA> <US#8872>

"*/.. if the change version document is closed , we need to read from active guid.
"      SELECT SINGLE active_header
"        FROM bbp_pdhgp
"        WHERE guid EQ @lv_ctr_guid
"        AND version_type EQ 'C'
"        AND doc_closed EQ 'X'
"        INTO @DATA(lv_active_header).
"      IF sy-subrc EQ 0.
"        lv_ctr_guid = lv_active_header.
"      ENDIF.

"*     Resetting buffer, just because old version item data with item
"*     guids is being passed to fiori - Venky
"      CALL FUNCTION 'BBP_PROCDOC_RESET_BUFFER'.

"*..Get the item details of contract

"      CALL FUNCTION 'BBP_PD_CTR_GETDETAIL'
"        EXPORTING
"          i_guid          = lv_ctr_guid
"*         i_object_id     = lv_ctr_no
"          i_with_itemdata = 'X'
"        IMPORTING
"          e_header        = ls_pd_header_d
"          et_conditions   = lt_conditions
"        TABLES
"          e_item          = lt_item
"          e_partner       = lt_partner "US# 23483 by SWDENDI
"          e_orgdata       = lt_orgdata          "--BugFix_SP39_US#12966/12968/11197, To Display COmm_code as per Buyer BU--By NIhar
"          e_longtext      = lt_longtext
"          e_icf           = lt_db_icf                                 " Venky US#14251
"          e_itmlim_rel    = lt_item_rel_doc
"          e_dis           = lt_dis.             " NPSCC 24077*KAUSING*11/10/2019

"*{ BoC - RKORADA - NPSCC-28500  Performance Optimization of long running SQL statements (PC app)
"      DELETE lt_item WHERE del_ind IS NOT INITIAL.
"      IF lv_snc_flag IS NOT INITIAL. "US# 29958 by SWDENDI - SNC
"        DELETE lt_item WHERE zdisp_number NOT IN rt_number.
"      ENDIF.
"      CHECK lt_item IS NOT INITIAL.
"*} EoC - RKORADA - NPSCC-28500  Performance Optimization of long running SQL statements (PC app)
"*      SORT lt_longtext BY guid ASCENDING tdid ASCENDING.
"      SORT lt_longtext BY guid tdid tdspras counter tdformat .     "-BUGFix# 13028 [INT]_Text in contract item disaply issue_By Nihar_18May18

"* Boc US# 23483 Enhancement Transfer of GLOBUS Created contract in PROQ by SWDENDI
"      ASSIGN lt_partner[ partner_fct = '00000019' del_ind = abap_false ] TO FIELD-SYMBOL(<fs_supplier>).

"      IF sy-subrc EQ 0 AND <fs_supplier> IS ASSIGNED.
"        lv_supplier  = <fs_supplier>-partner_id.
"        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"          EXPORTING
"            input  = lv_supplier
"          IMPORTING
"            output = lv_supplier.
"        SELECT SINGLE countryiso , supp_global_id
"          FROM zsupplist
"          WHERE  supplierid = @lv_supplier
"          INTO ( @DATA(lv_prod_country) , @DATA(lv_supp_glob) ) .  " NPSCC-2990 - Added Global supplier.
"        IF sy-subrc NE 0.
"          CLEAR lv_prod_country.
"        ENDIF.
"      ENDIF.
"* Eoc US# 23483 Enhancement Transfer of GLOBUS Created contract in PROQ by SWDENDI
"*BOC_NPSCC-29273_Raw Material Buy user-lead enablement
"*      SELECT SINGLE high
"*        INTO @DATA(lv_ctr_ref_type)
"*        FROM tvarvc
"*        WHERE name EQ 'ZCTR_REFERENCE_TYPE'
"*          AND low = @ls_pd_header_d-process_type.
"*      IF sy-subrc <> '0'.
"*        CLEAR: lv_ctr_ref_type.
"*      ENDIF.
"      SELECT name, low , high
"        FROM tvarvc
"        WHERE name IN ( @lv_rfc_name , 'ZCTR_REFERENCE_TYPE' )
"        INTO TABLE @DATA(lt_tvarvc).
"      IF sy-subrc EQ 0.
"        DATA(lv_rfc_dest)     = VALUE #( lt_tvarvc[ name = lv_rfc_name ]-low OPTIONAL ).
"        DATA(lv_ctr_ref_type) = VALUE #( lt_tvarvc[
"                                            name = 'ZCTR_REFERENCE_TYPE'
"                                            low = ls_pd_header_d-process_type ]-high OPTIONAL ).
"      ENDIF.
"*EOC_NPSCC-29273_Raw Material Buy user-lead enablement
"*/.. Read responsible buyer details.

"      READ TABLE lt_orgdata ASSIGNING FIELD-SYMBOL(<fs_orgdata>) INDEX 1.
"      IF sy-subrc EQ 0.
"        lv_purch_grp  = <fs_orgdata>-proc_group_id.
"      ENDIF.

"      IF lo_info IS NOT BOUND.
"        CREATE OBJECT lo_info.
"      ENDIF.

"      CALL METHOD lo_info->get_buyer_from_purch_group
"        EXPORTING
"          iv_purch_grp = lv_purch_grp
"        IMPORTING
"          ev_buyer_id  = DATA(lv_buyer).

"*       Begin of changes by KAUSING*npscc-27757*
"      IF lv_pnc_flag IS NOT INITIAL.
"        DATA(ls_new_item) = VALUE #( lt_item[ guid = lv_pred_item_guid ] OPTIONAL ).
"        IF ls_new_item IS NOT INITIAL.
"          DATA(lv_pred_prod) = ls_new_item-ordered_prod.
"          NEW zcl_part_creation( )->concatenate_basic_part_es1_es2(
"              EXPORTING
"                im_es1 = CONV #( lv_succ_es1 )
"                im_es2 = CONV #( lv_succ_es2 )
"                im_basic_part = CONV #( lv_succ_part )
"             IMPORTING
"               ex_part_no = DATA(lv_input_partno1) ).

"*         Fetch Item codes
"          lr_itemcode_type = VALUE #(
"                              ( sign = 'I' option = 'EQ' low = lv_item_code_type ) ).
"          SELECT itemcode_type,
"                 source_item_code,
"                 item_code_ext
"            FROM zmat_config
"            INTO TABLE @DATA(at_mat_config)
"            WHERE itemcode_type IN @lr_itemcode_type.
"          IF sy-subrc IS NOT INITIAL.
"            CLEAR at_mat_config[].
"          ENDIF.
"          ls_new_item-ordered_prod = lv_input_partno1.
"          DATA(ls_mat_config) = COND #( WHEN line_exists( at_mat_config[ itemcode_type = lv_item_code_type ] )
"                                    THEN at_mat_config[ itemcode_type = lv_item_code_type  ] ).

"          IF ls_mat_config-source_item_code <> '0'.
"            ls_new_item-ordered_prod = |{ lv_input_partno1 }{ ls_mat_config-item_code_ext }|.
"          ENDIF.
"          ls_new_item-zdisp_number = '1'.
"          CLEAR: ls_new_item-pmnttrms,ls_new_item-pack_term,ls_new_item-return_term, lt_item[].
"          APPEND ls_new_item TO lt_item[].
"        ENDIF.
"      ENDIF.
"*      End of changes by KAUSING*27757
"*       Begin of changes by KAUSING*npscc 31966
"      rt_part = VALUE #( FOR ls_item_prod IN lt_item
"                            ( sign = 'I' option = 'EQ' low = ls_item_prod-ordered_prod )
"                        ).
"      DELETE rt_part WHERE low IS INITIAL.
"      IF rt_part IS NOT INITIAL.
"        SELECT a~product_id, a~product_guid, b~langu, b~short_text
"          FROM comm_product AS a
"          INNER JOIN comm_prshtext AS b
"          ON b~product_guid = a~product_guid
"        INTO TABLE @DATA(lt_product_descr)
"        WHERE a~product_id IN @rt_part.
"        IF sy-subrc IS INITIAL.
"          SORT lt_product_descr BY product_id.

"          SELECT company_code,
"                 plant,
"                 output_language,
"                 first_alt_lang,
"                 second_alt_lang,
"                 third_alt_lang
"            FROM zpart_lang
"            INTO TABLE @DATA(lt_part_lang)
"            WHERE object_type = 'BUS2000113'
"            AND ( company_code EQ @ls_pd_header_d-co_code
"            OR    company_code EQ '*' )
"            AND output_language IN ( @ls_pd_header_d-zlanguage, @sy-langu ).
"          IF sy-subrc IS INITIAL.
"            SORT lt_part_lang BY company_code plant output_language.
"          ENDIF.
"        ENDIF.
"      ENDIF.
"      CLEAR rt_part[].
"*     Begin of changes by KAUSING*npscc 24077*11/10/2019
"      IF lv_quota_ctr_cr IS NOT INITIAL AND lt_dis IS NOT INITIAL.
"        SELECT SINGLE  b~partner_guid
"          FROM bbp_locmap AS a
"          INNER JOIN but000 AS b
"          ON a~partner_no = b~partner
"          INTO @DATA(lv_plant_guid)
"          BYPASSING BUFFER
"          WHERE a~ext_locno EQ @lv_plant
"          AND a~partner_no IS NOT NULL.
"        IF sy-subrc IS INITIAL.
"          DELETE lt_dis WHERE location NE lv_plant_guid.
"          ra_item_guid = VALUE #( FOR ls_dis IN lt_dis
"                                        ( sign = 'I'
"                                          option = 'EQ'
"                                          low = ls_dis-p_guid ) ).
"          DELETE lt_item WHERE guid NOT IN ra_item_guid.
"        ENDIF.
"      ENDIF.
"*     End of changes by KAUSING*npscc 24077*11/10/2019
"*"==={-B-SP36_US#2936/12240_PR/CTR:Create NPM CTR from PR- By NIhar-23May18
"*"-- As the above standard FM not returing Item Price_unit correctly (Ex - 2999205169)
"      IF lt_item[] IS NOT INITIAL.
"        SELECT a~guid,                        "--BugFix_SP39_US#12966/12968/11197,To Display COmm_code as per Buyer BU -- By NIhar
"               a~price_unit,
"               b~ordered_prod
"          FROM bbp_pdigp AS a INNER JOIN crmd_orderadm_i AS b
"           ON  a~guid = b~guid
"          INTO TABLE @DATA(lt_item_price_unit)
"          FOR ALL ENTRIES IN @lt_item
"          WHERE a~guid = @lt_item-guid .

"        IF sy-subrc EQ 0.
"          SORT lt_item_price_unit BY guid .
"        ENDIF.
"*{ BOC -RKORADA - NPSCC-26596 - INT Error message "price type" occured although price was added to the item
"********* BOC - MONSING - NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"        rt_item_guid = VALUE #( FOR ls_item IN lt_item WHERE ( guid IS NOT INITIAL )
"                                    ( sign = 'I'
"                                      option = 'EQ'
"                                      low = ls_item-guid ) ).
"        IF rt_item_guid IS NOT INITIAL.
"********* EOC - MONSING - NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"          IF lv_ctr_ref_type EQ 'PM' OR  " By SOPABBA_US# NPSCC-29273
"             ( lv_ctr_ref_type EQ 'NPM' AND ls_pd_header_d-zplantassign_ind = 'I' ). "Bug# 30177 by SWDENDI
"*        IF ls_pd_helv_ctr_ref_type EQ 'PM'ader_d-process_type EQ 'PM'
"*          OR ls_pd_header_d-process_type EQ 'ZTP' ." By SOPABBA_US# NPSCC-25480

"            SELECT bbp_item_guid, kschl, kbetr , kpein,
"              timestamp_to, timestamp_from "++ SRINIV for US 30891
"              FROM /1cn/abpsap068
"              INTO TABLE @DATA(lt_cnd_inf)
"*            FOR ALL ENTRIES IN @lt_item "BY MONSING : NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"              WHERE bbp_item_guid IN  @rt_item_guid "BY MONSING : NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"              AND kschl = '01CT'
"              AND release_status = @abap_false.
"*            INTO TABLE @DATA(lt_cnd_inf).
"            IF sy-subrc EQ 0.
"              SORT lt_cnd_inf BY bbp_item_guid ASCENDING timestamp_from DESCENDING timestamp_to DESCENDING. "++ SRINIV for US 30891.
"            ENDIF.
"          ELSE.
"            SELECT bbp_item_guid, kschl, kbetr , kpein,
"              timestamp_to, timestamp_from "++ SRINIV for US 30891
"              FROM /1cn/abpsap016
"              INTO TABLE @lt_cnd_inf
"*            FOR ALL ENTRIES IN @lt_item "BY MONSING : NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"              WHERE bbp_item_guid IN  @rt_item_guid "BY MONSING : NPSCC- 28500 Performance Optimization of long running SQL statements (PC app)
"              AND kschl = '01CT'
"              AND release_status = @abap_false.
"*            INTO TABLE @lt_cnd_inf.
"            IF sy-subrc EQ 0.
"              SORT lt_cnd_inf BY bbp_item_guid ASCENDING timestamp_from DESCENDING timestamp_to DESCENDING. "++ SRINIV for US 30891.
"            ENDIF.
"          ENDIF.
"*} EOC RKORADA - NPSCC-26596 - INT Error message "price type" occured although price was added to the item
"        ENDIF.
"      ENDIF.

"*"===}-E-SP36_US#2936/12240_PR/CTR:Create NPM CTR from PR- By NIhar-23May18

"* HTALESR++ - US-10749
"* Types declaration for uom text table.
"      TYPES: BEGIN OF ty_t006a,
"               spras TYPE spras,
"               msehi TYPE msehi,
"               mseht TYPE mseht,
"               msehl TYPE msehl,
"             END OF ty_t006a.
"* itab.
"      DATA: lt_t006a TYPE TABLE OF ty_t006a.
"      IF NOT lt_item[] IS INITIAL.
"* fetch the uom and its desc in the logon language
"* from T006A table.
"        SELECT spras msehi mseht msehl FROM t006a
"          INTO TABLE lt_t006a
"          FOR ALL ENTRIES IN lt_item
"          WHERE spras = sy-langu
"            AND msehi = lt_item-unit.
"        IF sy-subrc = 0.
"          SORT lt_t006a BY msehi.
"        ENDIF.
"      ENDIF.
"* HTALESR-- - US-10749

"*//.. Move contract header status
"      CREATE OBJECT lcl_contract_app.
"      CALL METHOD lcl_contract_app->get_contract_header_status
"        EXPORTING
"          im_ctr_head_guid = ls_pd_header_d-guid "lv_ctr_no        " Venky 8872
"*         it_status        = lt_status
"        IMPORTING
"          e_status         = lv_ctr_status
"          e_status_text    = lv_ctr_status_text.

"      IF  sy-subrc EQ 0
"      AND lt_item[] IS NOT INITIAL .
"*{ BOC - RKORADA - US# 2985
"        DELETE lt_conditions WHERE del_ind EQ 'X'.
"        MOVE : lt_conditions TO lt_conditions_asc,
"               lt_conditions TO lt_conditions_desc.
"        SORT lt_conditions_asc BY p_guid ASCENDING date_from ASCENDING.
"        SORT lt_conditions_desc BY p_guid ASCENDING date_to DESCENDING.
"*} EOC - RKORADA - US# 2985
"        SORT lt_item BY zdisp_number .                            " Venky - Sorting changed from number_int to disp_number
"*"--{ BOC- US# 2976 -Fiori App Contract Item - Define Quantity to line item - By TTHIRUM
"        TYPES: BEGIN OF ty_unitdec,
"                 msehi      TYPE bbp_unit,
"                 unit_decan TYPE decan,
"               END OF ty_unitdec.

"        DATA: lt_unitdec TYPE STANDARD TABLE OF ty_unitdec.
"* Fetch decimal value from table T006
"        SELECT msehi decan INTO TABLE lt_unitdec
"        FROM t006
"        FOR ALL ENTRIES IN lt_item
"        WHERE msehi EQ lt_item-unit.

"        IF sy-subrc EQ 0.
"          SORT lt_unitdec BY msehi ASCENDING.
"        ENDIF.
"* BOC{ US#20333_Additional data for field PriceType & Translations_By SOPABBA
"* Using common table for Price Type
"*        SELECT Zprice_type, Ztype_desc
"*        INTO TABLE @DATA(lt_pricetype_desc)
"*          FROM Zpd_ptype
"*          WHERE object_type EQ   'BUS2000113'
"*          AND  spras            = @sy-langu .
"        SELECT zprice_type, ztype_desc
"        INTO TABLE @DATA(lt_pricetype_desc)
"          FROM zptype
"          WHERE zprice_type IS NOT NULL
"          AND spras = @sy-langu .
"* EOC} US#20333_Additional data for field PriceType & Translations_By SOPABBA
"        IF sy-subrc EQ 0.
"          SORT lt_pricetype_desc BY zprice_type.
"        ENDIF.
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"        IF ls_pd_header_d-process_type = 'NPM'
"            AND lv_transfer_to_ctr_type = 'ZIPS'.
"          APPEND VALUE #( sign = 'I' option = 'EQ' low = ls_pd_header_d-pmnttrms ) TO lr_pay_term.
"          APPEND VALUE #( sign = 'I' option = 'EQ' low = ls_pd_header_d-pack_term ) TO lr_pack_term.
"          APPEND VALUE #( sign = 'I' option = 'EQ' low = ls_pd_header_d-return_term ) TO lr_ret_term.
"        ELSE.
"          lr_pay_term = VALUE #( FOR <fs_itm> IN lt_item
"                                 ( sign = 'I' option = 'EQ' low = <fs_itm>-pmnttrms ) ).
"          lr_pack_term = VALUE #( FOR <fs_itm> IN lt_item
"                                 ( sign = 'I' option = 'EQ' low = <fs_itm>-pack_term ) ).
"          lr_ret_term = VALUE #( FOR <fs_itm> IN lt_item
"                                 ( sign = 'I' option = 'EQ' low = <fs_itm>-return_term ) ).
"        ENDIF.
"        DELETE lr_pay_term WHERE low IS INITIAL.
"        DELETE lr_pack_term WHERE low IS INITIAL.
"        DELETE lr_ret_term WHERE low IS INITIAL.
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"        " Get short desc of payments terms for all items.   US-3005 ( SRTHATI )
"        IF lr_pay_term IS NOT INITIAL.                 "US# NPSCC-26113_BY SOPABBA
"          SELECT payment_term pterm_text
"                 FROM zpterm_date
"                 INTO TABLE lt_pmnt_text
"                 WHERE payment_term IN lr_pay_term.    "US# NPSCC-26113_BY SOPABBA
"*                 FOR ALL ENTRIES IN lt_item
"*                 WHERE payment_term = lt_item-pmnttrms.
"          IF sy-subrc EQ 0.
"            SORT lt_pmnt_text BY pmnttrms ASCENDING.
"          ENDIF.
"        ENDIF.

"*"===={BOC-SP32-US#3008--Define packaging + return terms on Plant/Item level(PM) of CTR - by Nihar_26Feb18
"        IF lr_pack_term IS NOT INITIAL.
"          SELECT pack_term,
"                 name1
"                FROM zpac_term
"                INTO TABLE @DATA(lt_pkttrm_text)
"                WHERE pack_term IN @lr_pack_term
"*                FOR ALL ENTRIES IN @lt_item
"*                WHERE pack_term = @lt_item-pack_term
"                AND  spras = @sy-langu.
"          IF sy-subrc EQ 0.
"            SORT lt_pkttrm_text BY pack_term ASCENDING.
"          ENDIF.
"        ENDIF.
"        IF lr_ret_term IS NOT INITIAL.
"          SELECT absgr,
"            absgr_text
"           FROM zreturn_trm
"           INTO TABLE @DATA(lt_rtntrm_text)
"           WHERE absgr IN @lr_ret_term
"*           FOR ALL ENTRIES IN @lt_item
"*           WHERE absgr = @lt_item-return_term
"           AND  spras = @sy-langu.
"          IF sy-subrc EQ 0.
"            SORT lt_rtntrm_text BY absgr ASCENDING.
"          ENDIF.
"        ENDIF.
"*"====}EOC-SP32-US#3008--Define packaging + return terms on Plant/Item level(PM) of CTR - by Nihar_26Feb18

"* "--BugFix_SP39_US#12966/12968/11197, To Display COmm_code as per Buyer BU By NIhar -- B--

"        LOOP AT lt_item ASSIGNING FIELD-SYMBOL(<fs_item_part>)
"                                              WHERE del_ind NE 'X'.

"          IF  <fs_item_part>-ordered_prod IS NOT INITIAL.
"            SPLIT <fs_item_part>-ordered_prod AT '_' INTO DATA(lv_prod) DATA(lv_itemcodetype).

"            IF NOT ( <fs_item_part>-ordered_prod CP 'B9*' AND lv_itemcodetype EQ 'A0' ).  "US#16888_By NRANASI
"              APPEND INITIAL LINE TO rt_part ASSIGNING FIELD-SYMBOL(<fs_part>).

"              MOVE :   'I'      TO <fs_part>-sign,
"                       'EQ'     TO <fs_part>-option,
"                      <fs_item_part>-ordered_prod TO <fs_part>-low.
"              TRANSLATE <fs_part>-low TO UPPER CASE.

"              APPEND INITIAL LINE TO rt_prod_guid ASSIGNING FIELD-SYMBOL(<fs_prod>).

"              MOVE :   'I'      TO <fs_prod>-sign,
"                       'EQ'     TO <fs_prod>-option,
"                      <fs_item_part>-product TO <fs_prod>-low.
"              TRANSLATE <fs_prod>-low TO UPPER CASE.

"            ENDIF.
"            CLEAR: lv_prod, lv_itemcodetype.
"          ENDIF.
"**** BOC NPSCC 29810 BUG FIX BY MONSING
"          IF <fs_item_part>-gtin IS NOT INITIAL.
"            APPEND VALUE #( sign = 'I' option = 'EQ' low = <fs_item_part>-gtin ) TO rt_part.
"          ENDIF.
"**** EOC NPSCC 29810 BUG FIX BY MONSING
"        ENDLOOP.
"* BOC US 22315_SOPABBA/SWDENDI
"        IF rt_prod_guid IS NOT INITIAL.
"*   Populate the text IDs
"          DATA(lr_text_ids) = VALUE tspsrid(  sign = 'I' option = 'EQ' ( low = 'BASE') ( low = 'INSP') ).
"*         Populate the Object ID
"          DATA(lr_text_obj) = VALUE tspsrobj( sign = 'I' option = 'EQ' ( low = 'PRODUCT' ) ).
"*           Get the Product text
"          NEW zcl_contract_app( )->get_partno_text(
"            EXPORTING
"              im_object = lr_text_obj                                        " SAPscript Programming Interface: Ranges for text objects
"              im_name   = rt_prod_guid                                       " SAPscript Programming Interface: Ranges für text names
"              im_id     = lr_text_ids                                        " SAPscript Programming Interface: Ranges for Text IDs
"            IMPORTING
"              ex_text   = DATA(lt_so10_text) ).                                      " Long text
"        ENDIF.
"* EOC US 22315_SOPABBA/SWDENDI

"        IF rt_part[] IS NOT INITIAL.
"* {BoC by SOPABBA US# 22830 - Adjust Fiori UX display for local parts

"          SELECT product_guid, product_id, char_name, char_value
"           FROM zparts_char
"           INTO TABLE @DATA(lt_parts_char)
"           WHERE product_guid IS NOT NULL
"             AND product_id IN @rt_part
"             AND char_name IN ( '2', '3', '16', '17', '32', '19' ) .

"          IF sy-subrc EQ 0.
"            SORT lt_parts_char BY product_guid product_id char_name.

"            rt_src_itemcode = VALUE #( FOR ls_part_char IN lt_parts_char
"                                         WHERE ( char_name EQ '32' )
"                                             ( sign = 'I' option = 'EQ' low = ls_part_char-char_value ) ).

"            SELECT itemcode_type, source_item_code,
"                   item_code_description, item_code_ext
"              FROM zmat_config
"              INTO TABLE @DATA(lt_mat_config)
"              WHERE itemcode_type IS NOT NULL    " VF Fix SOPABBA
"                AND source_item_code IN @rt_src_itemcode.

"            IF sy-subrc NE 0.
"              CLEAR lt_mat_config.
"            ENDIF.
"          ENDIF.

"* }EoC by SOPABBA US# 22830 - Adjust Fiori UX display for local parts
"          CALL METHOD lo_info->get_comm_code_for_partno
"            EXPORTING
"              it_srh_part          = rt_part
"              iv_responsible_buyer = lv_buyer
"            IMPORTING
"              et_part_number       = DATA(lt_partno).

"*{ BoC - RKORADA - NPSCC-2990 - Display supplier part No
"          IF lt_sel_columns IS INITIAL
"            OR line_exists( lt_sel_columns[ table_line = 'SUPP_PART_NO' ] ).

"            DATA(lt_part) = VALUE comt_product_id_tab(
"                              FOR <fs_s4_part> IN rt_part
"                           ( CONV #( <fs_s4_part>-low ) ) ) .

"*       RFC FM to read part supplier relation data from  S4.
"            CALL FUNCTION 'RFC_CALLBACK_REJECTED'.
"*       Read the data from s4
"            CALL FUNCTION 'ZFETCH_PART_SUP_REL' DESTINATION lv_rfc_dest
"              EXPORTING
"                im_item_code          = lt_part
"              IMPORTING
"                ex_response_dtl       = lt_s4_supp_part
"              EXCEPTIONS
"                unknown_item          = 1
"                communication_failure = 10
"                system_failure        = 15
"                OTHERS                = 20.
"            IF sy-subrc NE 0.
"              CLEAR lt_s4_supp_part.
"            ENDIF.

"          ENDIF.
"*} EoC - RKORADA - NPSCC-2990  Display supplier part No

"        ENDIF .
"*&-----------------------------------------------------------------------------------
"**Begin of changes by Gsamina US-13056
"************************************************************************
"****** Begin of Insert by  <VMANCHA>
"        IF ( lv_ctr_ref_type = 'PM'  " By SOPABBA_US# NPSCC-29273
"*        IF ( ls_pd_header_d-process_type = 'PM'
"*         OR ls_pd_header_d-process_type = 'ZTP'   "By SOPABBA_US# NPSCC-25480
"           ) AND lv_pnc_flag EQ abap_false.
"          DATA(lo_ctr_epu) = NEW zcl_ctr_epu( ).
"*         Get the total doc AVOB and item related AVOB
"          lo_ctr_epu->get_epu_and_avob(
"                 EXPORTING im_ctr_header_guid = lv_ctr_guid
"                           im_mode            = 'ITEMS'
"                           im_liefmenge_type  = 'LiefMenge'
"                           im_period          = 'CY'
"                           im_icf             = lt_db_icf              " Venky US#14251
"                           im_items           = lt_item " Bug# 19675 by SWDENDI/SOPABBA
"                 IMPORTING ex_item_epu_and_avob = DATA(lt_item_epu_avob) ).
"        ENDIF.
"****** End of Insert by  <VMANCHA>
"************************************************************************
"**End of changes by Gsamina US-13056
"*&-----------------------------------------------------------------------------------

"*        TYPES : BEGIN OF ty_cat ,    "--By Nihar_optimixation-B
"*                  category_id TYPE comt_category_id,
"*                END OF ty_cat .

"        DATA : it_cat1 TYPE TABLE OF comm_category,     " KAUSING*vforge fix
"               it_cat2 TYPE TABLE OF comm_category.  " KAUSING*vforge fix

"*       Begin of changes by KAUSING*vforge fix
"        it_cat1 = VALUE #( FOR ls_partno IN lt_partno
"                            ( category_id = ls_partno-category_id )
"                        ).

"        it_cat2 = VALUE #( FOR ls_item IN lt_item
"                             ( category_id = ls_item-category_id )
"                         ) .
"        APPEND LINES OF it_cat2 TO  it_cat1 .
"*        End of changes by KAUSING*vforge fix
"*        Begin of comments by KAUSING*vforge fix
"*        it_cat1 = CORRESPONDING #( lt_partno MAPPING comt_category_id = category_id  ) .
"*         APPEND CORRESPONDING #( lt_item MAPPING comt_category_id = category_id ) TO it_cat1.
"*        APPEND LINES OF it_cat2 TO  it_cat1 .
"*        End of commetns by KAUSING*vforge fix
"        IF it_cat1[] IS NOT INITIAL."KAUSING*vforge fix*
"          SELECT categoryid ,
"                categorydesc
"          FROM zcommcode
"          FOR ALL ENTRIES IN @it_cat1                                            "Zcomm_code
"          WHERE categoryid EQ @it_cat1-category_id
"          INTO TABLE @DATA(lt_commodity_desc).
"          IF sy-subrc EQ 0.
"            SORT lt_commodity_desc BY categoryid .
"          ENDIF.                      "--By Nihar_optimixation-E
"        ENDIF.    "KAUSING*vforge fix*

"* "--BugFix_SP39_US#12966/12968/11197,To Display COmm_code as per Buyer BU--By NIhar-- E--
"***B{ US_12071 - By SOPABBA
"        lo_info->get_country_list(
"                   EXPORTING im_language_key  = sy-langu
"                   IMPORTING ex_all_countries = DATA(lt_all_countries) ).
"        SORT lt_all_countries BY country.
"***}E US_12071 - By SOPABBA
"*"--{ EOC- US# 2976 -Fiori App Contract Item - Define Quantity to line item - By TTHIRUM

"*       Begin of changes by KAUSING*npscc 24077*09/10/2019
"        IF lv_quota_ctr_cr IS NOT INITIAL AND lv_part IS NOT INITIAL.
"          DELETE lt_item WHERE ordered_prod NE lv_part.
"        ENDIF.
"*      NEW Zcl_part_creation( )->concatenate_basic_part_es1_es2(
"*          EXPORTING
"*            im_es1 = lv_
"*            im_es2 = <fs_fiori_item>-succ_es2
"*            im_basic_part = <fs_fiori_item>-succ_product_id
"*         IMPORTING
"*           ex_part_no = DATA(lv_input_partno1) ).


"*       End of changes by KAUSING*npscc 24077*09/10/2019

"        DELETE lt_item WHERE del_ind EQ 'X'.
"        DESCRIBE TABLE lt_item LINES DATA(lv_lines).
"* BOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA
"        IF lv_ctr_guid IS NOT INITIAL.
"          SELECT ctr_item_guid, pr_obj_typ, pr_guid
"             FROM zctr_itm_link( p_ctr_guid = @lv_ctr_guid )
"            WHERE ctr_head_guid = @lv_ctr_guid
"            INTO TABLE @DATA(lt_ctr_itm_link).
"          IF sy-subrc <> 0.
"            CLEAR lt_ctr_itm_link.
"          ENDIF.
"        ENDIF.
"* EOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA

"*BOC by SHENVIA for US 28410
"* Get the BPO line number and part tooling number from Zsupp_bpo table.
"        IF lt_item IS NOT INITIAL.
"          SELECT part_number,
"                 supplier_no,
"                 bpo,
"                 bpo_line_number,
"                 tool_priority
"            FROM zsupp_bpo
"            INTO TABLE @DATA(lt_supp_bpo)
"            FOR ALL ENTRIES IN @lt_item
"            WHERE part_number = @lt_item-ordered_prod
"            AND supplier_no = @lv_supplier.
"          IF sy-subrc EQ 0.
"            SORT lt_supp_bpo BY part_number.

"* Read the Domain values
"            CALL FUNCTION 'DDUT_DOMVALUES_GET'
"              EXPORTING
"                name          = 'ZTOOLING'
"*               LANGU         = SY-LANGU
"              TABLES
"                dd07v_tab     = lt_dd07v
"              EXCEPTIONS
"                illegal_input = 1
"                OTHERS        = 2.
"            IF sy-subrc NE 0.
"              CLEAR lt_dd07v.
"            ENDIF.
"          ENDIF.
"        ENDIF.
"*EOC by SHENVIA for US 28410

"        LOOP AT lt_item ASSIGNING FIELD-SYMBOL(<fs_item>)
"                                          WHERE del_ind NE 'X'.
"*         Begin of changes by KAUSING*NPSCC 22130*16/07/2019
"          IF lv_transfer_flag IS NOT INITIAL AND <fs_item>-zctr_item_cancel IS NOT INITIAL.
"*            Ignore the cancelled line items
"            CONTINUE.
"          ENDIF.
"*         End of changes by KAUSING*NPSCC 22130*16/07/2019
"          lw_ctr_item-max_item_no     =  lv_lines.
"          lw_ctr_item-object_id       =  ls_pd_header_d-object_id. "lv_ctr_no . "Venky 8872
"          lw_ctr_item-ctr_header_guid =  ls_pd_header_d-guid.      "lv_ctr_no . "Venky 8872
"          lw_ctr_item-contracttype    =  ls_pd_header_d-process_type.
"*==={BOC -SP34_US#11748-: Fiori App PC : Show Globus lock indicator for PC-- By Nihar
"          lw_ctr_item-created_system =  ls_pd_header_d-zcreated_sys .
"          IF  ls_pd_header_d-zcreated_sys = 'N'.
"            lw_ctr_item-created_system_desc     = TEXT-010. " 'Created in NPS' .
"          ELSEIF ls_pd_header_d-zcreated_sys = 'G' .
"*            lw_ctr_item-created_system_desc    = 'Created in Globus' .  "kausing*NPSCC-23411
"            lw_ctr_item-created_system_desc = TEXT-011. "'Locked by GLOBUS'.  "kausing*npscc-23411
"          ENDIF.
"*===}EOC -SP34_US#11748-: Fiori App PC : Show Globus lock indicator for PC-- By Nihar

"          lw_ctr_item-ctr_status = lv_ctr_status.                     "--{BOC - RKORADA - US# 9013
"          lw_ctr_item-ctr_status_text = lv_ctr_status_text.           "--}EOC - RKORADA - US# 9013
"          lw_ctr_item-item_guid       = <fs_item>-guid.

"          lw_ctr_item-number_int      =  <fs_item>-number_int .
"          lw_ctr_item-item_num_sort   =  <fs_item>-number_int .       " NPSCC-25166 - RKORADA to enable with numeric data type
"          SHIFT lw_ctr_item-number_int LEFT DELETING LEADING '0'.

"          lw_ctr_item-disp_number     = <fs_item>-zdisp_number.  "--{BOC - RKORADA - US# 10177 - Renumbering item
"          SHIFT lw_ctr_item-disp_number LEFT DELETING LEADING '0'.    "--}EOC - RKORADA - US# 10177 - Renumbering item

"*{ BOC- NPSCC-25166 - RKORADA to enable with numeric data type
"          IF ls_pd_header_d-zcreated_sys <> 'N'." EQ 'G'. US# 25521 by SWDENDI
"            MOVE lw_ctr_item-number_int TO lw_ctr_item-disp_number.
"          ENDIF.
"*} EOC- NPSCC-25166 - RKORADA to enable with numeric data type
"          IF lv_snc_flag IS NOT INITIAL. "US# 29958 by SWDENDI
"            lv_item_number = lv_item_number + 1.
"            lw_ctr_item-disp_number = lv_item_number.
"            SHIFT lw_ctr_item-disp_number LEFT DELETING LEADING '0'.
"          ENDIF.
"*       Begin of changes by KAUSING*npscc 31966
"          DATA(ls_part_lang) = VALUE #( lt_part_lang[ company_code = ls_pd_header_d-co_code
"                                                      output_language = ls_pd_header_d-zlanguage ] OPTIONAL ).
"          IF ls_part_lang IS INITIAL.
"            ls_part_lang = VALUE #( lt_part_lang[ company_code = '*' output_language = ls_pd_header_d-zlanguage ] OPTIONAL ).
"          ENDIF.
"          IF ls_part_lang IS INITIAL.
"            ls_part_lang = VALUE #( lt_part_lang[ company_code = ls_pd_header_d-co_code
"                                                  output_language = sy-langu ] OPTIONAL ).
"            IF ls_part_lang IS INITIAL.
"              ls_part_lang = VALUE #( lt_part_lang[ company_code = '*' output_language = sy-langu ] OPTIONAL ).
"            ENDIF.
"          ENDIF.
"          IF ls_part_lang IS NOT INITIAL.
"            IF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-output_language ] ).
"              lw_ctr_item-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-output_language ]-short_text OPTIONAL ).
"            ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-first_alt_lang ] ).
"              lw_ctr_item-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-first_alt_lang ]-short_text OPTIONAL ).
"            ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-second_alt_lang ] ).
"              lw_ctr_item-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-second_alt_lang ]-short_text OPTIONAL ).
"            ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-third_alt_lang ] ).
"              lw_ctr_item-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = ls_part_lang-third_alt_lang ]-short_text OPTIONAL ).
"            ELSEIF line_exists( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = 'E' ] ).
"              lw_ctr_item-description = VALUE #( lt_product_descr[ product_id = <fs_item>-ordered_prod langu = 'E' ]-short_text OPTIONAL ).
"            ENDIF.
"          ENDIF.

"          IF lw_ctr_item-description IS INITIAL.
"*       End of changeby KAUSING*NPSCC 31966
"            lw_ctr_item-description     =  <fs_item>-description .
"          ENDIF.
"          lw_ctr_item-product_id      =  <fs_item>-ordered_prod .
"          lw_ctr_item-ordered_prod      =  <fs_item>-ordered_prod .

"          READ TABLE lt_partno ASSIGNING FIELD-SYMBOL(<fs_item_partno>)
"            WITH KEY ordered_prod = <fs_item>-ordered_prod BINARY SEARCH .

"          IF sy-subrc EQ 0.
"            lw_ctr_item-commodity_code  =  <fs_item_partno>-category_id .

"          ELSE.       "-- Incase free text/material

"            lw_ctr_item-commodity_code  =  <fs_item>-category_id .

"          ENDIF.
"          IF lw_ctr_item-commodity_code IS NOT INITIAL .

"            IF line_exists( lt_commodity_desc[ categoryid = lw_ctr_item-commodity_code ] ) .
"              lw_ctr_item-commoditycode_description = lt_commodity_desc[ categoryid = lw_ctr_item-commodity_code ]-categorydesc .
"            ENDIF.

"          ENDIF .          "--By Nihar_optimixation-E

"* "--BugFix_SP39_US#12966/12968/11197,To Display COmm_code as per Buyer BU--By NIhar--E--
"*"==={-B-SP36_US#2936/12240_PR/CTR:Create NPM CTR from PR- By NIhar-23May18
"*"-- Below code commented as Standard FM is not returning Item Price_Unit correctly (Ex - 2999205169)
"*{ BoC-RKORADA - NPSCC-27986 - [QA] CoEx: UO incorrect after transfer
"*          READ TABLE lt_item_price_unit ASSIGNING FIELD-SYMBOL(<fs_item_price_unit>)
"*            WITH KEY guid = <fs_item>-guid .
"*          IF sy-subrc EQ 0.
"*            lw_ctr_item-price_unit = <fs_item_price_unit>-price_unit .
"*          ENDIF.
"          lw_ctr_item-price_unit = VALUE #( lt_cnd_inf[ bbp_item_guid = <fs_item>-guid ]-kpein OPTIONAL ).
"*} EoC-RKORADA - NPSCC-27986 - [QA] CoEx: UO incorrect after transfer
"*"===}-E-SP36_US#2936/12240_PR/CTR:Create NPM CTR from PR- By NIhar-23May18

"*"--{ BOC -US# 8162-Fiori App CTR - Edit and Display Mode function with STATUS  - By Nihar
"          lw_ctr_item-price     = <fs_item>-price.
"*/RKORADA - NPSCC-26596 - INT Error message "price type" occured although price was added to the item
"          IF <fs_item>-price IS INITIAL .
"            lw_ctr_item-price = VALUE #( lt_cnd_inf[ bbp_item_guid = <fs_item>-guid ]-kbetr OPTIONAL ).
"          ENDIF.
"          lw_ctr_item-quantity  = <fs_item>-quantity .
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"          IF ls_pd_header_d-process_type = 'NPM'
"           AND ( lv_transfer_to_ctr_type = 'ZIPS' OR
"          ( lv_copy_flag = abap_true AND ls_pd_header_d-zplantassign_ind = 'I' ) ).
"            lw_ctr_item-quantity = '1'.
"          ENDIF.
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"          lw_ctr_item-unit      = <fs_item>-unit.
"          lw_ctr_item-zgs       = <fs_item>-zzgs .                 "--SP36-US#2936 -Create NPM contract from purchase requisition_By Nihar

"          READ TABLE lt_t006a ASSIGNING FIELD-SYMBOL(<fs_t006a>)        "--{-B- * HTALESR++ - US-10749
"            WITH KEY msehi = lw_ctr_item-unit BINARY SEARCH.
"          IF sy-subrc = 0.
"            lw_ctr_item-unit_text = <fs_t006a>-msehl.
"          ENDIF.                                                        "--}-E- * HTALESR++ - US-10749

"          lw_ctr_item-currency  = <fs_item>-currency.

"* HTALESR++ - US-10338
"          READ TABLE lt_currdesc ASSIGNING FIELD-SYMBOL(<fs_currdesc>) WITH KEY waers = <fs_item>-currency BINARY SEARCH.
"          IF sy-subrc = 0.
"            lw_ctr_item-curr_desc = <fs_currdesc>-ltext.
"          ENDIF.
"* HTALESR-- - US-10338
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"          IF ls_pd_header_d-process_type = 'NPM'
"              AND lv_transfer_to_ctr_type = 'ZIPS'.
"            lw_ctr_item-payment_terms = ls_pd_header_d-pmnttrms.
"            lw_ctr_item-pack_term     = ls_pd_header_d-pack_term.
"            lw_ctr_item-return_term   = ls_pd_header_d-return_term.
"          ELSE.
"            lw_ctr_item-payment_terms  = <fs_item>-pmnttrms.
"            lw_ctr_item-pack_term      = <fs_item>-pack_term.
"            lw_ctr_item-return_term    = <fs_item>-return_term.
"          ENDIF.
"          lw_ctr_item-paymnt_shortdesc = VALUE #( lt_pmnt_text[ pmnttrms = lw_ctr_item-payment_terms ]-pmnt_text
"                                                  OPTIONAL ).
"          lw_ctr_item-pack_term_shorttext = VALUE #( lt_pkttrm_text[ pack_term = lw_ctr_item-pack_term ]-name1
"                                                  OPTIONAL ).
"          lw_ctr_item-return_term_shorttext = VALUE #( lt_rtntrm_text[ absgr = lw_ctr_item-return_term ]-absgr_text OPTIONAL ).
"********* Begin of changes for US-3005 (SRTHATI) **********
"*          IF <fs_item>-pmnttrms IS NOT INITIAL.
"*            lw_ctr_item-payment_terms  = <fs_item>-pmnttrms.
"*            " Get the long text of payment term
"*            " Get the short desc of payment term.
"*
"*            READ TABLE lt_pmnt_text INTO ls_pmnt_text
"*                 WITH KEY pmnttrms = <fs_item>-pmnttrms BINARY SEARCH.
"*            IF sy-subrc IS INITIAL.
"*              lw_ctr_item-paymnt_shortdesc = ls_pmnt_text-pmnt_text.
"*            ENDIF.
"*          ENDIF.
"********* END of changes for US-3005 (SRTHATI) **********
"*
"**"===={BOC-SP32-US#3008--Define packaging + return terms on Plant/Item level(PM) of CTR - by Nihar_26Feb18
"*          IF <fs_item>-pack_term IS NOT INITIAL.
"*            lw_ctr_item-pack_term  = <fs_item>-pack_term.
"*            " Get the long text of payment term
"*
"**            CLEAR lv_longtext.   "US# 13378 by SWDENDI
"**            lo_cls->get_payterm_incoterm_longtext(
"***                      EXPORTING im_payment_id = <fs_item>-pack_term
"**                      EXPORTING im_pktterm_id       = <fs_item>-pack_term
"**                      IMPORTING ex_package_longtext = lv_longtext ).
"**
"**            lw_ctr_item-pack_term_longtext = lv_longtext.
"*            " Get the short desc of payment term.
"*
"*            READ TABLE lt_pkttrm_text INTO DATA(ls_pkttrm_text)
"*                 WITH KEY pack_term = <fs_item>-pack_term BINARY SEARCH.
"*            IF sy-subrc IS INITIAL.
"*              lw_ctr_item-pack_term_shorttext = ls_pkttrm_text-name1.
"*            ENDIF.
"*          ENDIF.
"*
"*
"*          IF <fs_item>-return_term IS NOT INITIAL.
"*            lw_ctr_item-return_term  = <fs_item>-return_term.
"*            " Get the long text of payment term
"*
"**            CLEAR lv_longtext. "US# 13378 by SWDENDI
"**            lo_cls->get_payterm_incoterm_longtext(
"***                      EXPORTING im_payment_id = <fs_item>-pack_term
"**                      EXPORTING im_rtterm_id  =  <fs_item>-return_term
"**                      IMPORTING ex_return_longtext = lv_longtext ).
"**
"**            lw_ctr_item-return_term_longtext = lv_longtext.
"*            " Get the short desc of payment term.
"*
"*            READ TABLE lt_rtntrm_text INTO DATA(ls_rtntrm_text)
"*                 WITH KEY absgr = <fs_item>-return_term BINARY SEARCH.
"*            IF sy-subrc IS INITIAL.
"*              lw_ctr_item-return_term_shorttext = ls_rtntrm_text-absgr_text.
"*            ENDIF.
"*          ENDIF.
"**"====}EOC-SP32-US#3008--Define packaging + return terms on Plant/Item level(PM) of CTR - by Nihar_26Feb18
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"          lw_ctr_item-ps_subcon_item = <fs_item>-zsub_contract_flag.     "--US# 2995 - Set subcontracting flag on line items By TTHIRUM

"          lw_ctr_item-lta_flag = <fs_item>-zlta_flag.                    "SP_39-US_13815 Set Long term agreement flag By--TTHIRUM
"          lw_ctr_item-threeyp_flag = <fs_item>-z3yp_flag.                "SP_39-US_13815 Set Three years Policy Flag By--TTHIRUM


"*/BOC/. If fiori data is not available, Then read from data base           " FIORI Adjustments
"          lw_ctr_item-price_type = <fs_item>-zprice_type.
"          READ TABLE lt_pricetype_desc
"*/.. Fiori Adjustments
"            ASSIGNING FIELD-SYMBOL(<fs_price_type>)
"            WITH KEY zprice_type = lw_ctr_item-price_type
"            BINARY SEARCH.
"          IF sy-subrc EQ 0.
"            lw_ctr_item-price_type_desc = <fs_price_type>-ztype_desc.
"          ENDIF.
"          IF <fs_item>-itm_released IS INITIAL.
"            lw_ctr_item-cancelled = 'X'.
"          ENDIF.
"*/.. End of Fiori Adjustments

"*"==={-B-BugFix# 13028 [INT] No word wrap for long text in contract item descriptionBy Nihar_15May18

"          LOOP AT lt_longtext ASSIGNING FIELD-SYMBOL(<fs_long_text>)
"                                        WHERE guid = <fs_item>-guid
"                                          AND tdid = 'ITXT'.
"            CONCATENATE lw_ctr_item-supplier_text
"                        <fs_long_text>-tdline INTO lw_ctr_item-supplier_text ."SEPARATED BY space .

"          ENDLOOP .
"* BOC US 22315_SOPABBA/SWDENDI
"          IF <fs_item>-ordered_prod IS NOT INITIAL .
"            IF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP' tdlang = sy-langu ] ).
"              lw_ctr_item-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP'
"                                                         tdlang = sy-langu ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP' tdlang = 'E' ] ).
"              lw_ctr_item-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'INSP'
"                                                         tdlang = 'E' ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE' tdlang = sy-langu ] ).
"              lw_ctr_item-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE'
"                                                         tdlang = sy-langu ]-text.
"            ELSEIF line_exists( lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE' tdlang = 'E' ] ).
"              lw_ctr_item-item_long_desc = lt_so10_text[ tdname = <fs_item>-product  tdid   = 'BASE'
"                                                         tdlang = 'E' ]-text.
"            ENDIF.
"          ELSE.
"* EOC US 22315_SOPABBA/SWDENDI
"            LOOP AT lt_longtext ASSIGNING <fs_long_text>
"                                          WHERE guid = <fs_item>-guid
"                                           AND  tdid = 'ETXT'.
"**** BOC BY MONSING/SWDENDI #BUGFIX - NPSCC-30239  To preserve spaces at end of each line stored in backend

"              CALL METHOD cl_abap_string_utilities=>c2str_preserving_blanks
"                EXPORTING
"                  source = <fs_long_text>-tdline
"                IMPORTING
"                  dest   = DATA(lv_string).

"**** BOC BY MONSING/SWDENDI #BUGFIX - NPSCC-30239  To preserve spaces at end of each line stored in backend
"              CONCATENATE lw_ctr_item-item_long_desc
"                          lv_string INTO lw_ctr_item-item_long_desc ."SEPARATED BY space .

"            ENDLOOP .
"          ENDIF.
"*"===}-E-BugFix# 13028 [INT] No word wrap for long text in contract item descriptionBy Nihar_15May18

"*} EOC - RKORADA - Bug 10168
"*/EOC/. If fiori data is not available, Then read from data base           " FIORI Adjustments
"*"--{ BOC- US# 2976 -Fiori App Contract Item - Define Quantity to line item - By TTHIRUM
"          IF lw_ctr_item-unit IS NOT INITIAL.
"*           If UOM 'EA' decimal should be zero                         " VMANCHA US#20205
"            IF lw_ctr_item-unit = 'EA'.
"              CLEAR: lw_ctr_item-unit_decan.
"            ELSE.
"              READ TABLE lt_unitdec ASSIGNING FIELD-SYMBOL(<fs_decan>)
"                                    WITH KEY msehi = lw_ctr_item-unit BINARY SEARCH.
"*../ Assign Decimal value.
"              IF sy-subrc EQ 0.
"                lw_ctr_item-unit_decan = <fs_decan>-unit_decan.
"              ENDIF.
"            ENDIF.
"          ENDIF.
"*"--} EOC - US# 2976 -Fiori App Contract Item - Define Quantity to line item - By TTHIRUM
"* {BoC by SOPABBA US# 22830 - Adjust Fiori UX display for local parts
"*          SPLIT lw_ctr_item-product_id AT '_'
"*            INTO lw_ctr_item-product_id DATA(lv_itm_code).
"*          SPLIT lw_ctr_item-product_id AT space
"*            INTO lw_ctr_item-product_id lv_es1_es2.
"*
"*          MOVE :  lv_es1_es2+0(4)        TO lw_ctr_item-es1,
"*                  lv_es1_es2+5(4)        TO lw_ctr_item-es2.
"          lw_ctr_item-product_id = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                   char_name = '16' ]-char_value DEFAULT space ).
"          lw_ctr_item-print_product_id = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                 char_name = '19' ]-char_value DEFAULT space ).
"          IF lw_ctr_item-print_product_id IS INITIAL.
"*            lw_ctr_item-print_product_id = lw_ctr_item-product_id. "Bug 29288 SOPABBA
"            lw_ctr_item-print_product_id = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                   char_name = '16' ]-char_value DEFAULT space ).
"          ENDIF.
"          lw_ctr_item-es1 = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                 char_name = '2' ]-char_value DEFAULT space ).
"*          IF lw_ctr_item-es1 EQ space.     "Bug 29288 SOPABBA
"*            MOVE :  lv_es1_es2+0(4)        TO lw_ctr_item-es1.
"*          ENDIF.
"          lw_ctr_item-es2 = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                                 char_name = '3' ]-char_value DEFAULT space ).
"*          IF lw_ctr_item-es2 EQ space.   "Bug 29288 SOPABBA
"*            MOVE :  lv_es1_es2+5(4)        TO lw_ctr_item-es2.
"*          ENDIF.

"          DATA(lv_src_itemcode) = VALUE #( lt_parts_char[ product_id = <fs_item>-ordered_prod
"                                                           char_name = '32' ]-char_value DEFAULT space ).
"          DATA(ls_matconfig) = COND #( WHEN line_exists( lt_mat_config[ source_item_code = lv_src_itemcode  ]  )
"                                            THEN  lt_mat_config[ source_item_code = lv_src_itemcode  ] ).
"          lw_ctr_item-itemcodetype = ls_matconfig-itemcode_type.
"          lw_ctr_item-itemcodetype_desc = ls_matconfig-item_code_description.
"*** BEGIN OF CHANGES BY MONSING NPSCC-25808
"          lw_ctr_item-pred_ordered_prod =  <fs_item>-gtin.
"          lw_ctr_item-pred_root_matnr = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                                char_name = '16' ]-char_value DEFAULT space ).
"          lw_ctr_item-pred_printprodid = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                                 char_name = '19' ]-char_value DEFAULT space ).
"          IF lw_ctr_item-pred_printprodid IS INITIAL.

"            lw_ctr_item-pred_printprodid = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                                   char_name = '16' ]-char_value DEFAULT space ).
"          ENDIF.
"          lw_ctr_item-pred_es1 = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                                 char_name = '2' ]-char_value DEFAULT space ).

"          lw_ctr_item-pred_es2 = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                                 char_name = '3' ]-char_value DEFAULT space ).
"          CLEAR: lv_src_itemcode, ls_matconfig.
"          lv_src_itemcode = VALUE #( lt_parts_char[ product_id = <fs_item>-gtin
"                                                    char_name = '32' ]-char_value OPTIONAL ).
"          ls_matconfig = VALUE #( lt_mat_config[ source_item_code = lv_src_itemcode  ]  OPTIONAL ).
"          lw_ctr_item-pred_itemcodetype = ls_matconfig-itemcode_type.
"*          lw_ctr_item- = ls_matconfig-item_code_description.
"*** END OF CHANGES BY MONSING NPSCC-25808

"* }EoC by SOPABBA US# 22830 - Adjust Fiori UX display for local parts
"*"--} EOC -US# 8162-Fiori App CTR - Edit and Display Mode function with STATUS  - By Nihar

"*{ BOC - RKORADA - US# 9013
"          IF <fs_item>-zctr_released EQ 'X'.
"            MOVE 'X' TO lw_ctr_item-ctr_released.
"          ENDIF.
"*{ BOC - RKORADA - US# 3072
"          IF <fs_item>-itm_released IS INITIAL.
"            MOVE 'X' TO lw_ctr_item-cancelled.
"          ENDIF.
"*} EOC - RKORADA - US# 3072
"*} EOC - RKORADA - US# 9013
"*{ BOC - RKORADA - US# 2985
"*/.. Get item validity start
"          UNASSIGN <fs_pricecond> .
"          READ TABLE lt_conditions_asc
"            ASSIGNING <fs_pricecond> WITH KEY p_guid = <fs_item>-guid.
"          IF sy-subrc EQ 0.
"            MOVE <fs_pricecond>-date_from TO lw_ctr_item-validity_from.
"          ENDIF.
"*/.. Get item validity start
"          UNASSIGN <fs_pricecond> .
"          READ TABLE lt_conditions_desc
"            ASSIGNING <fs_pricecond> WITH KEY p_guid = <fs_item>-guid.
"          IF sy-subrc EQ 0.
"            MOVE <fs_pricecond>-date_to TO lw_ctr_item-validity_to.
"          ENDIF.
"*} EOC - RKORADA - US# 2985
"*         Begin of changes by KAUSING*npscc 22130*16/07
"          IF lv_transfer_flag IS NOT INITIAL.
"            IF NOT ( lw_ctr_item-validity_to GE lv_valid_from ).
"*              Skip this record.
"              CLEAR lw_ctr_item.
"              CONTINUE.
"            ELSE.
"              lw_ctr_item-validity_from = lv_valid_from + 1.
"              lw_ctr_item-validity_to = lv_valid_to.
"            ENDIF.
"          ENDIF.
"*         End of changes by KAUSING*npscc 22130*16/07
"* Boc US# 22139 by SWDENDI -- Extend
"          IF ( lv_valid_from BETWEEN  lw_ctr_item-validity_from AND lw_ctr_item-validity_to )
"            AND lv_extend_flag IS NOT INITIAL.
"            lw_ctr_item-validity_to = lv_valid_to.
"          ENDIF.
"* Eoc US# 22139 by SWDENDI -- Extend
"*        Begin of changes by KAUSING*npscc 27757*9/03
"          IF lv_pnc_flag IS NOT INITIAL AND lv_succ_date IS NOT INITIAL.
"            lw_ctr_item-validity_from = lv_succ_date.
"            lw_ctr_item-validity_to = |{ lv_succ_date+0(4) }{ '1231' }|."ls_pd_header_d-vper_end.
"            lw_ctr_item-succ_ordered_prod = lv_pred_prod.
"            CLEAR: lw_ctr_item-ctr_released,lw_ctr_item-cancelled.
"          ENDIF.
"*        End of changes by KAUSING*npscc 27757*19/03
"**--Begin of changes by Gsamina US-13056
"************************************************************************
"****** Begin of Insert by  <VMANCHA>
"*         Pass the details if entry exists
"          IF line_exists( lt_item_epu_avob[ item_guid = <fs_item>-guid ] )
"            AND lv_snc_flag = abap_false AND lv_extend_flag IS INITIAL. "US# 29958 by SWDENDI

"            lw_ctr_item-epu = lt_item_epu_avob[ item_guid = <fs_item>-guid ]-epu.
"            lw_ctr_item-avob = <fs_item>-zavob_value.             " Venky US#15357 (AVOB is getting calculated as zero bcz of price unit - 0)
"            lw_ctr_item-enable_epu_hyperlink = lt_item_epu_avob[ item_guid = <fs_item>-guid ]-epu_link_flag.

"          ENDIF.
"****** End of Insert by  <VMANCHA>
"************************************************************************

"**--End of changes by Gsamina US-13056
"***B{ US_12071 - By SOPABBA
"          IF lv_ctr_ref_type EQ 'PM' . " By SOPABBA_US# NPSCC-29273
"*          IF ls_pd_header_d-process_type EQ 'PM'
"*           OR ls_pd_header_d-process_type EQ 'ZTP'  "By SOPABBA_US# NPSCC-25480
"            lw_ctr_item-production_country = <fs_item>-zproduction_land.
"            IF line_exists( lt_all_countries[ country = <fs_item>-zproduction_land ] ).
"              lw_ctr_item-production_countrytext = lt_all_countries[ country = <fs_item>-zproduction_land ]-text.
"            ENDIF.
"*Boc US# 23483 Enhancement Transfer of GLOBUS Created contract in PROQ by SWDENDI
"            IF lw_ctr_item-production_country IS INITIAL AND ( lv_transfer_flag EQ abap_true OR lv_copy_flag EQ abap_true ).
"              lw_ctr_item-production_country = lv_prod_country.
"              IF line_exists( lt_all_countries[ country = lw_ctr_item-production_country ] ).
"                lw_ctr_item-production_countrytext = lt_all_countries[ country = lw_ctr_item-production_country ]-text.
"              ENDIF.
"            ENDIF.
"*Eoc US# 23483 Enhancement Transfer of GLOBUS Created contract in PROQ by SWDENDI
"          ENDIF.
"***E} US_12071 - By SOPABBA
"*          ENDIF.
"* BOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA
"          IF <fs_item>-src_object_type = 'BUS2121001'
"            AND <fs_item>-src_guid IS NOT INITIAL.
"            lw_ctr_item-pr_reference = abap_true.
"          ELSEIF <fs_item>-src_object_type = 'BUS2202001'
"             AND line_exists( lt_ctr_itm_link[ ctr_item_guid = <fs_item>-guid
"                                               pr_obj_typ    = 'BUS2121001' ] ).
"            lw_ctr_item-pr_reference = abap_true.
"          ENDIF.
"* BOC US# NPSCC-28338_NPM PC Mass change for line items --By SOPABBA
"          IF <fs_item>-bas_date NE '' . " Standard field have value '' instead of 00000000
"            lw_ctr_item-delivery_date = <fs_item>-bas_date. "US-28637
"          ENDIF.

"*BOC by SHENVIA for US 28410
"          DATA(ls_supp_bpo) = COND #( WHEN line_exists( lt_supp_bpo[ part_number = lw_ctr_item-ordered_prod
"                                                                        supplier_no = lv_supplier ] )
"                              THEN lt_supp_bpo[ part_number = lw_ctr_item-ordered_prod supplier_no = lv_supplier ] ).
"          lw_ctr_item-supp_bpo = ls_supp_bpo-bpo.
"          lw_ctr_item-supp_bpo_line = ls_supp_bpo-bpo_line_number.
"          lw_ctr_item-tool_priority = ls_supp_bpo-tool_priority.

"          IF line_exists( lt_dd07v[ domvalue_l = ls_supp_bpo-tool_priority ] ).
"            lw_ctr_item-tool_priority_desc = lt_dd07v[ domvalue_l = ls_supp_bpo-tool_priority ]-ddtext.
"          ENDIF.
"*EOC by SHENVIA for US 28410
"          IF lv_snc_flag IS NOT INITIAL. "US# 29958 by SWDENDI
"            CLEAR: lw_ctr_item-ctr_released,lw_ctr_item-cancelled."lw_ctr_item-return_term,
"*            lw_ctr_item-pack_term,lw_ctr_item-payment_terms.
"            lw_ctr_item-validity_from = lv_from_date.
"          ENDIF.

"          lw_ctr_item-supp_part_no =
"            VALUE #( lt_s4_supp_part[
"              itemcode = lw_ctr_item-product_id ]-business_partner_dtl[
"              business_partner_number = lv_supp_glob ]-supplier_itemcode OPTIONAL ) .

"          APPEND lw_ctr_item TO et_entityset.
"          CLEAR: lw_ctr_item.
"        ENDLOOP.

"      ENDIF.
"*}  EOC SP25-2954_Add Internal and External Notes on Header and Item Level - By Nihar
"    ENDIF.

"*=={BOC SP-35_US-11200 Fiori PC App - Filter function for item columns By TTHIRUM.

"    DATA: ra_disp_itemno    TYPE RANGE OF zdisp_number,
"          ra_description    TYPE RANGE OF bbp_item_desc,
"          ra_commodity_code TYPE RANGE OF comt_category_id, "Range table for commodity code
"          ra_part_no        TYPE RANGE OF comt_product_id,
"          ra_quantity       TYPE RANGE OF bbp_mng,
"          ra_validityfrom   TYPE RANGE OF dats,
"          ra_validityto     TYPE RANGE OF dats,
"          ra_es1            TYPE RANGE OF zes1,
"          ra_es2            TYPE RANGE OF zes1,
"          ra_zgs            TYPE RANGE OF zzgs,
"          ra_ltaflag        TYPE RANGE OF zlta_flag,
"          ra_3ypflag        TYPE RANGE OF z3yp_flag.

"*/..Logic to display the filter option for ITem number, Item description, commodity code
"*..Part number, Quantity, ES1, ES2 and ZGS.

"    LOOP AT it_filter_select_options ASSIGNING FIELD-SYMBOL(<fs_filter>).

"      IF <fs_filter>-property = 'DispItemNo' AND
"       <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_ctr_itemno>).
"          APPEND INITIAL LINE TO ra_disp_itemno ASSIGNING FIELD-SYMBOL(<fs_itemno>).
"          MOVE : <fs_ctr_itemno>-sign    TO <fs_itemno>-sign,
"                 <fs_ctr_itemno>-option  TO <fs_itemno>-option,
"                 <fs_ctr_itemno>-low     TO <fs_itemno>-low,
"                 <fs_ctr_itemno>-high    TO <fs_itemno>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'Quantity' AND
"       <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_ctr_quantity>).
"          APPEND INITIAL LINE TO ra_quantity ASSIGNING FIELD-SYMBOL(<fs_quantity>).
"          MOVE : <fs_ctr_quantity>-sign    TO <fs_quantity>-sign,
"                 <fs_ctr_quantity>-option  TO <fs_quantity>-option,
"                 <fs_ctr_quantity>-low     TO <fs_quantity>-low,
"                 <fs_ctr_quantity>-high    TO <fs_quantity>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'Description' AND
"        <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_item_desc>).
"          APPEND INITIAL LINE TO ra_description ASSIGNING FIELD-SYMBOL(<fs_description>).
"          MOVE : <fs_item_desc>-sign    TO <fs_description>-sign,
"                 <fs_item_desc>-option  TO <fs_description>-option,
"                 <fs_item_desc>-low     TO <fs_description>-low,
"                 <fs_item_desc>-high    TO <fs_description>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ProductId' AND
"        <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_item_part_no>).
"          APPEND INITIAL LINE TO ra_part_no ASSIGNING FIELD-SYMBOL(<fs_part_no>).
"          MOVE : <fs_item_part_no>-sign    TO <fs_part_no>-sign,
"                 <fs_item_part_no>-option  TO <fs_part_no>-option,
"                 <fs_item_part_no>-low     TO <fs_part_no>-low,
"                 <fs_item_part_no>-high    TO <fs_part_no>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'CommodityCode' AND
"       <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_commodity_code>).
"          APPEND INITIAL LINE TO ra_commodity_code ASSIGNING FIELD-SYMBOL(<fs_commoditycode>).
"          MOVE : <fs_itm_commodity_code>-sign    TO <fs_commoditycode>-sign,
"                 <fs_itm_commodity_code>-option  TO <fs_commoditycode>-option,
"                 <fs_itm_commodity_code>-low     TO <fs_commoditycode>-low,
"                 <fs_itm_commodity_code>-high    TO <fs_commoditycode>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ES1' AND
"       <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_es1>).
"          APPEND INITIAL LINE TO ra_es1 ASSIGNING FIELD-SYMBOL(<fs_es1>).
"          MOVE : <fs_itm_es1>-sign    TO <fs_es1>-sign,
"                 <fs_itm_es1>-option  TO <fs_es1>-option,
"                 <fs_itm_es1>-low     TO <fs_es1>-low,
"                 <fs_itm_es1>-high    TO <fs_es1>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ES2' AND
"       <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_es2>).
"          APPEND INITIAL LINE TO ra_es2 ASSIGNING FIELD-SYMBOL(<fs_es2>).
"          MOVE : <fs_itm_es2>-sign    TO <fs_es2>-sign,
"                 <fs_itm_es2>-option  TO <fs_es2>-option,
"                 <fs_itm_es2>-low     TO <fs_es2>-low,
"                 <fs_itm_es2>-high    TO <fs_es2>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ZGS' AND
"      <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_zgs>).
"          APPEND INITIAL LINE TO ra_zgs ASSIGNING FIELD-SYMBOL(<fs_zgs>).
"          MOVE : <fs_itm_zgs>-sign    TO <fs_zgs>-sign,
"                 <fs_itm_zgs>-option  TO <fs_zgs>-option,
"                 <fs_itm_zgs>-low     TO <fs_zgs>-low,
"                 <fs_itm_zgs>-high    TO <fs_zgs>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ValidityFrom' AND
"      <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_validfrom>).
"          APPEND INITIAL LINE TO ra_validityfrom ASSIGNING FIELD-SYMBOL(<fs_validityfrom>).
"          MOVE : <fs_itm_validfrom>-sign    TO <fs_validityfrom>-sign,
"                 <fs_itm_validfrom>-option  TO <fs_validityfrom>-option,
"                 <fs_itm_validfrom>-low     TO <fs_validityfrom>-low,
"                 <fs_itm_validfrom>-high    TO <fs_validityfrom>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ValidityTo' AND
"      <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_validto>).
"          APPEND INITIAL LINE TO ra_validityto ASSIGNING FIELD-SYMBOL(<fs_validityto>).
"          MOVE : <fs_itm_validto>-sign    TO <fs_validityto>-sign,
"                 <fs_itm_validto>-option  TO <fs_validityto>-option,
"                 <fs_itm_validto>-low     TO <fs_validityto>-low,
"                 <fs_itm_validto>-high    TO <fs_validityto>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'LtaFlag' AND                                           "SP39_US13815 By--TTHIRUM
"     <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_ltaflag>).
"          APPEND INITIAL LINE TO ra_ltaflag ASSIGNING FIELD-SYMBOL(<fs_ltaflag>).
"          MOVE : <fs_itm_ltaflag>-sign    TO <fs_ltaflag>-sign,
"                 <fs_itm_ltaflag>-option  TO <fs_ltaflag>-option,
"                 <fs_itm_ltaflag>-low     TO <fs_ltaflag>-low,
"                 <fs_itm_ltaflag>-high    TO <fs_ltaflag>-high.
"        ENDLOOP.
"      ENDIF.

"      IF <fs_filter>-property = 'ThreeypFlag' AND                                       "SP39_US13815 By--TTHIRUM
"      <fs_filter>-select_options IS NOT INITIAL.

"        LOOP AT <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_itm_3ypflag>).
"          APPEND INITIAL LINE TO ra_3ypflag ASSIGNING FIELD-SYMBOL(<fs_3ypflag>).
"          MOVE : <fs_itm_3ypflag>-sign    TO <fs_3ypflag>-sign,
"                 <fs_itm_3ypflag>-option  TO <fs_3ypflag>-option,
"                 <fs_itm_3ypflag>-low     TO <fs_3ypflag>-low,
"                 <fs_itm_3ypflag>-high    TO <fs_3ypflag>-high.
"        ENDLOOP.
"      ENDIF.



"    ENDLOOP.
"*/..Delete the entityset where the filter values are not in the range table.
"    DELETE et_entityset WHERE disp_number NOT IN  ra_disp_itemno.
"    DELETE et_entityset WHERE description NOT IN  ra_description.
"    DELETE et_entityset WHERE quantity NOT IN  ra_quantity.
"    DELETE et_entityset WHERE commodity_code NOT IN  ra_commodity_code.
"    DELETE et_entityset WHERE product_id NOT IN  ra_part_no.
"    DELETE et_entityset WHERE validity_from NOT IN  ra_validityfrom.
"    DELETE et_entityset WHERE validity_to NOT IN  ra_validityto.
"    DELETE et_entityset WHERE es1 NOT IN  ra_es1.
"    DELETE et_entityset WHERE es2 NOT IN  ra_es2.
"    DELETE et_entityset WHERE zgs NOT IN  ra_zgs.
"    DELETE et_entityset WHERE lta_flag NOT IN ra_ltaflag.                  "SP39_US13815 By--TTHIRUM
"    DELETE et_entityset WHERE threeyp_flag NOT IN ra_3ypflag.              "SP39_US13815 By--TTHIRUM

"*/.. US# 2964 - RKORADA - Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).

"**/.. Below logic for paging and lazy loading functionality.
"*    IF is_paging IS NOT INITIAL.
"*      IF is_paging-skip EQ 0.
"*        DELETE et_entityset FROM is_paging-top + 1.
"*      ELSE.
"*        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"*        DELETE et_entityset FROM 1 TO is_paging-skip.
"*      ENDIF.
"*
"*    ENDIF.
"**/.. US# 2964 - RKORADA - End of logic for paging and lazy loading.
"*==}EOC SP-35_US-11200 Fiori PC App - Filter function for item columns By TTHIRUM.

"********** Start of change for sorting by AMISIN*******************
"    lt_orderby = io_tech_request_context->get_orderby( ).
"*    Commented by Venky (as we are already sorting fetched lt_item with disp_number) above
"*   *{ BOC- NPSCC-25166 - RKORADA to enable with numeric data type
"    IF lt_orderby IS INITIAL.
"*     Sorting ET_EntitySet By Default with Item no
"      SORT et_entityset BY item_num_sort.
"    ENDIF.
"*} EOC- NPSCC-25166 - RKORADA to enable with numeric data type
"    LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
"      CLEAR ls_sort_order.
"      IF <fs_orderby>-order EQ 'desc'.
"        ls_sort_order-descending = 'X'.
"      ENDIF.
"      ls_sort_order-name = <fs_orderby>-property.
"      APPEND ls_sort_order TO lt_sort_order.
"    ENDLOOP.
"    SORT et_entityset BY (lt_sort_order).
"********** End of change for sorting by AMISIN*******************

  ENDMETHOD.


  METHOD contractitemtext_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
*& Created    : 2017-11-07                                           &*
*& Description: Changes done for SP25-US#2945 (Contract)             &*
*&         This method is to Read INTE text for Header contract      &*
*&                                                                   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        06-Mar-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                &*
*& Description: Changes done for US#8872                             &*
*&              Passing the data based on the CTR head GUID.         &*
*---------------------------------------------------------------------*
*& Date:        18-May-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer:   Nihar Ranasingh (NRANASI)                            &*
*& Description: SP_36-US_2936                                        &*
*&              Create NPM contract from purchase requisition        &*
*&  Here code changes done to Display text NOTE from CTR (PR-->CTR)  &*
*---------------------------------------------------------------------*

    DATA : lt_keytab        TYPE /iwbep/t_mgw_name_value_pair,
           lv_ctr_no        TYPE crmt_object_id_db,
           lv_ctr_item_no   TYPE zbbp_item_no,
           lv_ctr_item_guid TYPE GUID,                           "-- INSERT - RKORADA - 15/02/2018 NPSCC 10177
           lt_comment       TYPE STANDARD TABLE OF zfio_ctr_usertext,
           ls_entity        LIKE LINE OF et_entityset,
           lv_ctr_head_guid TYPE GUID.                           "--Insert by  <VMANCHA> <US#8872>

    DATA :  lcl_contract_app TYPE REF TO  zcl_contract_app.

    CLEAR :lv_ctr_no , lv_ctr_item_no .

    lt_keytab = it_key_tab .

    SORT lt_keytab BY name ASCENDING.
************************************************************************
****** Begin of Insert by  <VMANCHA> <US#8872>
*    READ TABLE lt_keytab  ASSIGNING FIELD-SYMBOL(<fs_keytab>)
*                                    WITH KEY name = 'ContractId' BINARY SEARCH .
*    IF sy-subrc EQ 0.
*      lv_ctr_no = <fs_keytab>-value .

    READ TABLE lt_keytab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
                                   WITH KEY name = 'ContractGuid'
                                   BINARY SEARCH .
    IF sy-subrc EQ 0.
      lv_ctr_head_guid = <fs_keytab>-value .
****** End of Insert by  <VMANCHA> <US#8872>
************************************************************************

*{ BOC - RKORADA - 15/02/2018 NPSCC 10177
*      READ TABLE lt_keytab WITH KEY name = 'ItemNo' ASSIGNING <fs_keytab> BINARY SEARCH .
*      IF sy-subrc EQ 0.
*        lv_ctr_item_no = <fs_keytab>-value .
*        CHECK lv_ctr_item_no IS NOT INITIAL.
      READ TABLE lt_keytab WITH KEY name = 'Guid' ASSIGNING <fs_keytab> BINARY SEARCH .
      IF sy-subrc EQ 0.
        lv_ctr_item_guid = <fs_keytab>-value .
        CHECK lv_ctr_item_guid IS NOT INITIAL.

*} EOC - RKORADA - 15/02/2018 NPSCC 10177
        CREATE OBJECT lcl_contract_app .

************************************************************************
****** Begin of Insert by  <VMANCHA> <Performance>
*        CALL METHOD lcl_contract_app->read_comment
*          EXPORTING
**           iv_header_no     = lv_ctr_no                       " Getting data with header guid instead of CTR num
**           iv_item_no       = lv_ctr_item_no
*            im_ctr_head_guid = lv_ctr_head_guid             "-- Insert by  <VMANCHA> <US#8872>
*            iv_item_guid     = lv_ctr_item_guid             "-- INSERT - RKORADA - 15/02/2018 NPSCC 10177
*          IMPORTING
*            et_comment       = lt_comment.

        lcl_contract_app->get_db_texts_without_db_format(
            EXPORTING im_ctr_header_guid = lv_ctr_head_guid
                      im_ctr_item_guid   = lv_ctr_item_guid
                      im_mode            = 'ITEM'
            IMPORTING ex_texts           = lt_comment ).
****** End of Insert by  <VMANCHA> <Performance>
************************************************************************

        IF lt_comment IS NOT INITIAL.

          LOOP AT lt_comment ASSIGNING FIELD-SYMBOL(<fs_comment>) WHERE  tdid = 'INTE'  .
            ls_entity-commentlogged = <fs_comment>-comment.
            ls_entity-fullname      = <fs_comment>-fullname.
            ls_entity-object_id     = <fs_comment>-header.
            ls_entity-number_int    = <fs_comment>-item_no.         " Bug 9709
            ls_entity-item_guid    = <fs_comment>-item_guid.        "--INSERT - RKORADA - 15/02/2018 NPSCC 10177
            ls_entity-text_id       = <fs_comment>-tdid.
            ls_entity-timestamp     = <fs_comment>-timestamp.
            ls_entity-userlanguage  = <fs_comment>-language.
            ls_entity-username      = <fs_comment>-uname.

            APPEND ls_entity TO et_entityset.
            CLEAR ls_entity.
          ENDLOOP.
*"==={-B-SP36-US#2936_Create CTR from PR_By Nihar-18May18
**"--- At this place code was added to read text for NOTE in CTR . When we convert PR-->CTR ,
*"--- texts for NOTE in PR itemlevel is getting copied to CTR Item level .So we need to display NOTE too in CTR .

          LOOP AT lt_comment ASSIGNING <fs_comment> WHERE  tdid = 'NOTE'  .
            ls_entity-commentlogged = <fs_comment>-comment.
            ls_entity-fullname      = <fs_comment>-fullname.
            ls_entity-object_id     = <fs_comment>-header.
            ls_entity-number_int    = <fs_comment>-item_no.
            ls_entity-item_guid    = <fs_comment>-item_guid.
            ls_entity-text_id       = <fs_comment>-tdid.
            ls_entity-timestamp     = <fs_comment>-timestamp.
            ls_entity-userlanguage  = <fs_comment>-language.
            ls_entity-username      = <fs_comment>-uname.

            APPEND ls_entity TO et_entityset.
            CLEAR ls_entity.
          ENDLOOP.
*"===}-E-SP36-US#2936_Create CTR from PR_By Nihar-18May18

        ENDIF.        "--Endif for IF lt_comment IS NOT INITIAL.

      ENDIF .         "-- Endif for IF sy-subrc EQ 0.( WITH KEY name = 'Itemno' BINARY SEARCH)
    ENDIF .         "-- Endif for IF sy-subrc EQ 0.( WITH KEY name = 'ContractId' BINARY SEARCH)


  ENDMETHOD.


  METHOD contractitemti01_create_entity.
*&-------------------------------------------------------------------&*
*& Date       : 02-NOV-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Srinivasan (SRINIV)                                  &*
*& Description: NPSCC-30601                                          &*
*&              Tier N: UX dialog in Tier N section                  &*
*---------------------------------------------------------------------*
* This method is used to create/update tier N data from Item Section  *
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------

    DATA: ls_tiern_data TYPE zcl_zfio_mng_ctr_mpc=>ts_contractitemtiern,
          lt_tiern_data TYPE zcl_zfio_mng_ctr_mpc=>tt_contractitemtiern.

*****Transform data into the internal structure************
    io_data_provider->read_entry_data(
      IMPORTING
           es_data = ls_tiern_data ).
*    BOC by SRINIV for NPSCC 30665 Tier N: Show changes from Tier N section in history/change log
    """"""" commenting the below logic because of del_ind introduction for each record to mark deletion in the DB"""""
*"When Action is Delete, then Deleting the records from the backend table ZPD_TIERN
*    IF ls_tiern_data-action = 'DELETE'.
*      DATA(lv_mode) = CONV CHAR5( 'DEL' ).
*"When Action is Update or Create, then Modifying the records from the backend table ZPD_TIERN
*    ELSEIF ls_tiern_data-action = 'EDIT' OR ls_tiern_data-action = 'CREATE'.
*      lv_mode = 'UPD'.
*    ENDIF.
*    EOC by SRINIV for NPSCC 30665 Tier N: Show changes from Tier N section in history/change log

*   BOC_By SOPABBA & SRINIV US# NPSCC-32385 <US desc: TierN: Make Tier 1 supplier a NON-mandatory field in TierN contract>

*    " When Action Create, checking if a record exists from the item and supplier combination in the
*    table ZPD_TIER_N, if exists removing the deletion indicator for that entry by fetching the Tier N Guid
*    from the table, Else if no entry exists then inserting a record
    IF ls_tiern_data-action = 'CREATE'.
      SELECT SINGLE guid
        FROM zpd_tier_n
        WHERE item_guid = @ls_tiern_data-item_guid
          AND supplier_code = @ls_tiern_data-supplier_code
        INTO @DATA(lv_tiern_guid).
      IF sy-subrc IS INITIAL.
        ls_tiern_data-tiern_guid = lv_tiern_guid.
      ENDIF.
    ENDIF.
*   EOC_By SOPABBA & SRINIV US# NPSCC-32385 <US desc: TierN: Make Tier 1 supplier a NON-mandatory field in TierN contract>

    IF ls_tiern_data IS NOT INITIAL.
      APPEND ls_tiern_data TO lt_tiern_data.
* Below method is called to update database
      zcl_contract_app=>create_tiern_agreements(
        EXPORTING
          im_tiern_data   =  lt_tiern_data   " Tier N Data
*          im_mode         = lv_mode " -- by SRINIV for NPSCC 30665 Tier N: Show changes from Tier N section in history/change log
      ).
    ENDIF.

  ENDMETHOD.


  METHOD contractitemti01_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Srinivasan S (SRINIV)                      &*
*& Created    : 2020-10-30                                           &*
*& US         : NPSCC - 30310                                        &*
*& Description: This method is for fetching the F4 for               &*
*&              Tier N Agreements                                    &*
*&-------------------------------------------------------------------&*

    IF line_exists( it_key_tab[ name = 'Guid' ] ).
      DATA(lv_item_guid) = CONV crmt_object_guid( it_key_tab[ name = 'Guid' ]-value ).
      IF lv_item_guid IS NOT INITIAL.
        CALL METHOD zcl_contract_app=>get_tiern_agreements
          EXPORTING
            im_item_guid = lv_item_guid
          IMPORTING
            ex_entityset = et_entityset.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD contractitemtier_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Srinivasan S (SRINIV)                      &*
*& Created    : 2020-10-30                                           &*
*& US         : NPSCC - 30310                                        &*
*& Description: This method is for fetching the F4 for               &*
*&              Tier N Agreements                                    &*
*&-------------------------------------------------------------------&*

    me->do_cache_entity_set(
      EXPORTING
        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
      CHANGING
        es_response_context     = es_response_context   " Feed request response information (EntitySet)
    ).

    "SELECT
"      a~tier_nprocess,
"      b~tiern_agr_lbl AS tier_nprocess_agr_lbl,
"      a~tiern_sort_order
"    FROM zpd_tiern_c AS a
"      INNER JOIN ztier_n_t AS b
"      ON b~tier_nprocess = a~tier_nprocess
"      AND b~sprsl = @sy-langu
"      INTO TABLE @DATA(lt_tiern_agr)
"      WHERE a~tier_nprocess IS NOT NULL
"        AND a~tier_nprocess_usrlead = @abap_true.
"    IF sy-subrc IS INITIAL.
"      SORT lt_tiern_agr BY tiern_sort_order ASCENDING.
"      et_entityset = CORRESPONDING #( lt_tiern_agr ).
"    ELSE.
"      CLEAR lt_tiern_agr.
"    ENDIF.

  ENDMETHOD.


  METHOD contractlangf4se_get_entityset.
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        26-Oct-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tanya Sachan (Tsachan)                                &*
*& Description: Changes done for US#2948                              &*
*&              Fiori App Contract Header - Define contract language  &*
*----------------------------------------------------------------------*


    DATA :
*           ls_supplier TYPE bu_partner,
           es_entity   LIKE LINE OF et_entityset.

**BoC by SWDENDI US# 16590
*    SELECT  * FROM Zctr_lang INTO TABLE @DATA(lt_language).
    SELECT a~language_key AS lang_key,
           c~sptxt AS language
      INTO TABLE @DATA(lt_language)
      FROM zctr_lang  AS a
      INNER JOIN t002 AS b
      ON a~language_key = b~spras
      INNER JOIN t002tx AS c
      ON b~laiso = c~sprsl
      BYPASSING BUFFER
      WHERE c~spras = @sy-langu.
**EoC by SWDENDI US# 16590

    IF sy-subrc = 0.
*   Begin of Changes by SHENVIA for US#27035
      DATA(lt_noneng) = lt_language[].
      DELETE lt_noneng WHERE lang_key EQ 'E' OR lang_key EQ 'D'.
      SORT lt_noneng BY language ASCENDING.
      DELETE lt_language WHERE lang_key <> 'E' AND lang_key <> 'D'.
      SORT lt_language BY language ASCENDING.
      APPEND LINES OF lt_noneng TO lt_language.

      et_entityset = CORRESPONDING #( lt_language ).
*   End of Changes by SHENVIA for US#27035
    ENDIF.

  ENDMETHOD.


  METHOD contractrelatedd_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        17-May-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                         &*
*& Description: Changes done for SP36-US_12240                        &*
*&              Fiori CTR App - Show related documents in CTR header  &*
*&              and line item                                         &*
*&--------------------------------------------------------------------&*


    DATA: lv_header_guid  TYPE crmt_object_guid,
          lv_item_guid    TYPE crmt_object_guid,
          lo_contract_app TYPE REF TO zcl_contract_app.

    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND "US# 27757 by SWDENDI
      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'PNC'.
      RETURN.
    ENDIF.

* /..Reading the input data
    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

      IF <fs_key_tab>-name = 'ContractGuid'.
        lv_header_guid = <fs_key_tab>-value.
      ENDIF.

      IF <fs_key_tab>-name = 'Guid'.
        lv_item_guid = <fs_key_tab>-value.
      ENDIF.

    ENDLOOP.

    CREATE OBJECT lo_contract_app.

    CALL METHOD lo_contract_app->get_ctr_relateddocs
      EXPORTING
        im_ctr_guid          = lv_header_guid    " Globally Unique identifier
*       im_contract_num      =                   " Transaction ID
        im_ctr_itm_guid      = lv_item_guid
        im_paging            = is_paging
        im_search_string     = iv_search_string
        it_filter_options    = it_filter_select_options
      IMPORTING
        ex_related_documents = et_entityset     " Table type for PR Related doc
        es_response_context  = es_response_context.

*/..Deleting deuplicates document number to display at header level.
*      DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING related_doc_num.
*    es_response_context-inlinecount = lines( et_entityset ).
  ENDMETHOD.


  METHOD contractschedagr_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        03-July-2019                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   Sowmya Pabba (SOPABBA)                                &*
*& Description: Changes done for SP64-US_21377                        &*
*&              Show scheduling agreement numbers in related          &*
*&              document section in page 3                            &*
*&--------------------------------------------------------------------&*

    DATA: lv_header_guid TYPE crmt_object_guid,
          lv_item_guid   TYPE crmt_object_guid.
* Contract Header Guid
    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
      lv_header_guid = it_key_tab[ name = 'ContractGuid' ]-value.
    ENDIF.
* Contract Item Guid
    IF line_exists( it_key_tab[ name = 'Guid' ] ).
      lv_item_guid = it_key_tab[ name = 'Guid' ]-value.
    ENDIF.
* Call below method to fetch scheduling agreement details
    NEW zcl_contract_app( )->get_related_sched_agmnt(
       EXPORTING
         im_ctr_guid     =  lv_header_guid
         im_ctr_itm_guid =  lv_item_guid
       IMPORTING
         et_entityset    = et_entityset ).
* Paging logic
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD contractsigfield_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 29-Jan-2018                                           &*
*& Description: US#5600: This method is to send the non-significant   &*
*&              fields maintained in table to fiori which is used for &*
*&              closing the created change version.                   &*
*& Transport  : DSQK905261                                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

* Fetch the entries
    SELECT client,
           object_type,
           stnd_fld_name,
           fiori_fld_name,
           significant
      FROM zpd_sig_fld
      INTO TABLE @DATA(lt_entries)
      WHERE object_type EQ 'BUS2000113'
      AND significant NE 'X'.

    IF sy-subrc = 0.

*   Pass the data
      et_entityset[] = lt_entries[].

    ENDIF.

  ENDMETHOD.


  METHOD contractstatusse_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                &*
*& Developer  : Infosys / Tamilarasi Thirumal(TTHIRUM)               &*
*& Created    : 2018-02-13                                           &*
*& Description: This method is for F4 help get the status details    &*
*&-------------------------------------------------------------------&*

    TYPES: BEGIN OF ts_status,
             estat TYPE j_estat,
             txt30 TYPE j_txt30,
           END OF ts_status.


    DATA: lo_class    TYPE REF TO zcl_contract_app,
          rt_statcode TYPE RANGE OF j_estat.



*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
    me->do_cache_entity_set(
      EXPORTING
        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
      CHANGING
        es_response_context     = es_response_context   " Feed request response information (EntitySet)
    ).
***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

    rt_statcode = VALUE #( ( sign = 'I' option = 'EQ' low = 'I1040' )
                           ( sign = 'I' option = 'EQ' low = 'E0003' )
                           ( sign = 'I' option = 'EQ' low = 'E0013' )
                           ( sign = 'I' option = 'EQ' low = 'I1015' )
                           ( sign = 'I' option = 'EQ' low = 'E0011' )
                           ( sign = 'I' option = 'EQ' low = 'I1045' ) ).

    SELECT estat, txt30
      FROM zstatus
      WHERE stsma = 'ZCT'
      AND spras = @sy-langu
      INTO TABLE @DATA(lt_stat).

    IF sy-subrc EQ 0.
      et_entityset = VALUE #(
         FOR <fs> IN lt_stat
            ( estat = <fs>-estat
              txt30 = <fs>-txt30
              partnumberchange = COND #( WHEN line_exists( rt_statcode[ low = <fs>-estat ] )
                                          THEN abap_false
                                         ELSE abap_true ) ) ).
    ENDIF.

    TRY.
        DATA(lv_cache_allowed) = io_tech_request_context->is_cache_page_on_hb_allowed( ).

      CATCH /iwbep/cx_mgw_tech_exception INTO DATA(lx_excep) .
        DATA(lv_excep_text) =  lx_excep->if_message~get_longtext( ).

    ENDTRY.

    IF lv_cache_allowed EQ abap_true.
      es_response_context-do_cache_and_page_on_hub = abap_true.
    ENDIF.

*      CREATE OBJECT lo_class.
**../Get Status details
*      CALL METHOD lo_class->get_status_help
*        IMPORTING
*          ex_status_details = DATA(lt_status).
*
*      et_entityset = CORRESPONDING #( lt_status ).

    DATA(lv_pnc) = COND #( WHEN line_exists( it_filter_select_options[ property = 'PartNumberChange' ] ) THEN
                                   it_filter_select_options[ property = 'PartNumberChange' ]-select_options[ 1 ]-low ).
    IF lv_pnc IS NOT INITIAL.
*      rt_statcode = VALUE #( ( sign = 'I' option = 'EQ' low = 'I1040' )
*                             ( sign = 'I' option = 'EQ' low = 'E0003' )
*                             ( sign = 'I' option = 'EQ' low = 'E0013' )
*                             ( sign = 'I' option = 'EQ' low = 'I1015' )
*                             ( sign = 'I' option = 'EQ' low = 'E0011' )
*                             ( sign = 'I' option = 'EQ' low = 'I1045' ) ).

      DELETE et_entityset WHERE estat IN rt_statcode.
    ENDIF.


  ENDMETHOD.


  METHOD contracttypef4se_get_entityset.
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        26-Oct-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tanya Sachan (Tsachan)                                &*
*& Description: Changes done for US#2937                              &*
*&               - Define contract type f4 help                       &*
*----------------------------------------------------------------------*
*    TYPES: BEGIN OF ty_ctype,
*             process_type    TYPE bbp_proc_type,                       " field for process type
*             process_blocked TYPE bbp_process_blocked,                 " field for process blocked
*             object_type     TYPE crmt_subobject_category_db,          " field for object type
*             description     TYPE bezei20,                             " field for description
*             langu           TYPE sy-langu,                            " field for language
*           END OF ty_ctype.

"    DATA : rt_attr      TYPE RANGE OF string,                          " Variable for process
"           rt_scenario  TYPE RANGE OF string,                          " Variable for process
"           lv_search    TYPE string,                                     " Variable for search string
"           es_entity    LIKE LINE OF et_entityset,                       " Work area for return structure
"           lv_buyer     TYPE baluser,
"           lt_attr_list TYPE bbpt_attr_list,
"           lt_attr_dft  TYPE bbpt_attr_single.

"    CONSTANTS: c_cr(6) TYPE c VALUE 'CREATE',
"               c_ds(7) TYPE c VALUE 'DISPLAY'.

"    rt_attr = VALUE #( ( sign = 'I' option = 'EQ' low = 'CREATE' )
"                       ( sign = 'I' option = 'EQ' low = 'COPY' )
"                       ( sign = 'I' option = 'EQ' low = 'TRANSFER' )
"                       ( sign = 'I' option = 'EQ' low = 'DISPLAY' )
"                       ( sign = 'I' option = 'EQ' low = 'EXTEND' ) ).

"    rt_scenario = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'Scenario' )
"                           FOR ls_select_option IN ls_filter-select_options
"                           ( sign = ls_select_option-sign
"                             option = ls_select_option-option
"                             low    = ls_select_option-low
"                             high   = ls_select_option-high ) ).
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"    DATA(lv_action) = VALUE #( it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low OPTIONAL ).
"    DATA(lv_ctr_type) = VALUE #( it_filter_select_options[ property = 'TransferCtrType' ]-select_options[ 1 ]-low OPTIONAL ).
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header

"*{ BoC - RKORADA NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
"    me->do_cache_entity_set(
"      EXPORTING
"        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
"      CHANGING
"        es_response_context     = es_response_context   " Feed request response information (EntitySet)
"    ).
"*  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE
"*   CHECK es_response_context-is_not_modified IS INITIAL.
"*} EoC - RKORADA NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

"*{BOC NPSCC-28779  Additional fields / contract types configurable for multiple BUs
"    lv_buyer = VALUE #( it_filter_select_options[ property = 'ResponsibleBuyer' ]-select_options[ 1 ]-low OPTIONAL ).
"    IF lv_buyer IS INITIAL.
"      lv_buyer = sy-uname.
"    ENDIF.
"    IF lv_buyer IS NOT INITIAL.
"      lt_attr_list = VALUE #( ( attr_id = 'Z_BU' )
"                              ( attr_id = 'Z_BUKRS' ) ).
"      CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"        EXPORTING
"          iv_user                 = lv_buyer
"          it_attr_list            = lt_attr_list
"        IMPORTING
"          et_attr_dft             = lt_attr_dft
"        EXCEPTIONS
"          object_id_not_found     = 1
"          no_attributes_requested = 2
"          attributes_read_error   = 3
"          OTHERS                  = 4.
"      IF sy-subrc IS INITIAL.
"        DATA(lv_buyer_bu) = VALUE #( lt_attr_dft[ attr_id = 'Z_BU' ]-value OPTIONAL ).
"        DATA(lv_buyer_cocode) = VALUE #( lt_attr_dft[ attr_id = 'Z_BUKRS' ]-value OPTIONAL ).
"      ENDIF.
"    ENDIF.
"*}EOC NPSCC-28779  Additional fields / contract types configurable for multiple BUs

"*/.. Select process types for contracts to be displayed on fiori for F4 help
"*BOC_NPSCC-29273_Raw Material Buy user-lead enablement_SOPABBA
"    SELECT name, numb, sign, opti, low, high
"      INTO TABLE @DATA(lt_tvarvc)
"      FROM tvarvc
"      WHERE name EQ 'ZCTR_REFERENCE_TYPE'.
"    IF sy-subrc EQ '0'.
"      SORT lt_tvarvc BY name low.
"    ENDIF.
"*EOC_NPSCC-29273_Raw Material Buy user-lead enablement

"    SELECT a~process_type,
"           b~p_description_20 AS description
"*           c~attribute,                    " By SOPABBA_NPSCC-28779
"*           c~result1
"      FROM  bbpc_proc_type AS a
"      INNER JOIN bbpc_proc_type_t AS b
"        ON a~process_type = b~process_type
"*      INNER JOIN Zprcss_conf AS c
"*        ON a~process_type = c~doc_type AND c~area = 'PC_APP' AND c~active = @abap_true   "By SOPABBA_NPSCC-28779
"      INTO TABLE @DATA(lt_process)
"      BYPASSING BUFFER  "vforge for buffer table
"      WHERE a~process_blocked = ''
"        AND a~object_type = 'BUS2000113'
"        AND b~langu = @sy-langu.
"*        AND c~attribute IN @rt_attr.

"    IF sy-subrc EQ 0.
"*{BOC By SOPABBA_NPSCC-28779  Additional fields / contract types configurable for multiple BUs
"      SELECT company_code , plant , bu , doc_type, attribute,
"             result1
"        FROM zprcss_conf
"           INTO TABLE @DATA(lt_frm_cus)
"           WHERE area    EQ 'PC_APP'
"           AND attribute IN @rt_attr
"           AND active    EQ @abap_true.
"      IF sy-subrc IS INITIAL.
"        SORT lt_frm_cus BY company_code plant bu attribute.
"      ENDIF.
"*}EOC NPSCC-28779  Additional fields / contract types configurable for multiple BUs
"      LOOP AT lt_process ASSIGNING FIELD-SYMBOL(<fs_process>).

"*{BOC NPSCC-28779  Additional fields / contract types configurable for multiple BUs
"*        <fs_entity>-process_type = <fs_process>-process_type.
"*        <fs_entity>-process_desc = <fs_process>-description.
"*        <fs_entity>-scenario     = <fs_process>-attribute.
"*        <fs_entity>-created_sys  = <fs_process>-result1.
"*        IF <fs_process>-attribute = c_cr OR <fs_process>-attribute = c_ds.
"*          <fs_entity>-process_ref_type = VALUE #( lt_tvarvc[ name = 'ZCTR_REFERENCE_TYPE'
"*                                                           low  = <fs_process>-process_type ]-high
"*                                                           OPTIONAL ).  "NPSCC-29273_By SOPABBA
"*        ENDIF.
"        LOOP AT rt_attr ASSIGNING FIELD-SYMBOL(<fs_attr>).
"*          WHERE low IN rt_scenario.

"          IF <fs_attr>-low = c_cr OR <fs_attr>-low = c_ds.
"**--Check if create attribute exist for the Buyer
"            IF line_exists( lt_frm_cus[ company_code = lv_buyer_cocode
"                                        doc_type     = <fs_process>-process_type
"                                        plant        = '*'
"                                        bu           = lv_buyer_bu
"                                        attribute    =  <fs_attr>-low ] ).

"              DATA(ls_po_frm_cus) = lt_frm_cus[ company_code = lv_buyer_cocode
"                                                doc_type     = <fs_process>-process_type
"                                                plant        = '*'
"                                                bu           = lv_buyer_bu
"                                                attribute    =  <fs_attr>-low ].
"**--In case Document type = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = lv_buyer_cocode
"                                            doc_type     = '*'
"                                            plant        = '*'
"                                            bu           = lv_buyer_bu
"                                            attribute    = <fs_attr>-low ] ).

"              ls_po_frm_cus = lt_frm_cus[ company_code = lv_buyer_cocode
"                                          doc_type     = '*'
"                                          plant        = '*'
"                                          bu           = lv_buyer_bu
"                                          attribute    = <fs_attr>-low ] .

"**--In case company code = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*'
"                                            doc_type     = <fs_process>-process_type
"                                            plant        = '*'
"                                            bu           = lv_buyer_bu
"                                            attribute    =  <fs_attr>-low ] ).

"              ls_po_frm_cus = lt_frm_cus[ company_code = '*'
"                                          doc_type     = <fs_process>-process_type
"                                          plant        = '*'
"                                          bu           = lv_buyer_bu
"                                          attribute    =  <fs_attr>-low ] .

"**--In case company code  = *  and Document type = *
"            ELSEIF line_exists( lt_frm_cus[ company_code = '*'
"                                            doc_type     = '*'
"                                            plant        = '*'
"                                            bu           = lv_buyer_bu
"                                            attribute    =  <fs_attr>-low ] ).
"              ls_po_frm_cus = lt_frm_cus[ company_code = '*'
"                                          doc_type     = '*'
"                                          plant        = '*'
"                                          bu           = lv_buyer_bu
"                                          attribute    =  <fs_attr>-low ] .
"            ENDIF.
"            IF ls_po_frm_cus IS NOT INITIAL.
"              APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).
"              <fs_entity>-process_type = <fs_process>-process_type.
"              <fs_entity>-process_desc = <fs_process>-description.
"              <fs_entity>-scenario     = ls_po_frm_cus-attribute.
"              <fs_entity>-created_sys  = ls_po_frm_cus-result1.
"              <fs_entity>-process_ref_type = VALUE #( lt_tvarvc[ name = 'ZCTR_REFERENCE_TYPE'
"                                                               low  = <fs_process>-process_type ]-high
"                                                               OPTIONAL ).  "NPSCC-29273_By SOPABBA
"            ENDIF.

"          ELSE.
"            LOOP AT lt_frm_cus ASSIGNING FIELD-SYMBOL(<fs_frm_cus>)
"                  WHERE doc_type     = <fs_process>-process_type AND attribute    =  <fs_attr>-low.
"*                          ls_po_frm_cus = VALUE #( lt_frm_cus[ doc_type     = <fs_process>-process_type
"*                                                 attribute    =  <fs_attr>-low ] OPTIONAL ).
"*            IF ls_po_frm_cus IS NOT INITIAL.
"              APPEND INITIAL LINE TO et_entityset ASSIGNING <fs_entity>.
"              <fs_entity>-process_type = <fs_process>-process_type.
"              <fs_entity>-process_desc = <fs_process>-description.
"              <fs_entity>-scenario     = <fs_frm_cus>-attribute.
"              <fs_entity>-created_sys  = <fs_frm_cus>-result1.
"*            ENDIF.
"            ENDLOOP.

"          ENDIF.
"          CLEAR: ls_po_frm_cus.
"        ENDLOOP.
"*}EOC NPSCC-28779  Additional fields / contract types configurable for multiple BUs
"      ENDLOOP.
"    ENDIF.

"    IF iv_search_string IS NOT INITIAL.
"      DATA(lt_entity) = et_entityset.
"      REFRESH et_entityset.
"      CONCATENATE '*' iv_search_string '*' INTO lv_search.
"      LOOP AT lt_entity ASSIGNING FIELD-SYMBOL(<fs_search>).
"        IF <fs_search>-process_type CP lv_search OR <fs_search>-process_desc CP lv_search.
"          APPEND <fs_search> TO et_entityset.
"        ENDIF.
"      ENDLOOP.
"    ENDIF.

"    IF rt_scenario IS NOT INITIAL.
"      DELETE et_entityset WHERE scenario NOT IN rt_scenario.
"    ENDIF.
"*   Begin of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"    IF lv_action = 'TRANSFER'
"      AND lv_ctr_type = 'NPM'.
"      DELETE et_entityset WHERE process_type <> 'NPM'
"                            AND process_type <> 'ZIPS'.
"    ENDIF.
"*   End of Changes BY SOPABBA_US# NPSCC-26113  Transfer of IPS LiAb type contracts - Plants on Header
"*{ BOC - RKORADA - US#14435
"*    DATA ra_final_ctr_type TYPE RANGE OF crmt_process_type_db.
"*    SELECT low
"*      FROM tvarvc
"*      WHERE name EQ 'ZENABLED_CTR_TYPE'
"*        AND type EQ'S'
"*      INTO TABLE @DATA(lt_active_ctr_types).
"*    IF sy-subrc EQ 0.
"*      ra_final_ctr_type = VALUE #( FOR ls_type IN lt_active_ctr_types
"*                          ( low = ls_type option = 'EQ' sign = 'I' ) ).
"*
"*      DELETE et_entityset WHERE process_type NOT IN ra_final_ctr_type.
"*    ENDIF.
"*} EOC - RKORADA - US#14435

  ENDMETHOD.


  METHOD create_contract_deep_entity.
***********************************************************************
* Author             :  AMAJAIN                                              *
* Title              :  Create Contract Deep Entity                                              *
* Date               :  2017-10-30                                              *
* Module             : PC: Create Draft Contract                              *
*_____________________________________________________________________*
* DESCRIPTION (2933)
*               This method is resposible for creating and updating the contract.
***********************************************************************
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        14-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2962                              &*
*&              Passing the competitive bid and corresponding reason  &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        15-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2944                              &*
*&              Passing the supplier contact person                   &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        31-Jan-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2935                              &*
*&              Creating a CTR by copying an existing CTR             &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Date:        14-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: BUG#10620: Mapping the current version item guids to  &*
*&              the items coming from fiori, as the fiori items has   &*
*&              changed version GUIDs.                                &*
*&--------------------------------------------------------------------&*
*----------------------------------------------------------------------*
*& Date:        16-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#9528                              &*
*&              Create item for the contract by copying the existing  &*
*&              line items.                                           &*
*&--------------------------------------------------------------------&*
*& Date:        16-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for US#2951                              &*
*&              Add Bundle ID field on Header Level of CTR            &*
*&--------------------------------------------------------------------&*
*----------------------------------------------------------------------*
*& Date:        28-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3007                              &*
*&              Passing the pack term and return term to local header &*
*&              structure only for NPM contract.                      &*
*&--------------------------------------------------------------------&*
*&--------------------------------------------------------------------&*
*& Date:        02-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for mapping of fields after changing     &*
*&              custom field names with Z as preceeding          &*
*----------------------------------------------------------------------*
*& Date:        07-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                         &*
*& Description: Changes done for SP33-US#3052                         &*
*&              Change manual contract creation date (Header)         &*
*&--------------------------------------------------------------------&*
*& Date:        06-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#10661                             &*
*&              Passing the formatted messages to fiori               &*
*&--------------------------------------------------------------------&*
*& Date:        19-June-2018                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for SP38_US# 3026/12743                  &*
*&    PC App-Add result value to the IPS savings methods -Page2       &*
*&   Changes done to Save Results for diff types of Price  in DB      &*
*&--------------------------------------------------------------------&*
*& Date:        30-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2945                              &*
*&              Define output medium based on fiori/DB data           &*
*&--------------------------------------------------------------------&*
*& Date:        31/07/2018                                            &*
*& Developer:   Nihar Ranasingh(NRANASI)                              &*
*& Description: SP41-US# 14629-Fiori App Contract                     &*
*&          -(Service Location) On/Off Campus flag for IPS contracts  &*
*&           This is Applicable only for NPM type CTR                 &*
*---------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
*& Date:        29/08/2018                                            &*
*& Developer:   Gayathri Saminathan(GSAMINA)                          &*
*& Description: SP43-US# 12971-Trigger Outbound Message to PUMA       &*
*---------------------------------------------------------------------*
*& Date:        14-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3057                              &*
*&              Add the withdraw approval text to document and then   &*
*&              trigger the Withdraw Approval outbound message        &*
*&--------------------------------------------------------------------&*
*& Date:        10-Jan-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#15261                             &*
*&              Passing the approval urgency flag                     &*
*&--------------------------------------------------------------------&*

    DATA:
      lr_deep_entity   TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_deep_entity,
      ls_contract_head TYPE  zfio_ctr_hdr,
      lo_ctr_app       TYPE REF TO zcl_contract_app,
      lo_output_medium TYPE REF TO zpd_trigger_output_medium.     " Venky US#2945
    DATA :
      ev_contract_no LIKE ls_contract_head-object_id,
      lo_object      TYPE REF TO zcl_contract_app,
      lv_guid        TYPE crmt_object_guid,
      ls_ctr_input   TYPE zfio_ctr_hdr,
      ls_language    TYPE zfio_ctrlang_f4help,
      ls_supplier    TYPE bu_partner,
      lv_count       TYPE p VALUE IS INITIAL.                           " Venky US#10661
      "lo_epu_ob      TYPE REF TO zcl_ctr_epu.                      " Gsamina US#12971
****Transform data into the internal structure************

*   VMANCHA - Performance testing US#25668
*    SELECT low
*      FROM tvarvc
*      WHERE name = 'NPSCC-25668'
*      INTO TABLE @DATA(lt_tvarvc).
*    IF sy-subrc = 0 AND ( line_exists( lt_tvarvc[ low = sy-uname ] ) OR line_exists( lt_tvarvc[ low = '*' ] ) ).
    me->create_contract_deep_entity_v(
      EXPORTING
        iv_entity_name          = iv_entity_name
        iv_entity_set_name      = iv_entity_set_name
        iv_source_name          = iv_source_name
        it_key_tab              = it_key_tab
        it_navigation_path      = it_navigation_path
        io_expand               = io_expand
        io_tech_request_context = io_tech_request_context
        io_data_provider        = io_data_provider
      IMPORTING
        er_deep_entity          = er_deep_entity ).

    RETURN.

*
*    TRY .
*        io_data_provider->read_entry_data(
*          IMPORTING
*            es_data = lr_deep_entity ).
*      CATCH /iwbep/cx_mgw_tech_exception .
*        CLEAR lr_deep_entity.
*    ENDTRY.
*
*    CREATE OBJECT lo_ctr_app.
*
*    TRANSLATE lr_deep_entity-responsible_buyer TO UPPER CASE.
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2945>
*    CREATE OBJECT lo_output_medium.
*    IF lr_deep_entity-action = 'OUTPUT_MEDIUM'.
**     Calling method get the output medium
*      lo_output_medium->define_output_medium(
*              EXPORTING im_mode              = 'FIORI'
*                        im_object_type       = lo_output_medium->at_ctr_bus2000113
*              CHANGING  ch_ctr_fiori_data    = lr_deep_entity ).
*
*      er_deep_entity = lr_deep_entity.
** Boc US# 23483 by SWDENDI
*      IF lr_deep_entity-contracttype IS NOT INITIAL.
*        NEW Zcl_contract_app( )->determine_wvdv_service_loc(
*            EXPORTING
*              im_mode           = 'FIORI'
*              im_result         = 'X'
*            CHANGING
*              ch_ctr_fiori_data = lr_deep_entity ).
*
*        er_deep_entity = lr_deep_entity.
*      ENDIF.
** Eoc US# 23483 by SWDENDI
*      RETURN. "KAUSING
******* End of Insert by  <VMANCHA> <US#2945>
*************************************************************************
**"==={-B-SP41-US# 14629:Fiori App Contract-(Service Location) On/Off Campus flag for IPS contracts_By NRANASI
**/.. US 14629
*    ELSEIF lr_deep_entity-action = 'WV/DV_CHECK'.
**"--•If above assumptions are met: ◦the WV/DV flag is set to "yes/ja" (*◦the WV/DV field is not editable)
**"-- Conditions to validate---> any 1 condition met
**"--•If the buyer is a IPS Buyer
**"--•If the Comm_code is WV/DV CRITICAL (S4) ( Table - ZCOMCOD_CAT)
**"--.If there is a German consumption plant
*
**"--- Create Class instance
**      IF lo_ctr_app IS NOT BOUND.  "Bug# NPSCC-24213_SOPABBA
**        CREATE OBJECT lo_ctr_app.  "Bug# NPSCC-24213_SOPABBA
*      IF lr_deep_entity-contracttype = 'NPM'.
**"-- Call Method for WV/DV flag determination
*        CALL METHOD lo_ctr_app->determine_wvdv_service_loc    "--Applicable only for NPM CTR
*          EXPORTING
*            im_mode           = 'FIORI'
**           im_header_guid    =
*          CHANGING
*            ch_ctr_fiori_data = lr_deep_entity.
*        er_deep_entity = lr_deep_entity.
*      ENDIF.
**        EXIT.
*      RETURN."KAUSING
**      ENDIF.           "Bug# NPSCC-24213_SOPABBA
**"===}-E-SP41-US# 14629:Fiori App Contract-(Service Location) On/Off Campus flag for IPS contracts_By NRANASI
*    ENDIF.
*
**"==== Pass data into the internal structure for CREATE/UPDATE Contract method
*    ls_contract_head-object_id                = lr_deep_entity-object_id.
*    ls_contract_head-guid                     = lr_deep_entity-guid.
*    ls_contract_head-contracttype             = lr_deep_entity-contracttype .
*    ls_contract_head-description              = lr_deep_entity-description .            "-- CTR Title
*    ls_contract_head-language_key             = lr_deep_entity-language_key.            "--US2948 -Supplier Language By Tanya/Nihar
*    ls_contract_head-responsible_buyer        = lr_deep_entity-responsible_buyer.       "--US# 2957 By RKORADA
*    ls_contract_head-supplier                 = lr_deep_entity-supplier.                "-- CTR Supplier
*    ls_contract_head-commodity_code           = lr_deep_entity-commodity_code .         "-- CTR Product Category/Commodity Code
*    ls_contract_head-validity_from            = lr_deep_entity-validity_from.           "-- CTR Valid from
*    ls_contract_head-validity_to              = lr_deep_entity-validity_to.             "-- CTR Valid to
*    ls_contract_head-contract_target_value    = lr_deep_entity-contract_target_value .  "--SP28-US6337 - CTR Target Value
*    ls_contract_head-currency                 = lr_deep_entity-currency .               "--SP28-US6632 - CTR Value Currency
*    ls_contract_head-limit_per_release        = lr_deep_entity-limit_per_release .      "--SP25-US2972 - CTR Limit Per Release/SIngle Release Value
*    ls_contract_head-bundle_id                = lr_deep_entity-bundle_id .              "--SP31-US#2951- Add Bundle IDs_ By NIhar
*    ls_contract_head-creation_date            = lr_deep_entity-creation_date.           "--SP33-US#3052 Change manual contract creation date (Header) By-TTHIRUM
*    ls_contract_head-Zapp_urgent         = lr_deep_entity-Zapp_urgent.        " VMANCHA - Venky US#15261
*    "--SP27-US5605 related -Create NPM contract automatically from interface -By Nihar
**   "--(When we creae CTR from NPS, This field value = N-'NPS', incase CTR from GLOBUS -> field value = E-'EXTERNAL')
**   "-- In Edit mode of CTR , User cannot edit External E-CTR , edit only N-NPS type. So Alwys this value will be N
*    ls_contract_head-created_system           = 'N' .                                   "--SP27-US5605 related By Nihar
*    ls_contract_head-ctr_action_flag          = lr_deep_entity-ctr_action_flag .        "--SP27-US7571-Fiori App CTR - Send For Approval & Check Buttons for Contracts  - By Nihar
**    IF ls_contract_head-ctr_action_flag = 'E'.                                          "US#12971 - We have to Save the contract
**      ls_contract_head-ctr_action_flag = 'S'.
**    ENDIF.                                                            " Commented by Venky
*    ls_contract_head-wv_releveant            = lr_deep_entity-wv_releveant.             "--SP38-US#3041 WV/DV supplier declaration check By--TTHIRUM
*    ls_contract_head-Zservl_key         = lr_deep_entity-Zservl_key.          "--SP41-US# 14629:Fiori App Contract-(Service Location) On/Off Campus flag for IPS contracts
*
*    IF lr_deep_entity-fiscal_year IS INITIAL.                                           "-- US 2960 BY TSCAHAN
*      ls_contract_head-fiscal_year            = sy-datum+0(4).
*    ELSE.
*      ls_contract_head-fiscal_year            = lr_deep_entity-fiscal_year.
*    ENDIF.
*    ls_contract_head-excel_flag               = lr_deep_entity-excel_flag. " VMANCHA US#23327
*    ls_contract_head-co_code                  =  lr_deep_entity-co_code.                "--US# 2971 - By Ramjee
*    ls_contract_head-supplier_text            = lr_deep_entity-supplier_text.           "--SP25-US2954 (HTXT- CTR Header Supplier text)
*
**     BOC BY TSACHAN US -2969 assign payterm terms
*    ls_contract_head-payment_terms           = lr_deep_entity-payment_terms.
**    ls_contract_head-longtext                = lr_deep_entity-longtext.
**    ls_contract_head-paymnt_shortdesc        = lr_deep_entity-paymnt_shortdesc.
**     EOC BY TSACHAN US -2969 assign payterm terms
*
**"--{ BOC - SP28_US# 7898-Assign Incoterms/transport terms on header level  - By Nihar
*    ls_contract_head-incoterm_key  = lr_deep_entity-incoterm_key .
*    ls_contract_head-incoterm_loc  = lr_deep_entity-incoterm_loc .
**"--} EOC - SP28_US# 7898-Assign Incoterms/transport terms on header level  - By Nihar
*    ls_contract_head-plantassign_ind  = lr_deep_entity-plantassign_ind.  "kausing*US3001*29/01
*    ls_contract_head-Zoutput_medium = lr_deep_entity-Zoutput_medium. " Venky US#2945
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2962>
**   Passing the competitive bid id and corresponding reason id
*    ls_contract_head-comp_bid = lr_deep_entity-comp_bid_id.
*    ls_contract_head-reason   = lr_deep_entity-reason_id.
******* End of Insert by  <VMANCHA> <US#2962>
*************************************************************************
**"==={-B-SP38-US# 3026/12743_CTR:PC App-Add result value to the IPS savings methods-By NIhar-19June18
**"-- Pass Corresponding VOB(Volume of Business) Before Negotiation(AN)/After Negotiation(AN) Value from DB to Fiori
*    ls_contract_head-Zres_price_bn   =  lr_deep_entity-Zres_price_bn .
*    ls_contract_head-Zres_price_an   =  lr_deep_entity-Zres_price_an .
*    ls_contract_head-Zres_quote_bn   =  lr_deep_entity-Zres_quote_bn .
*    ls_contract_head-Zres_quote_an   =  lr_deep_entity-Zres_quote_an .
*    ls_contract_head-Zres_target_bn   =  lr_deep_entity-Zres_target_bn .
*    ls_contract_head-Zres_target_an   =  lr_deep_entity-Zres_target_an .
*    ls_contract_head-Zres_budget_bn   =  lr_deep_entity-Zres_budget_bn .
*    ls_contract_head-Zres_budget_an   =  lr_deep_entity-Zres_budget_an .
*    ls_contract_head-Zres_baseline_bn   =  lr_deep_entity-Zres_baseline_bn  .
*    ls_contract_head-Zres_baseline_an   =  lr_deep_entity-Zres_baseline_an .
*
*    ls_contract_head-Zmethod_type     = lr_deep_entity-Zmethod_type .     "--Method Dropdown value for Baseline Result Price
*    ls_contract_head-forceful_proceed      = lr_deep_entity-forceful_proceed. "US# 3027 by SWDENDI
**"===}-E-SP38-US# 3026/12743_CTR:PC App-Add result value to the IPS savings methods-By NIhar-19June18
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#3007>
**   Passing the pack term and return term only for NPM
*    IF ls_contract_head-contracttype = 'NPM'.
*      ls_contract_head-pack_term   = lr_deep_entity-pack_term.
*      ls_contract_head-return_term = lr_deep_entity-return_term.
*    ENDIF.
******* End of Insert by  <VMANCHA> <US#3007>
*************************************************************************
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2944>
**   Passing the supplier contact person
*    ls_contract_head-con_person_id = lr_deep_entity-con_person_id.
******* End of Insert by  <VMANCHA> <US#2944>
*************************************************************************
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#12453>
**   Passing the release order contact
*    ls_contract_head-release_order_contact  = lr_deep_entity-release_order_contact.
******* End of Insert by  <VMANCHA> <US#12453>
*************************************************************************
*    ls_contract_head-avob_significant = lr_deep_entity-avob_significant. "US# 18298 by SWDENDI
******* Begin of Insert by  <KAMUPPA> <US#3073>
*    IF lr_deep_entity-cancelled_date IS NOT INITIAL.
*      ls_contract_head-cancelled_date = lr_deep_entity-cancelled_date.
*      ls_contract_head-cancelled = lr_deep_entity-ctr_action_flag.
*      ls_contract_head-cancel_reason =  lr_deep_entity-cancel_reason.
*    ENDIF.
******* End of Insert by  <KAMUPPA> <US#3073>
*    ls_contract_head-Zgpc_deactivate = lr_deep_entity-Zgpc_deactivate. " US# 20849 by SWDENDI
**{ BOC - RKORADA - US# 2956
**/.. Pass plant header plant distribution
*    LOOP AT lr_deep_entity-tocontractplantdist
*      ASSIGNING FIELD-SYMBOL(<fs_ctr_header_plant>).
*
*      APPEND INITIAL LINE TO ls_contract_head-plant_level
*      ASSIGNING FIELD-SYMBOL(<fs_ctr_h_plant_sect>).
*
*      MOVE: <fs_ctr_header_plant>-plant TO <fs_ctr_h_plant_sect>-plant.
**            <fs_ctr_header_plant>-Zvat_shipping_country TO
**                             <fs_ctr_h_plant_sect>-Zvat_shipping_country. "Venky      ""-SP32-US#3010--Assign VAT shipping country - by TTHIRUM
*
*    ENDLOOP.
**} EOC - RKORADA - US# 2956
*
**   VMANCHA US#21926 - Validate data in excel scenario
*    IF lr_deep_entity-excel_flag IS NOT INITIAL OR ( lr_deep_entity-excel_flag IS NOT INITIAL
*      AND line_exists( lr_deep_entity-tocontractitems[ action = 'ITEM_CHECK' ] ) ).
*      lo_ctr_app->excel_validate_data( EXPORTING im_fiori_header = ls_contract_head
*                                                 im_fiori_items  = lr_deep_entity-tocontractitems
*                                       IMPORTING ex_return_messages = lr_deep_entity-toreturnmessages ).
*      er_deep_entity     = lr_deep_entity.
**      EXIT.
*      IF line_exists( lr_deep_entity-toreturnmessages[ message_type = 'A' ] ). " Abort messages
*        RETURN.
*      ENDIF.
*
*    ENDIF.
*
**    CHECK lr_deep_entity-ctr_action_flag IS NOT INITIAL OR lr_deep_entity-action IS NOT INITIAL.
**"=============  Contract CREATE or MODIFY based on Input ============"
**"--------------------------------------------------------------------"
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <BUG_10620>
**    IF lr_deep_entity-object_id IS NOT INITIAL AND
*
*****  Commented this (Venky) - Don't delete
**    IF lr_deep_entity-guid IS NOT INITIAL AND
**       lr_deep_entity-action <> 'COPY'.
**
***     Calling method to change the item GUIDs
**      lo_ctr_app->modify_data_with_current_guids(
**                EXPORTING im_ctr_number = ls_contract_head-object_id
**                CHANGING  ch_ctr_items  = lr_deep_entity-tocontractitems[] ).
**
**    ENDIF.
******* End of Insert by  <VMANCHA> <BUG_10620>
*************************************************************************
*
*    DELETE lr_deep_entity-tocontractitems WHERE item_guid IS INITIAL AND
*                                                del_ind IS NOT INITIAL.
*
**      LOOP AT lr_deep_entity-tocontractitems ASSIGNING FIELD-SYMBOL(<fs_input_item>).   " Begin - Venky Conditions US
**        DELETE <fs_input_item>-toitempriceconditions WHERE cond_type = 'TTPR'.
**      ENDLOOP.                                                                          " End - Venky Conditions US
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2935>
*
**   Pass the action to header
*    ls_contract_head-action = lr_deep_entity-action.
*    ls_contract_head-transfer_pcr = lr_deep_entity-transfer_pcr. " US# NPSCC-23482_By SOPABBA
*** BOC{   US 1204 By SOPABBA
**  Below method is calculated to validate item in page 3 of Fiori
*    IF line_exists( lr_deep_entity-tocontractitems[ action = 'ITEM_CHECK' ] ).
*      CALL METHOD lo_ctr_app->validate_item_data
*        EXPORTING
*          im_fiori_header    = ls_contract_head
*          im_fiori_items     = lr_deep_entity-tocontractitems
*        IMPORTING
*          ex_return_messages = lr_deep_entity-toreturnmessages.
*      er_deep_entity = lr_deep_entity.
**      EXIT.
*      RETURN. "KAUSING
*    ENDIF.
*** EOC}   US 1204 By SOPABBA
*    CHECK lr_deep_entity-ctr_action_flag IS NOT INITIAL OR lr_deep_entity-action IS NOT INITIAL.   "By SOPABBA
**  Begin of changes by KAUSING*npscc 24077*create contract from quota app
**  When we navigate to contract app from quota and save the contract without navigating to
***  third page, then object id is coming blank. Populate the ctr number from guid
*    IF ls_contract_head-guid IS NOT INITIAL AND
*       ls_contract_head-object_id = '0000000000' AND
*       ls_contract_head-action = 'QUOTA_CREATE'.
*      SELECT SINGLE object_id
*        FROM crmd_orderadm_h
*        INTO ls_contract_head-object_id
*        WHERE guid = ls_contract_head-guid AND
*              object_type = 'BUS2000113'.
*      IF NOT sy-subrc IS INITIAL.
*        CLEAR ls_contract_head-object_id.
*
*      ENDIF.
*    ENDIF.
**  End of changes by KAUSING*npscc 24077*create contract from quota app
**   Check for the CTR number and if the action is 'COPY' contract
**    IF ls_contract_head-object_id IS NOT INITIAL AND                   "8872
*    IF ls_contract_head-guid IS NOT INITIAL AND
**       ls_contract_head-action = 'COPY'. "Ins of comments by KAUSING*NPSCC 22130*16/7
**     Begin of changes by KAUSING*16/07*npscc 22130
*      ( ls_contract_head-action = 'COPY' OR
*        ls_contract_head-action = 'QUOTA_CREATE' OR "Ins by KAUSING*npscc 24077*11/10/2019
*        ls_contract_head-action = 'TRANSFER' ).
**     End of changes by KAUSING*16/07*npscc 22130
**     Call method to create a new CTR by copying the existing CTR
**     including the changed data from fiori
*      lo_ctr_app->copy_contract(
*        EXPORTING
*          im_fiori_header       = ls_contract_head
*          im_fiori_header_notes = lr_deep_entity-tocontractheadertexts
**&----------------------------------------------------------------&*
**         JVASUDE -- 27TH DECEMBER,2017 -- Begin of changes for US 2947
*          im_fiori_attachments  = lr_deep_entity-toctrattachmentsinfo
**         JVASUDE -- 27TH DECEMBER,2017 -- End of changes for US 2947
**&----------------------------------------------------------------&*
*          im_fiori_relatedobjlink = lr_deep_entity-toctrrelatedobjlink   " US 22132 SOPABBA
*        IMPORTING
*          ex_ctr_number         = lr_deep_entity-object_id
*          ex_ctr_header_guid    = lr_deep_entity-guid                     " Venky 8872
*          ex_return_messages    = lr_deep_entity-toreturnmessages
*          ex_appr_prev_link     = lr_deep_entity-appr_prev_link         " kausing*npscc 23871
*        CHANGING
*          ch_fiori_items        = lr_deep_entity-tocontractitems      )." Venky US#10661
*
*    ELSE.
******* End of Insert by  <VMANCHA> <US#2935>
*************************************************************************
*
**    IF ls_contract_head-object_id  IS INITIAL .       "-- By Nihar
**    OR ls_contract_head-object_id  EQ '0000000000'
**    OR ls_contract_head-object_id  EQ '0' .
*      IF ls_contract_head-guid  IS INITIAL .
**"======= CREATE Contract
**"-- Header Supplier Text HTXT will be in ls_contract_head
**"-- Header Internal Text INTE will be in lr_deep_entity-tocontractheadertexts
**"-- Item Supplier Text ITXT /Item Long Description ETXT will be in lr_deep_entity-tocontractitems
*        CALL METHOD lo_ctr_app->create_contract
*          EXPORTING
*            im_fiori_header       = ls_contract_head
*            im_fiori_items        = lr_deep_entity-tocontractitems
*            im_fiori_header_notes = lr_deep_entity-tocontractheadertexts
**&----------------------------------------------------------------&*
**         JVASUDE -- 27TH DECEMBER,2017 -- Begin of changes for US 2947
*            im_fiori_attachments  = lr_deep_entity-toctrattachmentsinfo
**         JVASUDE -- 27TH DECEMBER,2017 -- End of changes for US 2947
**&----------------------------------------------------------------&*
*          IMPORTING
*            ex_ctr_number         = lr_deep_entity-object_id
*            ex_ctr_header_guid    = lr_deep_entity-guid                     " Venky 8872
*            ex_appr_prev_link     = lr_deep_entity-appr_prev_link         " kausing*npscc 23871
*            ex_return_messages    = lr_deep_entity-toreturnmessages.      " Venky US#10661
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#3057>
**     If the action is to withdraw the approval
*      ELSEIF ls_contract_head-guid IS NOT INITIAL AND
*             ls_contract_head-action = 'WITHDRAW_APPROVAL'.
*
*        lo_ctr_app->withdraw_approval(
*             EXPORTING im_ctr_number         = ls_contract_head-object_id
*                       im_ctr_header_guid    = ls_contract_head-guid
*                       im_fiori_header_notes = lr_deep_entity-tocontractheadertexts
*             IMPORTING ex_return_messages    = lr_deep_entity-toreturnmessages ).
******* End of Insert by  <VMANCHA> <US#3057>
*************************************************************************
*      ELSE .
**"======= UPDATE Contract
*        "-- code moved to here from inside CREATE_CONTRACT .  By NIhar
*
*        CREATE OBJECT lo_object.
*        MOVE ls_contract_head-object_id TO ev_contract_no  .
*        MOVE ls_contract_head-object_id TO ls_ctr_input-object_id  .
*        IF ev_contract_no IS NOT INITIAL.
*
*          CALL METHOD lo_object->get_current_version_guid
*            EXPORTING
*              iv_object_id = ev_contract_no
*            IMPORTING
*              ev_guid      = lv_guid.
*
**                *   US 2948 by tsachan Contract language
**        ls_ctr_input-guid = lv_guid.
**        ls_ctr_input-supplier = ls_contract_head-supplier.
**        ls_ctr_input-responsible_buyer = ls_contract_head-responsible_buyer.
**        ls_ctr_input-language_key = ls_contract_head-language_key.
**
**
*****   For updating the fiscal year by Tsachan
**        ls_ctr_input-fiscal_year = ls_contract_head-fiscal_year.
**        ls_ctr_input-currency = ls_contract_head-currency.
*          MOVE ls_contract_head TO ls_ctr_input.
*          ls_ctr_input-guid = lv_guid.
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#9528>
**         Check if the any one of the item is selected and copied from fiori
*          LOOP AT lr_deep_entity-tocontractitems ASSIGNING FIELD-SYMBOL(<fs_items_check>)
*                                 WHERE copied_item_guid IS NOT INITIAL.
*            DATA(lv_item_copied_from_fiori) = abap_true.
*            EXIT.
*          ENDLOOP.
*
*          IF lv_item_copied_from_fiori IS NOT INITIAL.
**     Same method will be called to create a new CTR items by copying
**     the existing CTR items including the changed data from fiori
*            lo_ctr_app->copy_contract(
*                EXPORTING
*                  im_fiori_header       = ls_ctr_input
*                  im_fiori_header_notes = lr_deep_entity-tocontractheadertexts
*                  im_fiori_attachments  = lr_deep_entity-toctrattachmentsinfo
*                IMPORTING
*                  ex_ctr_number         = lr_deep_entity-object_id
*                  ex_ctr_header_guid    = lr_deep_entity-guid                     " Venky 8872
*                  ex_return_messages    = lr_deep_entity-toreturnmessages
*                CHANGING
*                  ch_fiori_items        = lr_deep_entity-tocontractitems      )." Venky US#10661
*          ENDIF.
******* End of Insert by  <VMANCHA> <US#9528>
*************************************************************************
*          CALL METHOD lo_object->modify_contract
*            EXPORTING
*              im_fiori_header       = ls_contract_head
*              im_fiori_items        = lr_deep_entity-tocontractitems
*              im_fiori_header_notes = lr_deep_entity-tocontractheadertexts
**&----------------------------------------------------------------&*
**         JVASUDE -- 27TH DECEMBER,2017 -- Begin of changes for US 2947
*              im_fiori_attachments  = lr_deep_entity-toctrattachmentsinfo
**         JVASUDE -- 27TH DECEMBER,2017 -- End of changes for US 2947
**&----------------------------------------------------------------&*
*            IMPORTING
*              ex_ctr_number         = lr_deep_entity-object_id
*              ex_ctr_header_guid    = lr_deep_entity-guid                     " Venky 8872
*              ex_return_messages    = lr_deep_entity-toreturnmessages      " Venky US#10661
*              ex_appr_prev_link     = lr_deep_entity-appr_prev_link.       " KAUSING*npscc 23871
*
*        ENDIF.
*      ENDIF.
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2935>
*    ENDIF.
******* End of Insert by  <VMANCHA> <US#2935>
*************************************************************************
*
*************************************************************************
******* Begin of Insert by  <VMANCHA> <US#2945>
**   Update the output parameters for SAVE/RELEASE scenario
*    IF lr_deep_entity-ctr_action_flag = 'S' OR
**     Begin of changes by KASUING*npscc 23871
*      ( lr_deep_entity-ctr_action_flag = 'A' AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'A' ] ) AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'E' ] ) ) OR
**     End of changes by KAUSING*npscc 23871
*      ( lr_deep_entity-ctr_action_flag = 'R' AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'A' ] ) AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'E' ] ) ).
**     Calling method get the output medium
*      lo_output_medium->define_output_medium(
*              EXPORTING im_mode              = 'FIORI'
*                        im_commit            = abap_true
*                        im_object_type       = lo_output_medium->at_ctr_bus2000113
*              CHANGING  ch_ctr_fiori_data    = lr_deep_entity ).
*    ENDIF.
******* End of Insert by  <VMANCHA> <US#2945>
*************************************************************************
**** <Begin of changes by Gsamina><US-12971>
***--  Trigger Outbound Message to PUMA
*    CREATE OBJECT lo_epu_ob.
*    IF ( lr_deep_entity-ctr_action_flag = 'E' AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'A' ] ) AND
*        NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'E' ] ) ).
*
**/.. Check if there are no warnings
*      IF NOT line_exists( lr_deep_entity-toreturnmessages[ message_type = 'W' ] ) OR
**/.. Check if there are warnings and user still wanted to proceed.
*            ( line_exists( lr_deep_entity-toreturnmessages[ message_type = 'W' ] )
*               AND lr_deep_entity-forceful_proceed IS NOT INITIAL ) .
*
*        CALL METHOD lo_epu_ob->ctr_epu_request_outbound(
*          EXPORTING
*            im_ctr_obj_id      = lr_deep_entity-object_id
*            im_ctr_guid        = lr_deep_entity-guid
*          IMPORTING
*            ex_return_messages = lr_deep_entity-toreturnmessages ).
*      ENDIF.
*    ENDIF.
**** <End of changes by Gsamina><US-12971>
**** <Begin Of Changes BY SOPABBA><US-19216>
**    Clear previous EPU values when contract is modified
*    IF lr_deep_entity-ctr_action_flag = 'S' AND lr_deep_entity-avob_significant EQ abap_true.
*      CALL METHOD lo_epu_ob->clear_epu_value(
*        EXPORTING
*          im_ctr_guid = lr_deep_entity-guid ).
*    ENDIF.
**** <End Of Changes BY SOPABBA><US-19216>
*************************************************************************
**   Do not pass error messages for force save scenario
*    IF lr_deep_entity-ctr_action_flag = 'S'.
*      DELETE lr_deep_entity-toreturnmessages WHERE message_type = 'E'.
*    ENDIF.
** Boc US# 3027 by SWDENDI - Quota Check 100%
*    IF line_exists( lr_deep_entity-toreturnmessages[ message_type = 'W' ] )
*      AND  ( lr_deep_entity-ctr_action_flag = 'E' OR lr_deep_entity-ctr_action_flag = 'R' )
*      AND lr_deep_entity-forceful_proceed IS INITIAL.
*      DELETE lr_deep_entity-toreturnmessages WHERE message_type = 'D'.
*    ENDIF.
** Eoc US# 3027 by SWDENDI
******* Begin of Insert by  <VMANCHA> <US#10661>
**   Passing dummy guid just for handling key field
*    LOOP AT lr_deep_entity-toreturnmessages ASSIGNING FIELD-SYMBOL(<fs_msg>).
*
**/.. RKORADA - 24/09/2018 - When message type is ABORT, then saving should be stopped.
****      IF <fs_msg>-message_type = 'A'.
****        <fs_msg>-message_type = 'E'.
****      ENDIF.
*      IF <fs_msg>-item_number IS INITIAL
*        OR line_exists( lr_deep_entity-tocontractitems[
*                    disp_number = <fs_msg>-item_number cancelled = space ] ).
*
*        lv_count = lv_count + 1.
*        <fs_msg>-dummy_guid = <fs_msg>-dummy_guid + lv_count.
*      ENDIF.
*
*    ENDLOOP.
*    DELETE lr_deep_entity-toreturnmessages WHERE dummy_guid IS INITIAL.
******* End of Insert by  <VMANCHA> <US#10661>
*************************************************************************
*
**"--  Pass results to Frontend Entityset
*    er_deep_entity     = lr_deep_entity.
*    er_deep_entity-language_key = ls_language-lang_key.
*    er_deep_entity-language = ls_language-language.
*    er_deep_entity-supplier = ls_supplier.
*
  ENDMETHOD.


  METHOD create_contract_deep_entity_v.
************************************************************************
* Author             :  AMAJAIN                                        *
* Title              :  Create Contract Deep Entity                    *
* Date               :  2017-10-30                                     *
* Module             : PC: Create Draft Contract                       *
*_____________________________________________________________________ *
* DESCRIPTION (2933)
* This method is resposible for creating and updating the contract.
***********************************************************************
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        14-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2962                              &*
*&              Passing the competitive bid and corresponding reason  &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        15-Dec-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2944                              &*
*&              Passing the supplier contact person                   &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        31-Jan-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2935                              &*
*&              Creating a CTR by copying an existing CTR             &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Date:        14-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: BUG#10620: Mapping the current version item guids to  &*
*&              the items coming from fiori, as the fiori items has   &*
*&              changed version GUIDs.                                &*
*&--------------------------------------------------------------------&*
*----------------------------------------------------------------------*
*& Date:        16-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#9528                              &*
*&              Create item for the contract by copying the existing  &*
*&              line items.                                           &*
*&--------------------------------------------------------------------&*
*& Date:        16-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for US#2951                              &*
*&              Add Bundle ID field on Header Level of CTR            &*
*&--------------------------------------------------------------------&*
*----------------------------------------------------------------------*
*& Date:        28-Feb-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3007                              &*
*&              Passing the pack term and return term to local header &*
*&              structure only for NPM contract.                      &*
*&--------------------------------------------------------------------&*
*&--------------------------------------------------------------------&*
*& Date:        02-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for mapping of fields after changing     &*
*&              custom field names with Z as preceeding          &*
*----------------------------------------------------------------------*
*& Date:        07-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                         &*
*& Description: Changes done for SP33-US#3052                         &*
*&              Change manual contract creation date (Header)         &*
*&--------------------------------------------------------------------&*
*& Date:        06-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#10661                             &*
*&              Passing the formatted messages to fiori               &*
*&--------------------------------------------------------------------&*
*& Date:        19-June-2018                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for SP38_US# 3026/12743                  &*
*&    PC App-Add result value to the IPS savings methods -Page2       &*
*&   Changes done to Save Results for diff types of Price  in DB      &*
*&--------------------------------------------------------------------&*
*& Date:        30-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#2945                              &*
*&              Define output medium based on fiori/DB data           &*
*&--------------------------------------------------------------------&*
*& Date:        31/07/2018                                            &*
*& Developer:   Nihar Ranasingh(NRANASI)                              &*
*& Description: SP41-US# 14629-Fiori App Contract                     &*
*&          -(Service Location) On/Off Campus flag for IPS contracts  &*
*&           This is Applicable only for NPM type CTR                 &*
*---------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
*& Date:        29/08/2018                                            &*
*& Developer:   Gayathri Saminathan(GSAMINA)                          &*
*& Description: SP43-US# 12971-Trigger Outbound Message to PUMA       &*
*---------------------------------------------------------------------*
*& Date:        14-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#3057                              &*
*&              Add the withdraw approval text to document and then   &*
*&              trigger the Withdraw Approval outbound message        &*
*&--------------------------------------------------------------------&*
*& Date:        10-Jan-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#15261                             &*
*&              Passing the approval urgency flag                     &*
*&--------------------------------------------------------------------&*

    DATA: ls_fiori_head TYPE zfio_ctr_hdr,
          lt_tiern_data TYPE zcl_zfio_mng_ctr_mpc=>tt_contractitemtiern,  "++ SRINIV NPSCC-30601
          lv_count      TYPE p VALUE IS INITIAL.                           " Venky US#10661
****Transform data into the internal structure************
    TRY .
        io_data_provider->read_entry_data(
          IMPORTING
            es_data = er_deep_entity ).
      CATCH /iwbep/cx_mgw_tech_exception INTO DATA(lo_exception).
        DATA(text) = lo_exception->get_text( ).
        CLEAR er_deep_entity.
    ENDTRY.

    IF er_deep_entity IS INITIAL.
      APPEND INITIAL LINE TO er_deep_entity-toreturnmessages ASSIGNING FIELD-SYMBOL(<fs_return_msg>).
      <fs_return_msg>-message_type = 'A'.
      <fs_return_msg>-message = TEXT-017.
      RETURN.
    ENDIF.

    DATA(lo_ctr_app)       = NEW zcl_contract_app( ).
    DATA(lo_output_medium) = NEW zpd_trigger_output_medium( ).
    "DATA(lo_ctr_epu)       = NEW zcl_ctr_epu( ).
    "DATA(lo_ctr_outbound)  = NEW zcl_contract_outbound( ).

    TRANSLATE er_deep_entity-responsible_buyer TO UPPER CASE.
    TRANSLATE er_deep_entity-operative_buyer TO UPPER CASE.

    ls_fiori_head = CORRESPONDING #( er_deep_entity ).

****** Begin of Insert by  <KAMUPPA> <US#3073>
    IF ls_fiori_head-cancelled_date IS NOT INITIAL.
      ls_fiori_head-cancelled = er_deep_entity-ctr_action_flag.
    ELSE.
      CLEAR: ls_fiori_head-cancel_reason.
    ENDIF.
****** End of Insert by  <KAMUPPA> <US#3073>

************************************************************************

*{ BOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
    LOOP AT er_deep_entity-toctrattachmentsinfo
      ASSIGNING FIELD-SYMBOL(<fs_attach>) WHERE ecs_fpath IS NOT INITIAL.

      DATA(lv_filename) = <fs_attach>-ecs_fpath.
      REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
*   Decode URI
      SPLIT lv_filename AT '/' INTO DATA(ls_blank) DATA(ls_buckname) DATA(ls_filename).
*   Encode URI

      cl_http_utility=>unescape_url(
        EXPORTING
          escaped   =  ls_filename   " URL-Encoded String
*        options   =     " Reserve for Future Enhancements
        RECEIVING
          unescaped = ls_filename    " Decoded string
      ).

      CONCATENATE '/' ls_buckname '/' ls_filename INTO <fs_attach>-ecs_fpath.

      CLEAR : lv_filename , ls_blank , ls_buckname   .

    ENDLOOP.
*} EOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
****** Begin of Insert by  <VMANCHA> <US#2945>
    "IF er_deep_entity-action = 'OUTPUT_MEDIUM'.
"*     Calling method get the output medium
"      lo_output_medium->define_output_medium(
"              EXPORTING im_mode              = 'FIORI'
"                        im_object_type       = lo_output_medium->at_ctr_bus2000113
"              CHANGING  ch_ctr_fiori_data    = er_deep_entity ).

"* Boc US# 23483 by SWDENDI
"      lo_ctr_app->determine_wvdv_service_loc(
"          EXPORTING
"            im_mode           = 'FIORI'
"            im_result         = 'X'
"          CHANGING
"            ch_ctr_fiori_data = er_deep_entity ).

"*    er_deep_entity = er_deep_entity.
"* Eoc US# 23483 by SWDENDI
"      RETURN.
"****** End of Insert by  <VMANCHA> <US#2945>
"************************************************************************

"********  BOC by SHENVIA for US NPSCC-28306 : Second Language Defaulting  **********
"* Defaulting the second output language
"    ELSEIF er_deep_entity-action = 'DFLT_SECOND_LANG'.
"      CALL METHOD lo_ctr_app->default_second_language
"        EXPORTING
"          im_company_code    = ls_fiori_head-co_code
"          im_buyer           = ls_fiori_head-responsible_buyer
"          im_doc_type        = ls_fiori_head-contracttype
"          im_language        = ls_fiori_head-language_key
"        IMPORTING
"          ex_second_language = er_deep_entity-second_language_key
"          ex_sec_lang_decs   = er_deep_entity-second_language.

"      RETURN.
"********  EOC by SHENVIA for US NPSCC-28306 : Second Language Defaulting  **********

"    ELSEIF er_deep_entity-action = 'WV/DV_CHECK'.
"*"==={-B-SP41-US# 14629:Fiori App Contract-(Service Location) On/Off Campus flag for IPS contracts_By NRANASI
"*"--•If above assumptions are met: ◦the WV/DV flag is set to "yes/ja" (*◦the WV/DV field is not editable)
"*"-- Conditions to validate---> any 1 condition met
"*"--•If the buyer is a IPS Buyer
"*"--•If the Comm_code is WV/DV CRITICAL (S4) ( Table - ZCOMCOD_CAT)
"*"--.If there is a German consumption plant
"      IF er_deep_entity-contracttype = 'NPM'
"        OR er_deep_entity-contracttype = 'ZIPS'. "++ SRINIV NPSCC-32533
"*"-- Call Method for WV/DV flag determination
"        lo_ctr_app->determine_wvdv_service_loc(     "--Applicable only for NPM CTR
"          EXPORTING
"            im_mode           = 'FIORI'
"          CHANGING
"            ch_ctr_fiori_data = er_deep_entity ).
"*      er_deep_entity = er_deep_entity.
"      ENDIF.

     " RETURN.
*"===}-E-SP41-US# 14629:Fiori App Contract-(Service Location) On/Off Campus flag for IPS contracts_By NRANASI

************************************************************************
****** Begin of Insert by  <VMANCHA> <US#3057>
*     If the action is to withdraw the approval
   " ELSEIF ls_fiori_head-guid IS NOT INITIAL AND
"           ls_fiori_head-action = 'WITHDRAW_APPROVAL'.

"      lo_ctr_app->withdraw_approval(
"           EXPORTING im_ctr_number         = ls_fiori_head-object_id
"                     im_ctr_header_guid    = ls_fiori_head-guid
"                     im_fiori_header_notes = er_deep_entity-tocontractheadertexts
"           IMPORTING ex_return_messages    = er_deep_entity-toreturnmessages ).
"****** End of Insert by  <VMANCHA> <US#3057>
"************************************************************************

"      RETURN.

"****** Begin of Changes by  SHENVIA US#26359
"* NPSCC-26359  PC App: Move supplier confirmation on behalf
"*     If the action is Supplier Confirmation
"    ELSEIF ls_fiori_head-guid IS NOT INITIAL AND
"           ls_fiori_head-action = 'SUPP_CONF'.
"      lo_ctr_app->supplier_confirmation(
"        EXPORTING
"          im_document_id       =  ls_fiori_head-object_id
"          im_ctr_head_guid     =  ls_fiori_head-guid   " Globally Unique identifier
"          im_supp_conf_date    =  ls_fiori_head-supp_conf_date   " Supplier confirmation for purchase document
"          im_action            =  'UPDATE'  " Single-Character Flag
"          im_fiori_attachments = er_deep_entity-toctrattachmentsinfo
"        IMPORTING
"          ex_messages          =  DATA(lt_messages)  " Return table
"      ).

"*/..Loop the messages for error or abort
"      DATA : lv_msg TYPE  bapi_msg.
"      DATA : lv_number TYPE char3.

"      LOOP AT lt_messages ASSIGNING FIELD-SYMBOL(<fs_bapiret>)
"         WHERE type = 'E' OR type = 'A' OR type = 'D'. " Type = 'D' for front end purpose
"        APPEND INITIAL LINE TO er_deep_entity-toreturnmessages ASSIGNING <fs_return_msg>.
"        <fs_return_msg>-ctr_head_guid = ls_fiori_head-guid.
"        <fs_return_msg>-id            = <fs_bapiret>-id.

"        lv_number = <fs_bapiret>-number.

"        CALL FUNCTION 'MESSAGE_PREPARE'
"          EXPORTING
"*           LANGUAGE               = ' '
"            msg_id                 = <fs_bapiret>-id
"            msg_no                 = lv_number
"          IMPORTING
"            msg_text               = lv_msg
"          EXCEPTIONS
"            function_not_completed = 1
"            message_not_found      = 2
"            OTHERS                 = 3.
"        IF sy-subrc EQ 0.
"          <fs_return_msg>-message       = lv_msg.
"        ENDIF.

"        <fs_return_msg>-message_num   = <fs_bapiret>-number.
"        <fs_return_msg>-message_type  = <fs_bapiret>-type.
"      ENDLOOP.

"      RETURN.
"****** End of Changes by  SHENVIA US#26359
"*  Begin of changes by KAUSING*npscc 30967
"    ELSEIF ls_fiori_head-guid IS NOT INITIAL AND
"           ls_fiori_head-action = 'AUTO_CONF_REJE'.
"      lo_ctr_app->set_rejected_status(
"        EXPORTING
"          im_object_id         =  ls_fiori_head-object_id
"          im_ctr_head_guid     =  ls_fiori_head-guid   " Globally Unique identifier
"          im_rejection_date    =  ls_fiori_head-supp_conf_date   " Supplier confirmation for purchase document
"          im_fiori_attachments = er_deep_entity-toctrattachmentsinfo
"        IMPORTING
"          ex_messages          =  lt_messages  " Return table
"      ).

"*/..Loop the messages for error or abort

"      LOOP AT lt_messages ASSIGNING <fs_bapiret>
"         WHERE type = 'E' OR type = 'A' . " Type = 'D' for front end purpose
"        APPEND INITIAL LINE TO er_deep_entity-toreturnmessages ASSIGNING <fs_return_msg>.
"        <fs_return_msg>-ctr_head_guid = ls_fiori_head-guid.
"        <fs_return_msg>-id            = <fs_bapiret>-id.

"        lv_number = <fs_bapiret>-number.

"        CALL FUNCTION 'MESSAGE_PREPARE'
"          EXPORTING
"*           LANGUAGE               = ' '
"            msg_id                 = <fs_bapiret>-id
"            msg_no                 = lv_number
"          IMPORTING
"            msg_text               = lv_msg
"          EXCEPTIONS
"            function_not_completed = 1
"            message_not_found      = 2
"            OTHERS                 = 3.
"        IF sy-subrc EQ 0.
"          <fs_return_msg>-message       = lv_msg.
"        ENDIF.

"        <fs_return_msg>-message_num   = <fs_bapiret>-number.
"        <fs_return_msg>-message_type  = <fs_bapiret>-type.
"      ENDLOOP.

"      RETURN.
"*   End of changes by KAUSING*npscc 30967

"    ELSEIF er_deep_entity-action = 'PNC_ADD'.

"      DATA(lo_ctr_app_pnc) =  NEW zcl_ctr_app_handling(
"                                          im_fiori_head        = ls_fiori_head
"                                          im_fiori_items       = er_deep_entity-tocontractitems ).
"      lo_ctr_app_pnc->update_contract_pnc( ).
"      APPEND LINES OF lo_ctr_app_pnc->at_return_msgs TO er_deep_entity-toreturnmessages.
"      IF lo_ctr_app_pnc->at_return_msgs IS INITIAL.
"        er_deep_entity-object_id = lo_ctr_app_pnc->at_updated_header-object_id.
"        er_deep_entity-guid = lo_ctr_app_pnc->at_updated_header-guid.
"        er_deep_entity-pnc_item_no = lo_ctr_app_pnc->at_item_no_pnc.
"      ENDIF.
"      RETURN.
"****** End of Changes by  SWDENDI NPSCC-25806
"****** Begin of Changes by  SWDENDI NPSCC-2987
"    ELSEIF er_deep_entity-action = 'PNC_CREATE'.

"      lo_ctr_app_pnc =  NEW zcl_ctr_app_handling(
"                                          im_fiori_head        = ls_fiori_head
"                                          im_fiori_items       = er_deep_entity-tocontractitems ).
"      lo_ctr_app_pnc->update_contract_pnc( im_action = 'CREATE' ).
"      er_deep_entity-object_id = lo_ctr_app_pnc->at_fiori_head-object_id.
"      APPEND LINES OF lo_ctr_app_pnc->at_return_msgs TO er_deep_entity-toreturnmessages.
"      RETURN.
"****** End of Changes by  SWDENDI NPSCC-2987
"****** Begin of Changes by  SWDENDI NPSCC-24421
"    ELSEIF er_deep_entity-action = 'QUOTA_ADD'.

"      DATA(lo_ctr_app_quota) =  NEW zcl_ctr_app_handling(
"                                          im_fiori_head        = ls_fiori_head
"                                          im_fiori_items       = er_deep_entity-tocontractitems ).
"      lo_ctr_app_quota->update_contract_quota(  ).
"      APPEND LINES OF lo_ctr_app_quota->at_return_msgs TO er_deep_entity-toreturnmessages.
"      IF lo_ctr_app_quota->at_return_msgs IS INITIAL.
"        er_deep_entity-object_id = lo_ctr_app_quota->at_updated_header-object_id.
"        er_deep_entity-guid = lo_ctr_app_quota->at_updated_header-guid.
"        er_deep_entity-pnc_item_no = lo_ctr_app_quota->at_item_no_pnc.
"      ENDIF.
"      RETURN.
"****** End of Changes by  SWDENDI NPSCC-24421
"****** Begin of Changes by  SWDENDI NPSCC-27751
"    ELSEIF er_deep_entity-action = 'CONDENSE'.

"      NEW zcl_contract_app( )->condense_pricing(
"        EXPORTING
"          im_doc_guid  = ls_fiori_head-guid
"          im_object_id = ls_fiori_head-object_id
"          im_status    = ls_fiori_head-ctr_status
"        IMPORTING
"          ex_lock_ind  = er_deep_entity-lock_ind ).
"      er_deep_entity-object_id = ls_fiori_head-object_id.
"      er_deep_entity-guid = ls_fiori_head-guid.
"      RETURN.
"****** End of Changes by  SWDENDI NPSCC-27751
"****** Begin of Changes by  SWDENDI NPSCC-28451
"    ELSEIF er_deep_entity-action = 'RENEGOTIATE'.

"      zcl_ctr_app_handling=>renegotiate_ctr_to_rfx(
"        EXPORTING
"          im_object_guid   = ls_fiori_head-guid
"          im_object_id     = ls_fiori_head-object_id
"          im_valid_from    = ls_fiori_head-validity_from
"          im_valid_to      = ls_fiori_head-validity_to
"        IMPORTING
"          ex_rfx_guid   = er_deep_entity-follow_ondoc_guid
"          ex_rfx_number = er_deep_entity-follow_ondoc_no
"          ex_doc_type   = er_deep_entity-follow_ondoc_type
"          et_returnmsgs = er_deep_entity-toreturnmessages ).
"      er_deep_entity-object_id = ls_fiori_head-object_id.
"      er_deep_entity-guid = ls_fiori_head-guid.
"      er_deep_entity-supplier = ls_fiori_head-supplier.
"      er_deep_entity-supplier_name = ls_fiori_head-supplier_name.
"      RETURN.
"****** End of Changes by  SWDENDI NPSCC-28451
"*  START OF CHANGES BY shenvia FOR us npscc-26264
"    ELSEIF er_deep_entity-action = 'RES_REVIEW'.
"      CALL METHOD lo_ctr_app->update_ctr_status_text
"        EXPORTING
"          im_ctr_guid = ls_fiori_head-guid
"          im_action   = er_deep_entity-action
"          im_comment  = er_deep_entity-buy_review_comt.
"      RETURN.
"*    End OF CHANGES BY shenvia FOR us npscc-26264
"    ENDIF.

"* To validate specific item from page 3 of fiori
"    IF line_exists( er_deep_entity-tocontractitems[ action = 'ITEM_CHECK' ] ).
"* BOC_NPSCC-28963_By SOPABBA_Plant Extension: Save Item data
"      IF er_deep_entity-tosourceplantdata IS NOT INITIAL.
"        DATA(ls_fiori_source_data) = er_deep_entity-tosourceplantdata[ 1 ].
"      ELSE.
"        CLEAR ls_fiori_source_data.
"      ENDIF.
"* EOC_NPSCC-28963_By SOPABBA_Plant Extension: Save Item data
"* BOC_NPSCC-28972_By SOPABBA_Use the new mass change dialog also in document view
"      IF er_deep_entity-tocontractitemmasschg IS NOT INITIAL.
"        DATA(ls_item_masschg_data) = er_deep_entity-tocontractitemmasschg[ 1 ].
"      ELSE.
"        CLEAR ls_item_masschg_data.
"      ENDIF.
"* EOC_NPSCC-28972_By SOPABBA_Use the new mass change dialog also in document view
"      DATA(lo_ctr_app_handle) = NEW zcl_ctr_app_handling(
"                                          im_fiori_head        = ls_fiori_head
"                                          im_fiori_head_notes  = er_deep_entity-tocontractheadertexts
"                                          im_fiori_head_plants = er_deep_entity-tocontractplantdist
"                                          im_fiori_items       = er_deep_entity-tocontractitems
"                                          im_fiori_attachments = er_deep_entity-toctrattachmentsinfo
"                                          im_fiori_source_data = ls_fiori_source_data     "NPSCC-28963_By SOPABBA
"                                          im_item_masschg_data = ls_item_masschg_data ).  "NPSCC-28972_By SOPABBA
"*    *Begin of changes -- JVASUDE -- 26th October,2020 -- Changes for US NSPCC-30570 -- Plant section logic update
"      lo_ctr_app_handle->at_call_from = 'F'.
"*    *End of changes -- JVASUDE -- 26th October,2020 -- Changes for US NSPCC-30570 -- Plant section logic update

"      IF er_deep_entity-excel_flag IS INITIAL.
"*     US 1204 By SOPABBA
"        lo_ctr_app_handle->validate_item_data( EXPORTING im_disp_num =
"                           er_deep_entity-tocontractitems[ action = 'ITEM_CHECK' ]-disp_number ).
"      ELSE.
"*     VMANCHA US#21926 - Validate data in excel scenario
"        lo_ctr_app_handle->validate_excel_data( ).
"      ENDIF.

"      er_deep_entity = er_deep_entity.

"      APPEND LINES OF lo_ctr_app_handle->at_return_msgs TO er_deep_entity-toreturnmessages.

"      RETURN.

"    ENDIF.

"* Proceed for check/create/update/copy based on flag
"    CHECK er_deep_entity-ctr_action_flag IS NOT INITIAL OR er_deep_entity-action IS NOT INITIAL.
"*  Begin of changes by KAUSING*npscc 24077*create contract from quota app
"*  When we navigate to contract app from quota and save the contract without navigating to
"**  third page, then object id is coming blank. Populate the ctr number from guid
"    IF ls_fiori_head-guid IS NOT INITIAL AND
"       ls_fiori_head-object_id = '0000000000' AND
"      ( ls_fiori_head-action = 'QUOTA_CREATE' OR ls_fiori_head-action = 'PNC' ).
"      SELECT SINGLE object_id
"        FROM crmd_orderadm_h
"        INTO ls_fiori_head-object_id
"        WHERE guid = ls_fiori_head-guid AND
"              object_type = 'BUS2000113'.
"      IF sy-subrc IS NOT INITIAL.
"        CLEAR ls_fiori_head-object_id.
"      ENDIF.
"    ENDIF.
"*  End of changes by KAUSING*npscc 24077*create contract from quota app

"************************************************************************
"*&----------------------------------------------------------------------&*
"    IF er_deep_entity-contracttype <> 'ZDTL'. "US# 31517 by SWDENDI
"      "Begin of changes -- 06/10/2020 -- NPSCC-30927 -- Performance Optimization : POC story to implement the proposed SAVE logic
"      me->large_ctr_processing( IMPORTING ex_return = DATA(lv_return)
"                                CHANGING  cs_entity = er_deep_entity ).
"      IF lv_return = abap_true.
"        RETURN.
"      ENDIF.
"    ENDIF.
"    "End of changes -- 06/10/2020 -- NPSCC-30927 -- Performance Optimization : POC story to implement the proposed SAVE logic
"*&----------------------------------------------------------------------&*
"****** Begin of Insert by  <VMANCHA> <US#2935>
"* Check for the CTR number and if the action is 'COPY' contract
"    IF  ls_fiori_head-guid IS NOT INITIAL AND
"*     Begin of changes by KAUSING*16/07*npscc 22130
"      ( ls_fiori_head-action = 'COPY' OR
"        ls_fiori_head-action = 'QUOTA_CREATE' OR "Ins by KAUSING*npscc 24077*11/10/2019
"        ls_fiori_head-action = 'TRANSFER'  OR
"        ls_fiori_head-action = 'PNC' OR "US# 27757 by Kaushal
"        ls_fiori_head-action = 'SUPP_CHANGE' ).  " US# 29958 by SWDENDI
"*     End of changes by KAUSING*16/07*npscc 22130
"*     Call method to create a new CTR by copying the existing CTR
"*     including the changed data from fiori

"*   Deleting items which are having deletion flag
"      DELETE er_deep_entity-tocontractitems WHERE del_ind IS NOT INITIAL.

"      lo_ctr_app->copy_contract(
"        EXPORTING
"          im_fiori_header       = ls_fiori_head
"          im_fiori_header_plants = er_deep_entity-tocontractplantdist
"          im_fiori_header_notes = er_deep_entity-tocontractheadertexts
"          im_fiori_attachments  = er_deep_entity-toctrattachmentsinfo
"          im_fiori_relatedobjlink = er_deep_entity-toctrrelatedobjlink   " US 22132 SOPABBA
"          im_fiori_dibs_plant     = er_deep_entity-todetroitdieseldibs   " Bug# 32187 SWDENDI
"        IMPORTING
"          ex_ctr_number         = er_deep_entity-object_id
"          ex_ctr_header_guid    = er_deep_entity-guid                     " Venky 8872
"          ex_return_messages    = er_deep_entity-toreturnmessages
"          ex_appr_prev_link     = er_deep_entity-appr_prev_link         " kausing*npscc 23871
"          ex_action_data        = DATA(ls_action_data)
"          ex_qta_upd_flag       = er_deep_entity-quota_upd_flag
"        CHANGING
"          ch_fiori_items        = er_deep_entity-tocontractitems      )." Venky US#10661

"      IF ls_fiori_head-action = 'SUPP_CHANGE'.
"        er_deep_entity-source_doc_guid = ls_action_data-source_doc_guid.
"        er_deep_entity-qta_append_ctr = ls_action_data-source_doc.
"      ENDIF.

"****** End of Insert by  <VMANCHA> <US#2935>
"************************************************************************
"    ELSE.
"* BOC_NPSCC-28963_By SOPABBA_Plant Extension: Save Item data
"      IF er_deep_entity-tosourceplantdata IS NOT INITIAL.
"        ls_fiori_source_data = er_deep_entity-tosourceplantdata[ 1 ].
"      ELSE.
"        CLEAR ls_fiori_source_data.
"      ENDIF.
"* EOC_NPSCC-28963_By SOPABBA_Plant Extension: Save Item data
"* BOC_NPSCC-28972_By SOPABBA_Use the new mass change dialog also in document view
"      IF er_deep_entity-tocontractitemmasschg IS NOT INITIAL.
"        ls_item_masschg_data = er_deep_entity-tocontractitemmasschg[ 1 ].
"      ELSE.
"        CLEAR ls_item_masschg_data.
"      ENDIF.
"* EOC_NPSCC-28972_By SOPABBA_Use the new mass change dialog also in document view
"      lo_ctr_app_handle = NEW zcl_ctr_app_handling(
"                                          im_fiori_head        = ls_fiori_head
"                                          im_fiori_head_notes  = er_deep_entity-tocontractheadertexts
"                                          im_fiori_head_plants = er_deep_entity-tocontractplantdist
"                                          im_fiori_items       = er_deep_entity-tocontractitems
"                                          im_fiori_attachments = er_deep_entity-toctrattachmentsinfo
"                                          im_fiori_source_data = ls_fiori_source_data      "NPSCC-28963_By SOPABBA
"                                          im_item_masschg_data = ls_item_masschg_data   "NPSCC-28972_By SOPABBA
"                                          im_fiori_dibs_plant  = er_deep_entity-todetroitdieseldibs ). "NPSCC-30004 by SWDENDI
"*    *Begin of changes -- JVASUDE -- 26th October,2020 -- Changes for US NSPCC-30570 -- Plant section logic update
"      lo_ctr_app_handle->at_call_from = 'F'.
"*    *End of changes -- JVASUDE -- 26th October,2020 -- Changes for US NSPCC-30570 -- Plant section logic update

"*   Create contract
"      IF ls_fiori_head-guid IS INITIAL .

"*     Deleting items which are having deletion flag
"        DELETE er_deep_entity-tocontractitems WHERE del_ind IS NOT INITIAL.

"        lo_ctr_app_handle->create_contract( ).

"*   Update Contract
"      ELSEIF ls_fiori_head-guid IS NOT INITIAL .

"*     Deleting items which are not in database and having deletion flag
"        DELETE er_deep_entity-tocontractitems WHERE item_guid IS INITIAL AND del_ind IS NOT INITIAL.

"*     Deleting items (created from copy) which are having deletion flag
"        DELETE er_deep_entity-tocontractitems WHERE item_guid IS NOT INITIAL
"          AND copied_item_guid IS NOT INITIAL AND del_ind IS NOT INITIAL.

"*     VMANCHA US#21926 - Validate data in excel scenario
"        IF er_deep_entity-excel_flag IS NOT INITIAL.

"*       In this method excel validation and as well all/specific item validation will also be performed
"          lo_ctr_app_handle->validate_excel_data( ).

"*       Passing data items explicilty, so that it will have part description
"*       in case a new part added from excel
"          CLEAR: er_deep_entity-tocontractitems.
"          er_deep_entity-tocontractitems = lo_ctr_app_handle->at_fiori_items.

"*       If any data errors (Abort), then do not proceed further
"          IF line_exists( lo_ctr_app_handle->at_return_msgs[ message_type = 'A' ] ). " Abort messages

"            APPEND LINES OF lo_ctr_app_handle->at_return_msgs TO er_deep_entity-toreturnmessages.

"            RETURN.
"          ENDIF.

"        ENDIF.

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#9528>
"*     Check if the any one of the item is selected and copied from fiori
"        LOOP AT er_deep_entity-tocontractitems ASSIGNING FIELD-SYMBOL(<fs_items_check>)
"                               WHERE copied_item_guid IS NOT INITIAL.
"          DATA(lv_item_copied_from_fiori) = abap_true.
"          EXIT.
"        ENDLOOP.

"        IF lv_item_copied_from_fiori IS NOT INITIAL.
"*     Same method will be called to create a new CTR items by copying
"*     the existing CTR items including the changed data from fiori
"          lo_ctr_app->copy_contract(
"              EXPORTING
"                im_fiori_header       = ls_fiori_head
"                im_fiori_header_notes = er_deep_entity-tocontractheadertexts
"                im_fiori_attachments  = er_deep_entity-toctrattachmentsinfo
"              IMPORTING
"                ex_ctr_number         = er_deep_entity-object_id
"                ex_ctr_header_guid    = er_deep_entity-guid                     " Venky 8872
"                ex_return_messages    = er_deep_entity-toreturnmessages
"              CHANGING
"                ch_fiori_items        = er_deep_entity-tocontractitems )." Venky US#10661

"*   Passing items explicitly again incase any item created by copy as the copied data will be
"*   mapped only after calling the above method
"          lo_ctr_app_handle->at_fiori_items = er_deep_entity-tocontractitems.

"        ENDIF.
"****** End of Insert by  <VMANCHA> <US#9528>
"************************************************************************

"*     Call method to update ctr
"        lo_ctr_app_handle->update_contract( ).

"      ENDIF.

"      APPEND LINES OF lo_ctr_app_handle->at_return_msgs TO er_deep_entity-toreturnmessages.

"      er_deep_entity-object_id = lo_ctr_app_handle->at_updated_header-object_id.
"      er_deep_entity-guid      = lo_ctr_app_handle->at_updated_header-guid.
"      er_deep_entity-appr_prev_link = lo_ctr_app_handle->at_appr_prev_link.

"    ENDIF.


"* We will be passing 'D' message only in case of SAVE or calculate AVOB.
"    IF line_exists( er_deep_entity-toreturnmessages[ message_type = 'D' ] )
"      OR ( er_deep_entity-ctr_action_flag <> 'C' AND er_deep_entity-toreturnmessages IS INITIAL ).

"***   Do not pass error messages for force save scenario
"**    DELETE er_deep_entity-toreturnmessages WHERE message_type <> 'D'.

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#2945>
"* Update the output parameters for SAVE/RELEASE scenario
"*   Calling method get the output medium
"      lo_output_medium->define_output_medium(
"              EXPORTING im_mode              = 'FIORI'
"                        im_commit            = abap_true
"                        im_object_type       = lo_output_medium->at_ctr_bus2000113
"              CHANGING  ch_ctr_fiori_data    = er_deep_entity ).
"****** End of Insert by  <VMANCHA> <US#2945>
"************************************************************************
"* BOC By SRINIV <US-26904> <US - PC: Assign contract classification >
"*    IF er_deep_entity-contractheadertoclassification IS NOT INITIAL.
"      lo_ctr_app->create_classfication_details(
"      EXPORTING
"        im_clsfy_code_data = er_deep_entity-contractheadertoclassification    " Classification Code Data
"        im_object_type     = 'BUS2000113'    " Object Type
"        im_guid            = er_deep_entity-guid
"        im_object_id       = er_deep_entity-object_id    " Object ID
"        ).
"*    ENDIF.
"* EOC By SRINIV <US-26904> <US - PC: Assign contract classification >
"************************************************************************
"* BOC By SRINIV <US-30601> <US - PC: Assign contract classification >
"      IF er_deep_entity-contracttype = 'ZTRN'.
"        lo_ctr_app->create_tiern_agreements(
"          EXPORTING
"            im_item_tiern_data = er_deep_entity-tocontractitems
"            im_ctr_guid        = er_deep_entity-guid    " GUID of a CRM Order Object
"*          im_mode            = 'UPD'    " Mode = 'DEL' or 'UPD' "-- by SRINIV for NPSCC 30665 Tier N: Show changes from Tier N section in history/change log
"        ).
"* Boc US# 31848 RM Sale: New section and fields needed for the raw material sales contract (ZRMS)
"      ELSEIF er_deep_entity-contracttype = 'ZRMB'.
"        lo_ctr_app->item_rm_sale_creation(
"          EXPORTING
"            im_ctr_no           = er_deep_entity-object_id
"            im_item_rmsale_data = er_deep_entity-tocontractitems
"            im_ctr_guid         = er_deep_entity-guid   ).
"* Eoc US# 31848 RM Sale: New section and fields needed for the raw material sales contract (ZRMS)
"      ENDIF.
"* EOC By SRINIV <US-30601> <US - PC: Assign contract classification >
"*************************************************************************
"*** <Begin Of Changes BY SOPABBA><US-19216>
"*    Clear previous EPU values when contract is modified
"      IF er_deep_entity-ctr_action_flag = 'S' AND er_deep_entity-avob_significant EQ abap_true.
"        lo_ctr_epu->clear_epu_value(
"          EXPORTING
"            im_ctr_guid = er_deep_entity-guid ).
"      ENDIF.
"*** <End Of Changes BY SOPABBA><US-19216>

"*** <Begin of changes by Gsamina><US-12971>
"**--  Trigger Outbound Message to PUMA
"      IF er_deep_entity-ctr_action_flag = 'E'.
"**BOC_US#NPSCC-25669_BY SOPABBA_RPC: timewise retroactive Price Change is not allowed (no plant check)
"        CALL METHOD lo_ctr_outbound->send_contract_outbound
"          EXPORTING
"            im_contract_id       = er_deep_entity-object_id    " Transaction ID
"            im_event             = 'PUMA'    " Event Type
"            im_test_mode         = 'Q'    " Outbound mode(Q or S)
"            im_responsible_buyer = er_deep_entity-responsible_buyer
"            im_ctrtype           = er_deep_entity-contracttype.

"        lo_ctr_epu->update_status( EXPORTING im_ctr_header_guid = er_deep_entity-guid
"                                             im_mode            = 'AVOB_CALCULATE' ).

"*       lo_ctr_epu->ctr_epu_request_outbound(
"*         EXPORTING
"*           im_ctr_obj_id      = er_deep_entity-object_id
"*           im_ctr_guid        = er_deep_entity-guid
"*         IMPORTING
"*           ex_return_messages = er_deep_entity-toreturnmessages ).
"**EOC_US#NPSCC-25669_BY SOPABBA_RPC: timewise retroactive Price Change is not allowed (no plant check)
"      ENDIF.
"*** <End of changes by Gsamina><US-12971>

"    ENDIF.

"    SORT er_deep_entity-toreturnmessages BY item_number message.
"    DELETE ADJACENT DUPLICATES FROM er_deep_entity-toreturnmessages COMPARING item_number message.

"****** Begin of Insert by  <VMANCHA> <US#10661>
"*   Passing dummy guid just for handling key field
"    LOOP AT er_deep_entity-toreturnmessages ASSIGNING FIELD-SYMBOL(<fs_msg>).
"      IF <fs_msg>-item_number IS INITIAL
"        OR line_exists( er_deep_entity-tocontractitems[ disp_number = <fs_msg>-item_number cancelled = space ] ).

"        lv_count = lv_count + 1.
"        <fs_msg>-dummy_guid = <fs_msg>-dummy_guid + lv_count.
"      ENDIF.
"    ENDLOOP.

"    DELETE er_deep_entity-toreturnmessages WHERE dummy_guid IS INITIAL
"                                                 OR message_type IS INITIAL. "++ SRINIV NPSCC-31395 on 02/11/2020
"    IF NOT line_exists( er_deep_entity-toreturnmessages[ message_type = 'D' ] ) AND  ls_fiori_head-action = 'SUPP_CHANGE' .
"      er_deep_entity-object_id = ls_fiori_head-object_id.
"    ENDIF.
"****** End of Insert by  <VMANCHA> <US#10661>
************************************************************************

  ENDMETHOD.


  METHOD ctrattachmentsin_get_entityset.
***********************************************************************
* Author             : JVASUDE                                        *
* Title              : Attachment Entityset                           *
* Date               : 2017-12-27                                     *
* Module             : Procure-(EPIC) CTR: Contract                   *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
*  US 2947      - Saperion Attachment Display. Based on the CTR Number*
*                 attachments attributes are derived from table       *
*                 BBP_PDTT and sent to Fiori                          *
***********************************************************************
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        06-Mar-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#8872                              &*
*&              Passing the data based on the CTR head GUID.          &*
*----------------------------------------------------------------------*
*& Date:        22-June-2018                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   Ramjee Korada (RKORADA)                               &*
*& Description: Bug NPSCC-13693 [INT] NPM Contract - same attachment  &*
*&              is displayed multiple times in ProQ (user interface)  &*
*&--------------------------------------------------------------------&*
*../Data Declations.
   " DATA: w_objid           TYPE crmt_object_id_db                  VALUE IS INITIAL,
"          "w_objid           TYPE ZCONTRACT_NO                 VALUE IS INITIAL,    "Added by NIhar
"          w_set_guid        TYPE GUID                           VALUE IS INITIAL,
"          w_date            TYPE sy-datum                           VALUE IS INITIAL,
"          lo_pdo_model_mgnr TYPE REF TO /sapsrm/if_pdo_model_access VALUE IS INITIAL,
"          lv_cond           TYPE string.
"*        lt_attach         TYPE STANDARD TABLE OF bbp_pds_att_t    VALUE IS INITIAL.
"    DATA : lt_filter    TYPE /iwbep/t_mgw_select_option,
"           lr_portal_id TYPE RANGE OF crmt_id_portal_role.

"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#8872>
"**/..Read internal table it_key_tab with key name equals to ContractId.
"*  READ TABLE it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>) WITH  KEY name = 'ContractId' BINARY SEARCH .
"*  IF sy-subrc = 0
"**/..Get the value of contractId in local variable w_objid.
"*  AND <fs_key_tab> IS ASSIGNED.
"*    w_objid = <fs_key_tab>-value.
"*  ENDIF.
"**/..Create object for the class Zcl_contract_app.
"*  IF obj_ctr IS NOT BOUND.
"*    CREATE OBJECT obj_ctr.
"*  ENDIF.
"*
"**/..Get the current version of guid.
"*  CALL METHOD obj_ctr->get_current_version_guid
"*    EXPORTING
"*      iv_object_id = w_objid   " Transaction ID
"*    IMPORTING
"*      ev_guid      = w_set_guid.

"    READ TABLE it_key_tab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
"                                   WITH KEY name = 'ContractGuid'
"                                   BINARY SEARCH .
"    IF sy-subrc EQ 0.
"      w_set_guid = <fs_keytab>-value .
"    ENDIF.

"*  CHECK w_set_guid IS NOT INITIAL.
"    IF w_set_guid IS NOT INITIAL. " Bug# 27642 by SWDENDI - Attachment count displayed as (NaN)
"****** End of Insert by  <VMANCHA> <US#8872>
"************************************************************************
"*  Begin of changes by KAUSING*NPSCC-17995* performance optimisation
"* Reading filter values
"      lt_filter = io_tech_request_context->get_filter( )->get_filter_select_options( ).

"      SORT lt_filter BY property ASCENDING.

"      DATA(lv_int_ind) = VALUE #( lt_filter[ property = 'IS_GOS_ATTACHMENT' ]-select_options[ 1 ]-low OPTIONAL ).

"*********** NPSCC-25557 / 25431 by Ashvin (START) *****************
"      CLEAR: lv_cond.
"      DATA(lv_action) = VALUE #( lt_filter[ property = 'ACTION' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_copy_int) = VALUE #( lt_filter[ property = 'COPY_INTR' ]-select_options[ 1 ]-low OPTIONAL ).
"      DATA(lv_copy_ext) = VALUE #( lt_filter[ property = 'COPY_EXTR' ]-select_options[ 1 ]-low OPTIONAL ).

"      IF lv_action IS INITIAL.
"        lv_cond = |{ ' guid = @w_set_guid ' } { ' AND internal_ind = @lv_int_ind ' } |.
"      ELSE.
"        IF lv_copy_int EQ abap_true AND lv_copy_ext EQ abap_true.
"          lv_cond = |{ ' guid = @w_set_guid ' } { ' AND internal_ind = @lv_int_ind ' } |.
"        ELSEIF lv_copy_int EQ abap_true AND lv_int_ind EQ abap_true.
"          lv_cond = |{ ' guid = @w_set_guid AND internal_ind = @abap_true ' } |.
"        ELSEIF lv_copy_ext EQ abap_true AND lv_int_ind EQ abap_false.
"          lv_cond = |{ ' guid = @w_set_guid AND internal_ind = @abap_false ' } |.
"        ENDIF.
"      ENDIF.
"*********** NPSCC-25557 / 25431 by Ashvin (END) *****************
"*  Runtime Error when lv_cond is blank
"      IF lv_cond IS NOT INITIAL. " Bug# NPSCC-27814_SOPABBA

"        SELECT *
"          FROM zctr_att
"          INTO TABLE @DATA(lt_attach)
"          WHERE (lv_cond).
"*       WHERE guid = @w_set_guid
"*       AND   internal_ind = @lv_int_ind.
"      ENDIF.
"*  End of changes by KAUSING*NPSCC-17995*performance optimisation
"*   Begin of changes by KAUSING*npscc-27748 Historical version atachement
"      IF NOT sy-subrc IS INITIAL.
"        SELECT *
"        FROM zhis_att
"        WHERE (lv_cond)
"        INTO TABLE @DATA(lt_hist_attach).
"        IF sy-subrc IS INITIAL.
"          SORT lt_hist_attach.
"          lt_attach[] = lt_hist_attach[].
"        ENDIF.
"      ENDIF.
"*   End of changes by KAUSING*npscc-27748 Historical version atachement


"*  Begin of comments by KAUSING*NPSCC-17995*performance optimisation
"*  CALL METHOD /sapsrm/cl_pdo_model_factory=>get_instance
"*    RECEIVING
"*      eo_instance = lo_pdo_model_mgnr.    " PD Layer Get Detail Wrapper
"*
"*  IF lo_pdo_model_mgnr IS BOUND.
"**** Get the Header Level data
"*    CALL METHOD lo_pdo_model_mgnr->get_detail
"*      EXPORTING
"*        iv_guid          = w_set_guid             " GUID of a CRM Order Object
"*        iv_with_itemdata = 'X'                 " Checkbox
"*      IMPORTING
"*        et_attach        = lt_attach.           " KW Attachments Including Document
"*  End of comments by KAUSING*NPSCC-17995*performance optimisation

"*{ BOC - RKORADA / 22.06.2018 / Bug NPSCC-13693 [INT]
"*/.. Uncommenting below conditions - NPM Contract
"*/.. same attachment is displayed multiple times in ProQ (user interface)
"      IF lt_attach IS NOT INITIAL.
"        SORT lt_attach BY objkey zecs_folder_path ASCENDING. "US# 18589 by SWDENDI
"        DELETE lt_attach WHERE del_ind EQ abap_true.  "Bug # 20449 By SOPABBA
"        DELETE ADJACENT DUPLICATES FROM lt_attach COMPARING objkey zecs_folder_path."US# 18589 by SWDENDI
"        SORT lt_attach BY guid ASCENDING.
"      ENDIF.
"*} EOC - RKORADA / 22.06.2018 / Bug NPSCC-13693 [INT]
"*  ENDIF.
"*/..If lt_attach is not initial Fetch User name, Last name and Full name from the table v_username
"*..For all entries from the internal table lt_attach where username equals to lt_attach-changed_by../.
"      IF lt_attach[] IS NOT INITIAL.
"        SELECT bname,
"               name_last,
"               name_text
"          FROM v_username
"          INTO TABLE @DATA(lt_usrname)
"          FOR ALL ENTRIES IN @lt_attach
"          WHERE bname EQ @lt_attach-changed_by.
"        IF sy-subrc IS INITIAL.
"          SORT lt_usrname BY bname ASCENDING.
"        ENDIF.

"** Begin of INS GSAMINA Bug#32460

"        lr_portal_id = VALUE #( FOR ls_attach IN lt_attach
"                              ( sign = 'I' option = 'EQ' low = ls_attach-changed_by ) ).

"        SELECT a~name_first,
"              a~name_last,
"              b~zportal_x_id
"          FROM but000 AS a
"          INNER JOIN but051 AS b ON b~partner2 = a~partner
"          INTO TABLE @DATA(lt_partner_name)
"          WHERE b~zportal_x_id IN @lr_portal_id.

"        IF sy-subrc IS INITIAL.
"          SORT  lt_partner_name BY zportal_x_id.
"        ENDIF.
"** End of INS GSAMINA Bug#32460
"      ENDIF.
"*/..If sy-subrc checks zero sort the intrnal table lt_usrname
"      SORT lt_attach BY zsource ASCENDING internal_ind zsort_order DESCENDING.                            " VMANCHA - US#19976

"*/..Loop at the internal table lt_attach assigning to field symbol <fs_attach> where delete indicator equals ' '
"      LOOP AT lt_attach ASSIGNING FIELD-SYMBOL(<fs_attach>) WHERE del_ind = abap_false.

"************ NPSCC-25557 / 25431 by Ashvin (START) *****************
"        IF lv_action = 'COPY' OR lv_action = 'TRANSFER'.
"          IF <fs_attach>-zgenerated_pdf IS NOT INITIAL OR
"              <fs_attach>-zdai_flag IS NOT INITIAL.
"            CONTINUE.
"          ELSEIF <fs_attach>-internal_ind IS NOT INITIAL AND lv_copy_int IS INITIAL.
"            CONTINUE.
"          ELSEIF <fs_attach>-internal_ind IS INITIAL AND lv_copy_ext IS INITIAL.
"            CONTINUE.
"          ENDIF.
"        ENDIF.
"*********** NPSCC-25557 / 25431 by Ashvin (END) *****************

"*/..Get file name,file size, changed by, changetime, creationtime, objkey values from <fs_attach> to
"*..populate into field symbols <fs_entityset> and append to et_entityset../
"        APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entityset>).
"        IF <fs_entityset> IS ASSIGNED.
"          <fs_entityset>-pr_number = w_objid. "PO Number
"          <fs_entityset>-ctr_header_guid = w_set_guid .                     " HEADER Guid
"          <fs_entityset>-guid = <fs_attach>-guid.                           " Bug 12614
"*/..Convert UTC Time stamp to UTC time stamp with date only
"          CLEAR w_date.
"          CONVERT TIME STAMP <fs_attach>-creationtime "Creation Date
"                  TIME ZONE 'UTC' INTO DATE w_date.

"          CONVERT DATE w_date
"                  INTO TIME STAMP <fs_entityset>-created_at
"                  TIME ZONE 'UTC'.

"          <fs_entityset>-description = <fs_attach>-description. "US# 12717 by SWDENDI
"          <fs_entityset>-file_name = <fs_attach>-phio_fname.
"          <fs_entityset>-file_size = <fs_attach>-phio_fsize.
"          <fs_entityset>-mime_type = <fs_attach>-phio_mime.
"          <fs_entityset>-created_by_id = <fs_attach>-changed_by.
"          <fs_entityset>-changed_at    = <fs_attach>-changetime.
"          <fs_entityset>-created_at = <fs_attach>-creationtime.
"          <fs_entityset>-attach_guid = <fs_attach>-objkey.
"          <fs_entityset>-generated_pdf = <fs_attach>-zgenerated_pdf.
"          <fs_entityset>-sort_order = <fs_attach>-zsort_order. " ++ SRINIV US NPSCC 27122
"          <fs_entityset>-confirm_attach_flag = <fs_attach>-zdai_flag. "KAUSING*NPSCC 30506

"*{ BOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
"*      <fs_entityset>-ecs_fpath     = <fs_attach>-Zecs_folder_path. "US# 18589 by SWDENDI
"*   URI compliance check.
"          IF  <fs_attach>-zecs_folder_path IS NOT INITIAL. "Bug# 31402 by SWDENDI
"            DATA(lv_filename) = <fs_attach>-zecs_folder_path.
"            REPLACE ALL OCCURRENCES OF '\' IN lv_filename WITH '/'.
"*   Decode URI
"            SPLIT lv_filename AT '/' INTO DATA(ls_blank) DATA(ls_bucknam) DATA(ls_filename).
"*   Encode URI
"            ls_filename = escape( val = ls_filename format = cl_abap_format=>e_xss_url ).

"            CONCATENATE '/' ls_bucknam '/' ls_filename INTO DATA(ls_tobeuri).
"            <fs_entityset>-ecs_fpath = ls_tobeuri.
"          ENDIF.

"*} EOC - RKORADA - NPSCC-27284 - 0051617718 - PC attachment special character handling
"          <fs_entityset>-attachment_source = <fs_attach>-zsource.     " VMANCHA US#19976
"*..Read internal table lt_usrname with key bname equals to <fs_entityset>-created_by_id
"          READ TABLE lt_usrname ASSIGNING FIELD-SYMBOL(<fs_username>) WITH KEY bname = <fs_entityset>-created_by_id BINARY SEARCH.
"          IF sy-subrc IS INITIAL.
"*..Get name text to <fs_entityset>-created_by_name.
"            <fs_entityset>-created_by_name = <fs_username>-name_text. "Created by Name
"          ELSE.
"** Begin of INS GSAMINA Bug#32460
"            READ TABLE lt_partner_name ASSIGNING FIELD-SYMBOL(<fs_partner_name>) WITH KEY zportal_x_id = <fs_entityset>-created_by_id BINARY SEARCH.
"            IF sy-subrc IS INITIAL.
"              <fs_entityset>-created_by_name = |{ <fs_partner_name>-name_first } { <fs_partner_name>-name_last }|.
"            ENDIF.
"** End of INS GSAMINA Bug#32460
"          ENDIF.
"          UNASSIGN:<fs_username>.
"*       Negin of changes by KAUSING*npscc 2973
"          <fs_entityset>-is_gos_attachment = <fs_attach>-internal_ind.
"          IF lv_action = 'COPY' OR lv_action = 'TRANSFER'.
"            CLEAR <fs_entityset>-send_to_erp.
"            <fs_entityset>-copy_intr = lv_copy_int. "Bug# 31401 by SWDENDI
"            <fs_entityset>-copy_extr = lv_copy_ext. "Bug# 31401 by SWDENDI
"          ELSE.
"            <fs_entityset>-send_to_erp = <fs_attach>-zsend_to_erp.
"          ENDIF.
"*       End of changes by KAUSING*npscc 2973
"        ENDIF.
"*/..Unassign the field symbol <fs_entityset>
"        UNASSIGN:<fs_entityset>.
"      ENDLOOP.
"      UNASSIGN: <fs_attach>.

"    ENDIF.
"*  Begin of changes by KAUSING*npscc-17995*decoupling attachments
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.
*  End of changes by KAUSING*npscc-17995*decoupling attachments
  ENDMETHOD.


  METHOD ctrchangelogset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_SHIPPING_CART_APP                            &*
*& Developer  : Infosys / Tamilarasi Thirumal (TTHIRUM)               &*
*& Created    : 29/03/2018                                            &*
*& Description: US#3070: Fiori App Contract - Show Contract           &*
*               Changelog - Header                                    &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

    DATA : obj_log             TYPE REF TO zcl_contract_app,
           lv_header_guid      TYPE crmt_object_guid,
           lv_item_guid        TYPE crmt_object_guid,
           lt_return           TYPE bapiret2,
           lv_unique_flag      TYPE char1,
           lv_changenr         TYPE cdchangenr,
           lv_search           TYPE string,
           lt_filter           TYPE /iwbep/t_mgw_select_option,
           lt_sort_order       TYPE abap_sortorder_tab,
           ls_sort_order       TYPE abap_sortorder,
           lt_orderby          TYPE /iwbep/t_mgw_tech_order,
           lt_change_documents TYPE zcl_zfio_mng_ctr_mpc=>tt_ctrchangelog.

    CONSTANTS:          co_changenr TYPE cdchangenr VALUE 'Changenr'.

* Reading the input data
    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

      IF <fs_key_tab>-name = 'ContractGuid'.
        lv_header_guid = <fs_key_tab>-value.
      ENDIF.

      IF <fs_key_tab>-name = 'Guid'.
        lv_item_guid = <fs_key_tab>-value.
      ENDIF.

    ENDLOOP.

*/..Getting the field name in the seperate variable to display the historystatus
*..header or item for second/third page navigation to capture the events in chenagelog.
    IF lv_item_guid IS NOT INITIAL.
      DATA(lv_status_field) = 'ZHISTORYSTATUSLITEXT'.
    ELSE.
      lv_status_field = 'ZHISTORYSTATUSHDTEXT'.
    ENDIF.


    IF iv_search_string IS NOT INITIAL.
      lv_search = iv_search_string.
    ENDIF.

    CREATE OBJECT obj_log.

*  SELECT low from tvarvc WHERE name = 'ZCHGLOG_OPTMIZE' INTO TABLE @DATA(lt_tvarvc).
*  IF sy-subrc EQ 0
*    AND ( line_exists( lt_tvarvc[ low = sy-uname ] )
*      OR line_exists( lt_tvarvc[ low = '*' ] ) ).

    CALL METHOD obj_log->get_ctr_changelog_new
      EXPORTING
        im_header_guid           = lv_header_guid   " Procurement Document change log table
        im_item_guid             = lv_item_guid    " GUID of a CRM Order Object
        im_search_string         = lv_search
        im_filter_select_options = it_filter_select_options
      IMPORTING
        ex_change_documents      = lt_change_documents    " Change Document
        es_return                = lt_return.     " Return Parameter
*  ELSE.
*
*  CALL METHOD obj_log->get_ctr_changelog
*    EXPORTING
*      im_header_guid           = lv_header_guid   " Procurement Document change log table
*      im_item_guid             = lv_item_guid    " GUID of a CRM Order Object
*      im_search_string         = lv_search
*      im_filter_select_options = it_filter_select_options
*    IMPORTING
*      ex_change_documents      = lt_change_documents    " Change Document
*      es_return                = lt_return.     " Return Parameter
*
*  ENDIF.

    CLEAR: lv_unique_flag,lv_changenr,lv_search .

* "-- WHen we click any particular Change log on Fiori to display the details for that CHange log Instance
    IF it_filter_select_options[] IS NOT INITIAL.
      lt_filter[] = it_filter_select_options[].
      SORT lt_filter BY property.
      READ TABLE lt_filter
           ASSIGNING FIELD-SYMBOL(<fs_filter>)
           WITH KEY property = co_changenr BINARY SEARCH.
      IF sy-subrc IS INITIAL AND <fs_filter> IS ASSIGNED.
        READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_option>) INDEX 1.
        IF sy-subrc IS INITIAL AND <fs_option> IS ASSIGNED.
          IF <fs_option>-low EQ 'unique'.
            MOVE abap_true TO lv_unique_flag.
          ELSE.
            MOVE <fs_option>-low TO lv_changenr.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

    IF lt_change_documents[] IS NOT INITIAL.
      IF lv_unique_flag IS NOT INITIAL.
        SORT lt_change_documents BY changenr.

        DATA: lt_chng_doc_tmp TYPE zcl_zfio_mng_ctr_mpc=>tt_ctrchangelog.

        lt_chng_doc_tmp = lt_change_documents.
        DELETE ADJACENT DUPLICATES FROM lt_change_documents COMPARING changenr.

        LOOP AT lt_change_documents ASSIGNING FIELD-SYMBOL(<fs_head_final>).

          READ TABLE lt_chng_doc_tmp INTO DATA(ls_head_final)
                     WITH KEY changenr = <fs_head_final>-changenr
                              fname = lv_status_field.
          IF sy-subrc = 0.

            <fs_head_final> = ls_head_final.

          ENDIF.

        ENDLOOP.


      ELSEIF lv_changenr IS NOT INITIAL.
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
          EXPORTING
            input  = lv_changenr
          IMPORTING
            output = lv_changenr.

        DELETE lt_change_documents WHERE changenr NE lv_changenr.
      ENDIF.

*    SORT lt_change_documents BY udate DESCENDING utime DESCENDING.
      et_entityset[] = lt_change_documents[].

      lt_orderby = io_tech_request_context->get_orderby( ).
      IF lt_orderby IS INITIAL.
*      SORT et_entityset BY  sort_order DESCENDING version_type DESCENDING area ASCENDING udate DESCENDING utime DESCENDING.
        SORT et_entityset BY  sort_order DESCENDING version_type DESCENDING area ASCENDING change_date_time DESCENDING.
*      SORT et_entityset BY sort_order DESCENDING udate DESCENDING utime DESCENDING area ASCENDING.
      ELSE.
        LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
          CLEAR ls_sort_order.
          IF <fs_orderby>-order EQ 'desc'.
            ls_sort_order-descending = 'X'.
          ENDIF.
          ls_sort_order-name = <fs_orderby>-property.
          APPEND ls_sort_order TO lt_sort_order.
        ENDLOOP.
        SORT et_entityset BY (lt_sort_order).
      ENDIF.

*"== For Scroll Bar - By Nihar
*   es_response_context-inlinecount = lines( et_entityset ).

    ENDIF.
*/.. Bug# 26373 - SWDENDI - Contract Change Log incorrect.
    es_response_context-inlinecount = lines( et_entityset ).

*/..Page loading functionality
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD ctritemrmobjlist_get_entityset.

    DATA(lv_hdr_guid) = CONV crmt_object_guid( VALUE #( it_key_tab[ name = 'ContractGuid' ]-value OPTIONAL ) ).
    DATA(lv_item_guid) = CONV crmt_object_guid( VALUE #( it_key_tab[ name = 'Guid' ]-value OPTIONAL ) ).

    IF lv_hdr_guid IS NOT INITIAL
      AND lv_item_guid IS NOT INITIAL.

      NEW zcl_contract_app( )->fetch_rm_contract_det(
       EXPORTING
         im_hdr_guid     =  lv_hdr_guid
         im_item_guid    =  lv_item_guid
       IMPORTING
         et_rm_obj_list  = et_entityset ).
    ENDIF.

  ENDMETHOD.


  METHOD ctrrelatedobjlin_get_entityset.
***********************************************************************
* Author             : SOPABBA                                        *
* Title              : Show Linked objects in PO                      *
* Date               : 22-05-2019                                     *
* User Story         : NPSCC-20876                                    *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
* For a Buyer, the linked documents in Related Document section has to*
* be shown in Edit and Display mode.                                  *
***********************************************************************                                                                     *
   " TYPES: lty_entityset TYPE TABLE OF zreldocs_objlink WITH DEFAULT KEY.

"    DATA : cs_linked_objects   TYPE zaif_linkedobj_query_sync,
"           ls_response         TYPE zaif_linked_objects_res,
"           ls_linked_obj       TYPE zaif_linked_obj_rep_det,
"           ls_active_obj       TYPE zaif_objects,
"           lt_obj_info         TYPE zaif_object_tab,
"           lv_dest             TYPE rvari_val_255,
"           rt_supplier         TYPE RANGE OF zsupp_glb_id,
"           rt_refdoc           TYPE /iwbep/t_cod_select_options,
"           lv_ref_doc_num(80)  TYPE c,
"           lv_ref_doc_type(80) TYPE c.

"    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
"      DATA(lv_ctr_guid) = it_key_tab[ name = 'ContractGuid' ]-value.
"    ENDIF.
"* BOC US# 28659 -OL - Improve Related Documents Table by SWDENDI
"    IF line_exists( it_filter_select_options[ property = 'RefDocnum' ] ) AND
"      it_filter_select_options[ property = 'RefDocnum' ]-select_options[ 1 ]-low IS NOT INITIAL.
"      lv_ref_doc_num = it_filter_select_options[ property = 'RefDocnum' ]-select_options[ 1 ]-low.
"      IF line_exists( it_filter_select_options[ property = 'DocType' ] ) AND
"        it_filter_select_options[ property = 'DocType' ]-select_options[ 1 ]-low IS NOT INITIAL.
"        lv_ref_doc_type = it_filter_select_options[ property = 'DocType' ]-select_options[ 1 ]-low.
"      ENDIF.
"      DATA(lv_multiple) = abap_true.
"    ENDIF.
"* EOC US# 28659 -OL - Improve Related Documents Table by SWDENDI
"*   Begin of changes by KAUSING*NPSCC-25873  Clone object links when copying a contract*11/06/2020
"    IF line_exists( it_filter_select_options[ property = 'Action' ] )  AND
"     ( it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low = 'COPY' OR
"       it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low = 'TRANSFER' ).
"      IF NOT ( line_exists( it_filter_select_options[ property = 'CopyDocLinks' ] )  AND
"               it_filter_select_options[ property = 'CopyDocLinks' ]-select_options[ 1 ]-low IS NOT INITIAL ).
"        DATA(lv_donot_copy) = abap_true.
"      ENDIF.
"    ENDIF.
"*   End of changes by KAUSING*NPSCC-25873  Clone object links when copying a contract*11/06/2020

"*   Begin of changes by KAUSING*npscc 31672
"    SELECT *
"      FROM tvarvc
"      INTO TABLE @DATA(lt_tvarvc)
"      WHERE name EQ 'ZAUTOLINK_PROFRAME_OL'.
"    IF sy-subrc IS INITIAL.
"      rt_refdoc = VALUE #( FOR ls_tvarvc IN lt_tvarvc
"                           (
"                             sign = 'I'
"                             option = 'EQ'
"                             low = ls_tvarvc-high
"                           )
"                         ).
"    ENDIF.
"*   End of changes by KAUSING*npscc 31672

"*   BOC by SRINIV NPSCC 30074 - <US Desc - Show indicator whether object link will be printed in the related documents table>
"    DATA(lv_bu_id) = VALUE #( it_filter_select_options[ property = 'BuyerId' ]-select_options[ 1 ]-low OPTIONAL ).
"    DATA(lv_comp_code) = VALUE #( it_filter_select_options[ property = 'CompCode' ]-select_options[ 1 ]-low OPTIONAL ).
"    DATA(lv_ctr_type) = VALUE #( it_filter_select_options[ property = 'ContractType' ]-select_options[ 1 ]-low OPTIONAL ).
"    IF lv_bu_id IS NOT INITIAL AND lv_comp_code IS NOT INITIAL AND lv_ctr_type IS NOT INITIAL.
"      "check if any entry exist in the ZOBJ_RULE table
"      "for the requested LE, Document Type(NPM/PM,etc..), and BU condition
"      SELECT object_type,
"        print_pdf_flg
"        FROM zobj_rule
"        INTO TABLE @DATA(lt_obj_rule)
"        WHERE object_type IS NOT NULL
"          AND bu_id = @lv_bu_id
"          AND comp_code = @lv_comp_code
"          AND doc_sub_typ = @lv_ctr_type.
"      IF sy-subrc IS NOT INITIAL.
"        CLEAR: lt_obj_rule.
"      ENDIF.
"    ENDIF.
"*   EOC by SRINIV NPSCC 30074 - <US Desc - Show indicator whether object link will be printed in the related documents table>


"    IF lv_ctr_guid IS NOT INITIAL.
"      SELECT SINGLE object_id
"      INTO @DATA(lv_ctrid)
"      FROM crmd_orderadm_h
"      WHERE guid EQ @lv_ctr_guid.

"      IF sy-subrc NE 0.
"        CLEAR lv_ctrid.
"      ENDIF.

"    ENDIF.

"*-- Fill Source system name and CTR number in the structure to pass it to the RFC below.

"    cs_linked_objects-request-source_system_name = '1'.  "Source system name
"    cs_linked_objects-request-object_unique_id = lv_ctrid. "Object unique id

"    DATA(lv_dest_name) = |ZLDAP_{ sy-sysid }|.

"    SELECT SINGLE low
"      FROM tvarvc
"      INTO lv_dest
"      WHERE name EQ lv_dest_name.

"    IF sy-subrc NE 0.
"      CLEAR lv_dest.
"    ELSEIF lv_donot_copy IS INITIAL.  "Ins by KAUSING*NPSCC-25873  Clone object links when copying a contract*11/06/2020
"      CALL FUNCTION 'RFC_CALLBACK_REJECTED'. "KAUSING*vforge fix
"*-- Remote function call to obtain the Linked objects.
"      CALL FUNCTION 'ZRFC_LINKED_OBJ_CALL' DESTINATION lv_dest
"        CHANGING
"          cs_linked_objects     = cs_linked_objects
"        EXCEPTIONS
"          system_failure        = 1        " Exception handling
"          communication_failure = 2
"          OTHERS                = 3.

"      IF sy-subrc NE 0.
"        CLEAR cs_linked_objects.
"      ENDIF.

"      CLEAR ls_response.
"      ls_response = cs_linked_objects-response.

"*    ls_entityset-sub_section =    " Section ( Procure / Other doc)
"      CLEAR ls_linked_obj.
"      ls_linked_obj = ls_response-linked_objects.

"      CLEAR ls_active_obj.
"      ls_active_obj = ls_linked_obj-active_objects_links.

"      REFRESH lt_obj_info.
"      lt_obj_info = ls_active_obj-object_info.
"* BOC US# 28659 -OL - Improve Related Documents Table by SWDENDI
"      IF lv_multiple EQ abap_true.
"        DELETE lt_obj_info WHERE object_unique_id <> lv_ref_doc_num." AND object_type <> lv_ref_doc_type.
"      ENDIF.
"      rt_supplier = VALUE #( FOR ls_obj_info IN lt_obj_info
"                             FOR ls_supp IN ls_obj_info-suppliers-supplier
"                             ( sign = 'I' option = 'EQ' low = |{ ls_supp-supplier_global_code ALPHA = IN }| ) ).
"      SORT rt_supplier BY low ASCENDING.
"      DELETE ADJACENT DUPLICATES FROM  rt_supplier COMPARING low.
"      IF rt_supplier IS NOT INITIAL.
"        SELECT partner, name_org1, zsupplglbid
"          FROM but000
"          WHERE partner IN @rt_supplier
"          INTO TABLE @DATA(lt_but000).
"        IF sy-subrc NE '0'.
"          CLEAR lt_but000.
"        ENDIF.
"      ENDIF.
"      IF lv_multiple IS INITIAL.
"        LOOP AT lt_obj_info ASSIGNING FIELD-SYMBOL(<fs_obj_info>).
"          APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).
"          <fs_entity>-guid        = lv_ctr_guid.                    "CTR guid
"          <fs_entity>-object_id   = lv_ctrid.                       "CTR number
"          <fs_entity>-doc_type    = <fs_obj_info>-object_type.      "Document Type
"          <fs_entity>-ref_docnum  = <fs_obj_info>-object_unique_id. "Reference document number
"          <fs_entity>-ref_docdesc = <fs_obj_info>-object_title.     "Refernce document description
"          <fs_entity>-obj_status  = <fs_obj_info>-object_status.    "Status of reference document
"          <fs_entity>-ref_doclink = <fs_obj_info>-object_link.      "Link of reference document
"          <fs_entity>-source_system  = <fs_obj_info>-source_system.  "Source System
"          <fs_entity>-doc_valid_from = <fs_obj_info>-object_valid_from.
"          <fs_entity>-doc_valid_to   = <fs_obj_info>-object_valid_to.
"*         Begin of changes by KAUSING*npscc 31672
"          IF <fs_entity>-ref_docnum IN rt_refdoc.
"            <fs_entity>-object_shown_status = 'X'.
"          ELSE.
"*         End of changes by KAUSING*NPSCC 31672
"*   BOC by SRINIV NPSCC 30074 - <US Desc - Show indicator whether object link will be printed in the related documents table>
"            <fs_entity>-object_shown_status = VALUE #( lt_obj_rule[ object_type = <fs_obj_info>-object_type ]-print_pdf_flg OPTIONAL ).
"*   EOC by SRINIV NPSCC 30074 - <US Desc - Show indicator whether object link will be printed in the related documents table>
"          ENDIF. "KAUSING*NPSCC 31672
"          DESCRIBE TABLE <fs_obj_info>-suppliers-supplier LINES DATA(lv_supp_cnt).
"          IF lv_supp_cnt = 1.
"            <fs_entity>-supplier_no = VALUE #( <fs_obj_info>-suppliers-supplier[ 1 ]-supplier_global_code OPTIONAL ).
"            <fs_entity>-supplier_name = VALUE #( lt_but000[ partner = |{ <fs_entity>-supplier_no ALPHA = IN }| ]-name_org1 OPTIONAL ).
"            <fs_entity>-global_supp_id = VALUE #( lt_but000[ partner = |{ <fs_entity>-supplier_no ALPHA = IN }| ]-zsupplglbid OPTIONAL ).

"          ELSEIF lv_supp_cnt GT 1.
"            <fs_entity>-supplier_no = abap_true.
"          ENDIF.
"          CLEAR lv_supp_cnt.
"        ENDLOOP.
"      ELSE.
"        et_entityset = VALUE #( FOR ls_obj_info IN lt_obj_info
"                                FOR ls_supp IN ls_obj_info-suppliers-supplier
"                                ( guid        = lv_ctr_guid                  "CTR guid
"                                  doc_type    = ls_obj_info-object_type      "Document Type
"                                  ref_docnum  = ls_obj_info-object_unique_id "Reference document number
"                                  supplier_no = ls_supp-supplier_global_code
"                                  supplier_name = VALUE #( lt_but000[ partner = |{ ls_supp-supplier_global_code ALPHA = IN }| ]-name_org1 OPTIONAL )
"                                  global_supp_id = VALUE #( lt_but000[ partner = |{ ls_supp-supplier_global_code ALPHA = IN }| ]-zsupplglbid OPTIONAL ) ) ).
"      ENDIF.
"*      DATA(lt_entityset) = VALUE lty_entityset( FOR ls_obj_info IN lt_obj_info
"*                                                ( guid        = lv_ctr_guid                  "CTR guid
"*                                                  object_id   = lv_ctrid                     "CTR number
"*                                                  doc_type    = ls_obj_info-object_type      "Document Type
"*                                                  ref_docnum  = ls_obj_info-object_unique_id "Reference document number
"*                                                  ref_docdesc = ls_obj_info-object_title     "Refernce document description
"*                                                  obj_status  = ls_obj_info-object_status    "Status of reference document
"*                                                  ref_doclink = ls_obj_info-object_link      "Link of reference document
"*                                                  source_system  = ls_obj_info-source_system  "Source System
"*                                                  doc_valid_from = ls_obj_info-object_valid_from
"*                                                  doc_valid_to   = ls_obj_info-object_valid_to
"*                                                  ) ).

"*      et_entityset = lt_entityset.
"* EOC US# 28659 -OL - Improve Related Documents Table by SWDENDI
"    ENDIF.
  ENDMETHOD.


  METHOD ctrsupplierinfos_get_entityset.
*----------------------------------------------------------------------*
*& Responsible: Infosys                                               &*
*& Developer  : Infosys / Tamilarasi Thirumal (TTHIRUM)               &*
*& Created    : 19/06/2018                                            &*
*& Description: SP_38-US#3041: Assign WV/DV attributes in             &*
*&              NPM contracts                                         &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*----------------------------------------------------------------------*
*/..Data declaration
*----------------------------------------------------------------------*
   " DATA: lt_key_tab               TYPE /iwbep/t_mgw_name_value_pair,  "
"          lt_partner               TYPE TABLE OF bbp_pds_partner,      "
"          lw_entityset             TYPE zfio_supp_certus,         "
"          ls_filter                TYPE /iwbep/s_mgw_select_option,    "
"          ls_filter_so             TYPE /iwbep/s_cod_select_option,    "
"          lv_attr_list             TYPE bbp_attr_list,                 "
"          lv_dft_single            TYPE bbps_attr_single,              "
"          lv_ctr_guid              TYPE crmt_object_guid,              "
"          lv_buyer                 TYPE zuserid,                  "
"          lv_partner               TYPE bu_partner,                    "
"          lv_bu                    TYPE zbu_id,                   "
"          lv_count                 TYPE i,                             "
"          lt_filter_select_options TYPE /iwbep/t_mgw_select_option,    "
"          lt_text                  TYPE TABLE OF textpool.             "

"*----------------------------------------------------------------------*
"*/..Field Symbols
"*----------------------------------------------------------------------*
"    FIELD-SYMBOLS: <fs_filter> TYPE /iwbep/s_mgw_select_option.        "

"*/..Constant Declaration

"*----------------------------------------------------------------------*
"*/..Clear local variables
"*----------------------------------------------------------------------*
"    CLEAR: lw_entityset, ls_filter,  ls_filter_so, lv_bu,
"           lt_key_tab[],  lv_attr_list, lv_partner,
"           lv_dft_single, lv_bu, lt_partner[].


"*----------------------------------------------------------------------*
"*Logic
"*----------------------------------------------------------------------*
"    IF it_filter_select_options[] IS NOT INITIAL.
"      lt_filter_select_options[] = it_filter_select_options[].
"      SORT lt_filter_select_options BY property.
"    ENDIF.

"    READ TABLE lt_filter_select_options ASSIGNING <fs_filter>
"      WITH KEY property = 'GUID' BINARY SEARCH.

"    IF sy-subrc EQ 0.
"      READ TABLE <fs_filter>-select_options ASSIGNING FIELD-SYMBOL(<fs_ctr>) INDEX 1.         " Interm fix
"      IF sy-subrc EQ 0.
"        MOVE <fs_ctr>-low TO lv_ctr_guid.
"      ENDIF.
"    ENDIF.

"    READ TABLE lt_filter_select_options ASSIGNING <fs_filter>
"       WITH KEY property = 'ResponsibleBuyer' BINARY SEARCH.

"    IF sy-subrc EQ 0.
"      READ TABLE <fs_filter>-select_options ASSIGNING <fs_ctr> INDEX 1.         " Interm fix
"      IF sy-subrc EQ 0.
"        MOVE <fs_ctr>-low TO lv_buyer.
"      ENDIF.
"    ENDIF.

"    READ TABLE lt_filter_select_options ASSIGNING <fs_filter>
"      WITH KEY property = 'Supplier' BINARY SEARCH.

"    IF sy-subrc EQ 0.
"      READ TABLE <fs_filter>-select_options ASSIGNING <fs_ctr> INDEX 1.         " Interm fix
"      IF sy-subrc EQ 0.
"        MOVE <fs_ctr>-low TO lv_partner.
"      ENDIF.
"    ENDIF.


"    IF lv_buyer IS NOT INITIAL.
"*/..Get the business unit for the corresponding buyer.
"      lv_attr_list-attr_id = 'Z_BU'.
"      CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"        EXPORTING
"          iv_user                 = lv_buyer
"          iv_attr_single          = lv_attr_list
"        IMPORTING
"          ev_attr_dft_single      = lv_dft_single
"        EXCEPTIONS
"          object_id_not_found     = 1
"          no_attributes_requested = 2
"          attributes_read_error   = 3
"          OTHERS                  = 4.
"      IF sy-subrc IS INITIAL.
"        MOVE: lv_dft_single-value TO lv_bu.
"      ENDIF.
"    ENDIF.

"    "Changes by RKORADA <NPSARCH 1630> Dt:03/06/2019 - Moving to TVARVC entry
"    SELECT sign, opti AS option, low, high
"      FROM tvarvc
"      WHERE name EQ 'ZCERTIFICATE_TYPE'
"      INTO TABLE @DATA(rt_cert_type).
"    IF sy-subrc NE 0.
"      REFRESH rt_cert_type.
"    ENDIF.

"*/..Get supplier with 10 char
"    CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"      EXPORTING
"        input  = lv_partner
"      IMPORTING
"        output = lv_partner.
"*/..Fetch the certificate color and group name based on supplier and business unit
"    SELECT partner, business_unit, certificate_type,
"       certificate_color, valid_end_date, valid_start_date,supplier_link
"       FROM zaif_certus
"       INTO TABLE @DATA(lt_certus)
"       WHERE partner EQ @lv_partner
"*       AND certificate_group_name LIKE '%Supplier Declaration%'. "Changes by TABSAHA <NPSARCH 1630> Dt:23/05/2019
"*       AND certificate_type LIKE '%Supplier Declaration%'.  "Changes by TABSAHA <NPSARCH 1630> Dt:23/05/2019
"       AND certificate_type IN @rt_cert_type.  "Changes by RKORADA <NPSARCH 1630> Dt:03/06/2019
"    IF  sy-subrc IS INITIAL.

"      READ TABLE lt_certus ASSIGNING FIELD-SYMBOL(<fs_certus1>)
"        WITH KEY business_unit = lv_bu.
"      IF sy-subrc IS INITIAL.
"        CALL FUNCTION 'RS_TEXTPOOL_READ'
"          EXPORTING
"            objectname           = 'ZCL_ZFIO_MNG_CTR_DPC_EXT'
"            action               = 'DISPLAY'
"            language             = sy-langu
"          TABLES
"            tpool                = lt_text
"          EXCEPTIONS
"            object_not_found     = 1
"            permission_failure   = 2
"            invalid_program_type = 3
"            error_occured        = 4
"            action_cancelled     = 5.
"        IF sy-subrc IS NOT INITIAL.
"          CASE sy-subrc.
"            WHEN '1'.
"              CLEAR lt_text[].
"            WHEN '2'.
"              CLEAR lt_text[].
"            WHEN OTHERS.
"              CLEAR lt_text[].
"          ENDCASE.
"        ELSE.
"          SORT lt_text BY key.
"        ENDIF.

"        LOOP AT lt_certus ASSIGNING FIELD-SYMBOL(<fs_certus>)
"          WHERE business_unit EQ lv_bu.

"          CONVERT TIME STAMP <fs_certus>-valid_end_date TIME ZONE sy-zonlo INTO DATE DATA(lv_end_date).
"          CONVERT TIME STAMP <fs_certus>-valid_start_date TIME ZONE sy-zonlo INTO DATE DATA(lv_start_date).
"          IF lv_end_date GE sy-datum AND
"             lv_start_date LE sy-datum.

"            MOVE-CORRESPONDING <fs_certus> TO lw_entityset.
"            MOVE: lv_partner TO lw_entityset-partner,
"                  lw_entityset-certificate_color TO lw_entityset-certificate_color_text,
"*                   Begin of changes by KASUING*NPSARCH 1630*11/06
"                    <fs_certus>-certificate_type TO lw_entityset-certificate_group_name,
"*                   End of changes by KASUING*NPSARCH 1630*11/06
"                  lv_bu      TO lw_entityset-business_unit.
"            CONDENSE lw_entityset-certificate_color.
"            CASE: lw_entityset-certificate_color.
"              WHEN: 'BLUE'.
"                lw_entityset-certificate_color_text = TEXT-003.
"              WHEN: 'GREEN' OR '1'.
"*                lw_entityset-certificate_color_text = TEXT-004.
"                READ TABLE lt_text ASSIGNING FIELD-SYMBOL(<fs_text>)
"                                   WITH KEY key = '008'
"                                   BINARY SEARCH.
"                IF sy-subrc IS INITIAL.
"                  lw_entityset-certificate_color = 'GREEN'.
"                  lw_entityset-certificate_color_text = TEXT-004.
"                ENDIF.
"              WHEN: 'PURPLE'.
"                lw_entityset-certificate_color_text = TEXT-005.
"              WHEN: 'RED' OR '3'.
"                lw_entityset-certificate_color = 'RED'.
"                lw_entityset-certificate_color_text = TEXT-006.
"              WHEN: 'BLACK'.
"                lw_entityset-certificate_color_text = TEXT-007.
"              WHEN 'YELLOW' OR '2'.
"                lw_entityset-certificate_color = 'YELLOW'.
"                lw_entityset-certificate_color_text = TEXT-008.
"              WHEN: ''.
"*                lw_entityset-certificate_color_text = TEXT-009.
"                READ TABLE lt_text ASSIGNING <fs_text>
"                                   WITH KEY key = '012'
"                                   BINARY SEARCH.
"                IF sy-subrc IS INITIAL.
"                  lw_entityset-certificate_color = 'GREY'.
"                  lw_entityset-certificate_color_text = <fs_text>-entry.
"                ENDIF.
"              WHEN OTHERS.
"                CONTINUE.
"            ENDCASE.
"            lv_count = lv_count + 1.
"            lw_entityset-counter = lv_count.
"            APPEND lw_entityset TO et_entityset.
"          ENDIF.
"          CLEAR: lv_end_date, lv_start_date.
"        ENDLOOP.
"      ELSE.    " When the entry is not found in Zaif_certus table.
"        LOOP AT lt_certus ASSIGNING FIELD-SYMBOL(<fs_certus2>)
"          WHERE business_unit IS INITIAL.

"          CLEAR: lv_end_date, lv_start_date.
"          CONVERT TIME STAMP <fs_certus2>-valid_end_date TIME ZONE sy-zonlo INTO DATE lv_end_date.
"          CONVERT TIME STAMP <fs_certus2>-valid_start_date TIME ZONE sy-zonlo INTO DATE lv_start_date.
"          IF lv_end_date GE sy-datum AND
"             lv_start_date LE sy-datum.

"            MOVE-CORRESPONDING <fs_certus2> TO lw_entityset.
"            MOVE: lv_partner TO lw_entityset-partner,
"*                   Begin of changes by KASUING*NPSARCH 1630*11/06
"                    <fs_certus2>-certificate_type TO lw_entityset-certificate_group_name,
"*                   End of changes by KASUING*NPSARCH 1630*11/06
"                  lw_entityset-certificate_color TO lw_entityset-certificate_color_text,
"                  ''      TO lw_entityset-business_unit.
"            CASE: lw_entityset-certificate_color.
"              WHEN: 'BLUE'.
"                lw_entityset-certificate_color_text = TEXT-003.
"              WHEN: 'GREEN' OR '1'.
"                lw_entityset-certificate_color_text = TEXT-004.
"              WHEN: 'PURPLE'.
"                lw_entityset-certificate_color_text = TEXT-005.
"              WHEN: 'RED' OR '3'.
"                lw_entityset-certificate_color_text = TEXT-006.
"              WHEN: 'BLACK'.
"                lw_entityset-certificate_color_text = TEXT-007.
"              WHEN 'YELLOW' OR '2'.
"                lw_entityset-certificate_color_text = TEXT-008.
"              WHEN: ''.
"*                lw_entityset-certificate_color_text = TEXT-009.
"                READ TABLE lt_text ASSIGNING <fs_text>
"                                     WITH KEY key = '012'
"                                     BINARY SEARCH.
"                IF sy-subrc IS INITIAL.
"                  lw_entityset-certificate_color_text = <fs_text>-entry.
"                ENDIF.
"              WHEN OTHERS.
"                CONTINUE.
"            ENDCASE.
"            lv_count = lv_count + 1.
"            lw_entityset-counter = lv_count.
"            APPEND lw_entityset TO et_entityset.
"          ENDIF.
"        ENDLOOP.
"      ENDIF.
"      SORT et_entityset.
"    ENDIF.
"*    ENDIF.



  ENDMETHOD.


  METHOD ctrversionlistse_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 01-Mar-2018                                           &*
*& Description: US#8872: Get the CTR version list                     &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*
    DATA: lv_ctr_head_guid     TYPE GUID,
          lt_change_documents  TYPE zcl_zfio_mng_ctr_mpc=>tt_ctrchangelog,  " NPSCC-15899
          lt_change_doc_active TYPE zcl_zfio_mng_ctr_mpc=>tt_ctrchangelog,  " NPSCC-15899
          lt_change_doc_change TYPE zcl_zfio_mng_ctr_mpc=>tt_ctrchangelog,  " NPSCC-15899
          lo_ctr_cls           TYPE REF TO zcl_contract_app.                  " CTR Class
*&---------------------------------------------------------------------*

* Looping the importing table
    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

*   CTR Guid
      IF <fs_key_tab>-name = 'ContractGuid'.

        lv_ctr_head_guid = <fs_key_tab>-value.

      ENDIF.

    ENDLOOP.

    CREATE OBJECT lo_ctr_cls.

* Get the version list
    lo_ctr_cls->get_ctr_version_list(
                EXPORTING im_ctr_head_guid    = lv_ctr_head_guid
                IMPORTING ex_ctr_version_list = et_entityset ).

*{ BOC - RKORADA -  NPSCC-15899
*/.. Below is to identify number of change logs per version
    CALL METHOD lo_ctr_cls->get_ctr_changelog
      EXPORTING
        im_header_guid           = lv_ctr_head_guid   " Procurement Document change log table
        im_filter_select_options = it_filter_select_options
      IMPORTING
        ex_change_documents      = lt_change_documents.   " Change Document

    MOVE : lt_change_documents TO lt_change_doc_active ,
           lt_change_documents TO lt_change_doc_change.

    DELETE lt_change_doc_active  WHERE version_type IS NOT INITIAL.

    DELETE lt_change_doc_change WHERE version_type NE 'C'.

*/.. Dont show historical when active version is same.

    IF line_exists( et_entityset[ version_type = 'H' ] ) .

      DATA(lv_act_ver_no) = et_entityset[ version_type = ' ' ]-version_no.

      DELETE et_entityset WHERE version_no EQ lv_act_ver_no
                            AND version_type = 'H'.

    ENDIF.

    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).

*/ Pass number of entries for change version
      IF  <fs_entity>-version_type EQ 'C' .
        DESCRIBE TABLE lt_change_doc_change LINES <fs_entity>-changes_made.
*/.. Pass number of entries for Active version
      ELSEIF <fs_entity>-version_type IS INITIAL.
        DESCRIBE TABLE lt_change_doc_active LINES <fs_entity>-changes_made.
      ENDIF.

    ENDLOOP.

*} EOC - RKORADA -  NPSCC-15899


  ENDMETHOD.


  METHOD ctr_actions_deep_entity.
    DATA: ls_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctr_action_deep_entity,
          ls_data        TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_ctractions.

****Transform data into the internal structure************
    TRY .
        io_data_provider->read_entry_data(
          IMPORTING
            es_data = ls_deep_entity ).
      CATCH /iwbep/cx_mgw_tech_exception .
        CLEAR ls_deep_entity.
    ENDTRY.

    MOVE ls_deep_entity TO er_deep_entity.
    ls_data = CORRESPONDING #( ls_deep_entity ).

    IF ls_deep_entity-action = 'TRANSFER_ADD'.
      IF er_deep_entity-tocontractitem IS INITIAL.
        zcl_ctr_app_handling=>transfer_contract(
           EXPORTING im_action_data = ls_data
           IMPORTING ex_doc_guid   = er_deep_entity-target_doc_guid
                     et_returnmsgs = er_deep_entity-toreturnmessages ).
* Boc US# 32003 by SWDENDI - Transfer from part view
      ELSEIF  er_deep_entity-tocontractitem IS NOT INITIAL.
        zcl_ctr_app_handling=>transfer_contract_partview(
            EXPORTING im_action_data = er_deep_entity
            IMPORTING ex_doc_guid   = er_deep_entity-target_doc_guid
                      et_returnmsgs = er_deep_entity-toreturnmessages ).
      ENDIF.
* Eoc US# 32003 by SWDENDI - Transfer from part view
    ELSEIF ls_deep_entity-action = 'SUPPLIER_ADD'.

      zcl_ctr_app_handling=>update_contract_snc(
        EXPORTING im_action_data    = ls_data
        IMPORTING ex_doc_guid       = er_deep_entity-target_doc_guid
                  ex_quota_upd_flag = er_deep_entity-quota_upd_flag
                  et_returnmsgs     = er_deep_entity-toreturnmessages
                  ex_source_doc_guid  = er_deep_entity-source_doc_guid ).
*BOC_NPSCC-28829_PlEx: Button in Part View

    ELSEIF ls_deep_entity-action = 'PLANT_EXT'.
      zcl_contract_app=>multiple_ctr_update(
         EXPORTING is_input_data = er_deep_entity ).

*EOC_NPSCC-28829_PlEx: Button in Part View
    ENDIF.
  ENDMETHOD.


  METHOD currencyf4set_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        13-NOV-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Jai Vasudev (JVASUDE)                                 &*
*& Description: Changes done for US#2933                              &*
*&              Contract Creation: Currecny F4 Help                   &*
*----------------------------------------------------------------------*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
*   Data declaration
    "DATA: cl_cos      TYPE REF TO zcl_carry_out_sourcing,
"          lt_filters  TYPE         /iwbep/t_mgw_select_option,
"          ls_filter   TYPE         /iwbep/s_mgw_select_option,
"          lt_supplier TYPE RANGE OF bu_partner,
"          ls_supplier LIKE LINE OF lt_supplier,
"          lv_srh_str  TYPE string,
"          lt_curr     TYPE TABLE OF zven_curr.
"    DATA : lt_currency TYPE TABLE OF zfio_currencyf4 .

"*   Clear local tables
"    REFRESH lt_currency.

"*Use Wild card for Searching
"    CONCATENATE '*' iv_search_string '*' INTO lv_srh_str.

"    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
"    SORT lt_filters BY property.
"*Read Filter Supplier ID--If Supplier ID is provided then Find Supplier Currencies otherwise provide the generic list of currencies
"    READ TABLE lt_filters WITH KEY property = 'SUPPLIER_ID' INTO ls_filter BINARY SEARCH.
"    IF sy-subrc EQ 0.
"      LOOP AT ls_filter-select_options ASSIGNING FIELD-SYMBOL(<fs_vi>).
"        APPEND INITIAL LINE TO lt_supplier ASSIGNING FIELD-SYMBOL(<fs_supplier>).
"        <fs_supplier>-sign = <fs_vi>-sign .
"        <fs_supplier>-option = <fs_vi>-option .
"        <fs_supplier>-low = <fs_vi>-low .
"        <fs_supplier>-high = <fs_vi>-high .
"        ls_supplier = <fs_supplier>.
"      ENDLOOP.
"*/..convertion of any number into a string fill with zeroes
"      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"        EXPORTING
"          input  = ls_supplier-low
"        IMPORTING
"          output = ls_supplier-low.
"*Get Currencies of Supplier
"      CALL METHOD cl_cos->get_supplier_currency
"        EXPORTING
"          iv_supplier_id       = ls_supplier-low
"        IMPORTING
"          et_supplier_currency = lt_curr.

"    ENDIF.
"*/..Fetch Currency Key, ISO Currency Code, Alternative key for currencies,Primary SAP Currency Code for ISO Code
"*..Long Text from the table tcurc, inner join of tcurt where currency key should be equal and populate
"*.. Into internal table lt_currency /.
"*  Fetch currencies iso codes
"    IF lt_curr IS NOT INITIAL.
"      SELECT a~waers a~isocd a~altwr a~xprimary b~ltext
"        FROM tcurc AS a INNER JOIN tcurt AS b ON a~waers = b~waers
"        INTO TABLE lt_currency
"        BYPASSING BUFFER
"        FOR ALL ENTRIES IN lt_curr WHERE a~waers = lt_curr-currency1.
"      IF sy-subrc IS INITIAL.
"*/.. Loop at the internal table(lt_currency) currency to populate values into entity set
"        LOOP AT lt_currency ASSIGNING FIELD-SYMBOL(<fs_curr>).
"*/.. Populate entityset with currency code details
"          IF <fs_curr>-currency CP lv_srh_str OR
"             <fs_curr>-isocd CP lv_srh_str OR
"             <fs_curr>-alt_key CP lv_srh_str OR
"             <fs_curr>-primary_key CP lv_srh_str OR
"             <fs_curr>-ltext CP lv_srh_str  .

"            APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entityset>).
"*/..Get the values of currency, ISO code, Alternate key, Primary key and text into et_entityset.
"            <fs_entityset>-currency = <fs_curr>-currency.
"            <fs_entityset>-isocd = <fs_curr>-isocd.
"            <fs_entityset>-alt_key = <fs_curr>-alt_key.
"            <fs_entityset>-primary_key = <fs_curr>-primary_key.
"            <fs_entityset>-ltext = <fs_curr>-ltext.
"          ENDIF.

"        ENDLOOP.

"      ENDIF.
"    ENDIF.

  ENDMETHOD.


  METHOD currencyset_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        13-NOV-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Jai Vasudev (JVASUDE)                                 &*
*& Description: Changes done for US#2933                              &*
*&              Contract Creation: Currecny F4 Help                   &*
*----------------------------------------------------------------------*
*/..Data declarations

    "DATA : lv_supplier TYPE bu_partner,
"           lv_srh_str  TYPE string,
"           lt_filters  TYPE /iwbep/t_mgw_select_option,
"           rt_currency TYPE RANGE OF waers_curc,
"           rt_curr_ven TYPE RANGE OF waers_curc,
"           lt_output   TYPE zcl_zfio_mng_ctr_mpc=>tt_currency.
"    .

"*/..Use Wild card for Searching
"    CONCATENATE '*' iv_search_string '*' INTO lv_srh_str.

"*/..Get the select option values to the internal table lt_filters.
"    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
"    SORT lt_filters BY property.
"*/..Read Filter Supplier ID--If Supplier ID is provided then Find Supplier Currencies otherwise provide the generic list of currencies


"*/.. Performance optimization by RkORADA - NPSCC-27801 , 08.03.2020

"    lv_supplier = VALUE #( lt_filters[ property = 'SUPPLIER_ID' ]-select_options[ 1 ]-low  OPTIONAL ).
"    lv_supplier = |{ lv_supplier ALPHA = IN }|.

"    rt_currency = VALUE #( FOR ls_filter IN lt_filters WHERE ( property = 'CURRENCY' )
"                                           FOR ls_select_option IN ls_filter-select_options
"                                           ( sign = ls_select_option-sign
"                                             option = ls_select_option-option
"                                             low    = ls_select_option-low
"                                             high   = ls_select_option-high ) ).

"*/.. Fetch currency master data

"    SELECT a~waers , b~ltext
"      FROM tcurc AS a
"      INNER JOIN tcurt AS b ON a~waers = b~waers

"      INTO TABLE @DATA(lt_curr_temp)
"      BYPASSING BUFFER
"      WHERE a~waers IS NOT NULL
"      AND b~spras = @sy-langu.

"    IF sy-subrc EQ 0.
"      SORT lt_curr_temp BY waers ASCENDING.
"      DELETE lt_curr_temp WHERE waers NOT IN rt_currency.
"    ELSE.
"      CLEAR lt_curr_temp.
"    ENDIF.


"    IF  iv_search_string IS INITIAL.

"      DATA(lt_curr) = lt_curr_temp.

"    ELSE.

"*/.. Apply logic for general search
"      lt_curr = VALUE #( FOR ls_curr IN lt_curr_temp WHERE ( waers CP lv_srh_str ) ( ls_curr ) ).

"    ENDIF.

"*/.. Fetch currencies inline with given supplier
"    IF lv_supplier IS NOT INITIAL.

"      SELECT supplier, waers , country , type
"        FROM zvw_sup_currency( p_sup = @lv_supplier )
"        INTO TABLE @DATA(lt_sup_cur)
"        WHERE waers IN @rt_currency.
"      IF sy-subrc EQ 0.
"        SORT lt_sup_cur BY type ASCENDING.

"        et_entityset = VALUE #( FOR <fs_sup> IN lt_sup_cur
"                                FOR <fs_curr> IN lt_curr WHERE ( waers = <fs_sup>-waers )
"                               (  currency = <fs_curr>-waers
"                                  curr_desc = <fs_curr>-ltext
"                                  supplier_id = <fs_sup>-supplier
"                                  type = <fs_sup>-type ) ) .

"        rt_curr_ven = VALUE #( FOR <fs_sup> IN lt_sup_cur
"                               ( sign = 'I'
"                                 option = 'EQ'
"                                 low = <fs_sup>-waers ) ).

"*/.. So that we can remove duplicate entries.
"        DELETE lt_curr WHERE waers IN rt_curr_ven.

"      ELSE.
"        CLEAR lt_sup_cur.
"      ENDIF.

"    ENDIF.

"*/.. Fill final results

"    lt_output = VALUE #( FOR ls_entry IN lt_curr
"                                  ( currency = ls_entry-waers
"                                    curr_desc = ls_entry-ltext  ) ) .

"    APPEND LINES OF lt_output TO et_entityset.

"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.
"    ENDIF.

  ENDMETHOD.


  METHOD dbitemplantdetse_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 24-June-2020                                         &*
*& Responsible: Infosys                                              &*
*& Developer  : Swathi Reddy Dendi(SWDENDI)                          &*
*& Description: NPSCC-28961_PlEx: Select Parameters (Reference plant,&*
*&              New Plant, Start Date, PCR) & Confirm                &*
*---------------------------------------------------------------------*
* This method is used to delete file data stored in tableZEXCL_UPL*
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------

    "DATA: lv_ctr_guid    TYPE GUID,
"          ls_read_flags  TYPE bbps_ctr_detail_requested,
"          ls_header      TYPE bbp_pds_ctr_header_d,
"          lt_items       TYPE bbpt_pd_ctr_item_d,
"          lt_dist        TYPE bbpt_pd_dis,
"          lt_guid_string TYPE STANDARD TABLE OF string,
"          lt_hdr_guid    TYPE TABLE OF GUID,
"          lr_hdr_guid    TYPE RANGE OF GUID,
"          lv_date        TYPE dats.

"    IF line_exists( it_filter_select_options[ property = 'CtrHeaderGuid' ] ) AND
"      it_filter_select_options[ property = 'CtrHeaderGuid' ]-select_options[ 1 ]-low IS NOT INITIAL.
"      lv_ctr_guid = it_filter_select_options[ property = 'CtrHeaderGuid' ]-select_options[ 1 ]-low.
"    ENDIF.

"*    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND
"*      it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low IS NOT INITIAL.
"    DATA(lv_action) = VALUE #( it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low OPTIONAL ).
"*    ENDIF.


"    IF lv_action IS INITIAL .
"      ls_read_flags-item_tab     = abap_true.
"      ls_read_flags-dep_attr_tab = abap_true.

"      CALL FUNCTION 'BBP_PD_CTR_GETDETAIL'
"        EXPORTING
"          i_guid          = lv_ctr_guid
"          i_with_itemdata = 'X'
"        IMPORTING
"          e_header        = ls_header
"        TABLES
"          e_item          = lt_items
"          e_dis           = lt_dist.

"      IF lv_action IS INITIAL.
"        DATA(lr_dist_partner_guid) = VALUE plmt_ranges_for_partner( FOR ls_item IN lt_items WHERE ( del_ind IS INITIAL )
"                                           FOR ls_dist IN lt_dist WHERE ( p_guid = ls_item-guid AND del_ind IS INITIAL )
"                                           ( sign = 'I' option = 'EQ' low = ls_dist-location ) ).

"        IF lr_dist_partner_guid IS NOT INITIAL.
"          SELECT a~ext_locno, b~partner_guid, b~name_org1, b~name_org2, d~topdivision
"            FROM bbp_locmap AS a
"            INNER JOIN but000 AS b
"            ON b~partner = a~partner_no
"            INNER JOIN zlegal_cc AS c
"            ON c~bukrs = a~company_code
"            INNER JOIN zdiv_value AS d
"            ON d~id = c~division
"            INTO TABLE @DATA(lt_plant_det)
"            BYPASSING BUFFER
"            WHERE b~partner_guid IN @lr_dist_partner_guid.
"          IF sy-subrc <> 0.
"            CLEAR lt_plant_det.
"          ENDIF.
"        ENDIF.

"        et_entityset = VALUE #( FOR ls_itm IN lt_items WHERE ( del_ind IS INITIAL )
"                                FOR ls_dis IN lt_dist WHERE ( p_guid = ls_itm-guid AND del_ind IS INITIAL )
"                                ( ctr_header_guid = ls_header-guid
"                                  ctr_item_guid   = ls_itm-guid
"                                  ctr_item_plant  = VALUE #( lt_plant_det[ partner_guid = ls_dis-location ]-ext_locno OPTIONAL )
"                                  div_id          = VALUE #( lt_plant_det[ partner_guid = ls_dis-location ]-topdivision OPTIONAL )
"                                  valid_from      = ls_dis-zvper_start
"                                  valid_to        = ls_dis-zvper_end
"                                  ctr_item_plant_desc = |{ VALUE #( lt_plant_det[ partner_guid = ls_dis-location ]-name_org1 OPTIONAL ) } { VALUE #( lt_plant_det[ partner_guid
"                                  = ls_dis-location ]-name_org2 OPTIONAL ) }| ) ).

"      ENDIF.
"* Boc US# 30199  by SWDENDI
"    ELSEIF lv_action = 'SUPPLIER_ADD'.
"      IF line_exists( it_filter_select_options[ property = 'ValidFrom' ] ) AND
"         it_filter_select_options[ property = 'ValidFrom' ]-select_options[ 1 ]-low IS NOT INITIAL.
"        lv_date = it_filter_select_options[ property = 'ValidFrom' ]-select_options[ 1 ]-low.
"      ENDIF.

"      SELECT itm_guid, itm_desc, product, item_number,item_valid_from, item_valid_to
"        FROM zctr_item_det( p_system_lang = @sy-langu )
"        INTO TABLE @DATA(lt_itm_data)
"        WHERE hdr_guid = @lv_ctr_guid
"        AND cancel_flag = @abap_false AND release_flag = @abap_true.
"      IF sy-subrc EQ 0.

"        DELETE lt_itm_data WHERE item_valid_from GT lv_date.
"        DELETE lt_itm_data WHERE item_valid_to LT lv_date.

"        IF lt_itm_data IS NOT INITIAL.
"          SELECT product_guid, ordered_prod, pritnmatnr, es1,es2,itemcodetype,itemcodedesc
"            FROM zparts_char_cds
"            INTO TABLE @DATA(lt_char)
"            FOR ALL ENTRIES IN @lt_itm_data
"            WHERE product_guid = @lt_itm_data-product.
"          IF sy-subrc <> 0.
"            CLEAR : lt_char.
"          ENDIF.
"          SORT lt_itm_data BY item_number ASCENDING.
"          et_entityset = VALUE #( FOR ls_data IN lt_itm_data
"                                  ( ctr_header_guid = lv_ctr_guid
"                                    ctr_item_guid   = ls_data-itm_guid
"                                    item_number     = ls_data-item_number
"                                    description     = ls_data-itm_desc
"                                    print_product_id = VALUE #( lt_char[ product_guid = ls_data-product ]-pritnmatnr OPTIONAL )
"                                    es1 = VALUE #( lt_char[ product_guid = ls_data-product ]-es1 OPTIONAL )
"                                    es2 = VALUE #( lt_char[ product_guid = ls_data-product ]-es2 OPTIONAL )
"                                    itemcodetype = VALUE #( lt_char[ product_guid = ls_data-product ]-itemcodetype OPTIONAL )
"                                    itemcodetype_desc = VALUE #( lt_char[ product_guid = ls_data-product ]-itemcodedesc OPTIONAL ) ) ).
"        ENDIF.
"      ENDIF.
"* Boc US# 30004 by SWDENDI - PC: DIBS UX Header
"    ELSEIF lv_action = 'DIBS_PO_NUMBER'.
"      DATA(lv_plant) = CONV werks_d(  VALUE #( it_filter_select_options[ property = 'CtrItemPlant' ]-select_options[ 1 ]-low OPTIONAL ) ).
"      DATA(lv_supplier) = CONV bu_partner( VALUE #( it_filter_select_options[ property = 'Supplier' ]-select_options[ 1 ]-low OPTIONAL ) ).
"      DATA(lv_shiptoid) = VALUE #( it_filter_select_options[ property = 'ShipToId' ]-select_options[ 1 ]-low OPTIONAL ).

"      lv_supplier = |{ lv_supplier ALPHA = IN }|.

"      SELECT SINGLE dibs_number
"        FROM zsupp_dibs
"        INTO @DATA(lv_dibs_number)
"        WHERE supplier_no = @lv_supplier
"        AND plant = @lv_plant AND ship_to_id = @lv_shiptoid AND status = @abap_true AND dibs_number IS NOT NULL.
"      IF sy-subrc <> 0.
"        CLEAR lv_dibs_number.
"      ENDIF.
"      APPEND VALUE #( action = lv_action ctr_item_plant = lv_plant supplier = lv_supplier ship_to_id = lv_shiptoid
"      dibs_po_number = lv_dibs_number ) TO et_entityset.
"* Eoc US# 30004 by SWDENDI - PC: DIBS UX Header
"* BOC_NPSCC-31491_By SOPABBA_Mass Change PC App - Plant Section - preselection of plants of the Contract
"    ELSEIF lv_action = 'PART_MASS_CHANGE'.
"      DATA(lt_guid_sel) = VALUE #( it_filter_select_options[ property = 'CtrHeaderGuid' ]-select_options OPTIONAL ).

"      lr_hdr_guid = VALUE #( FOR ls_guid IN lt_guid_sel
"                             ( sign = 'I' option = 'EQ' low = ls_guid-low ) ).

"      SORT lr_hdr_guid BY low.
"      DELETE ADJACENT DUPLICATES FROM lr_hdr_guid COMPARING low.
"      DELETE lr_hdr_guid WHERE low IS INITIAL.
"      IF lr_hdr_guid IS NOT INITIAL.
"        SELECT a~guid AS ctr_header_guid,
"*               c~contract_item_guid AS ctr_item_guid,
"               c~plant AS ctr_item_plant
"          FROM crmd_orderadm_h AS a
"          INNER JOIN crmd_orderadm_i AS b
"             ON a~guid = b~header
"          INNER JOIN zv_ctr_itm_plant AS c
"             ON b~guid = c~contract_item_guid
"          WHERE a~guid IN @lr_hdr_guid
"          INTO TABLE @DATA(lt_ctr_plants).
"        IF sy-subrc = '0'.
"          et_entityset = CORRESPONDING #( lt_ctr_plants ).
"          SORT et_entityset BY ctr_header_guid ctr_item_plant.
"          DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING ctr_header_guid ctr_item_plant.
"        ENDIF.
"      ENDIF.
"* EOC_NPSCC-31491_By SOPABBA_Mass Change PC App - Plant Section - preselection of plants of the Contract
"    ENDIF.
* Eoc US# 30199  by SWDENDI
  ENDMETHOD.


  METHOD defaulttermset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Kaushalendra Pratap Singh (KAUSING)         &*
*& Created    : 21-July-2019                                          &*
*& Description: BPSARCH-17849- Default Terms                          &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*
*   Data declaration
    DATA: lv_buyer TYPE xubname,
          lv_plant TYPE werks_d,
          lv_le    TYPE bukrs,
          lv_supp  TYPE bu_partner.
*   Fetch the value transferred from FIORI
    IF line_exists( it_key_tab[ name = 'BuyerId' ] ) .
      lv_buyer = it_key_tab[ name = 'BuyerId' ]-value.
    ENDIF.

    IF line_exists( it_key_tab[ name = 'Plant' ] ) .
      lv_plant = it_key_tab[ name = 'Plant' ]-value.
    ENDIF.

    IF line_exists( it_key_tab[ name = 'LE' ] ) .
      lv_le = it_key_tab[ name = 'LE' ]-value.
    ENDIF.

    IF line_exists( it_key_tab[ name = 'Supplier' ] ) .
      lv_supp = it_key_tab[ name = 'Supplier' ]-value.
    ENDIF.
*
*    CALL METHOD Zcl_contract_app=>fetch_default_terms
*      EXPORTING
*        im_buyer = lv_buyer
*        im_comp  = lv_le
*        im_plant = lv_plant
*        im_supp  = lv_supp
*      IMPORTING
*        ex_default_terms = et_entityset.

*    copy_data_to_ref(
*         EXPORTING
*           is_data = et_entityset
*         CHANGING
*           cr_data = er_data
*        ).
  ENDMETHOD.


  METHOD default_terms_deep_entity.
*&--------------------------------------------------------------------&*
*& Date:        03-July-2019                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   KAUSING                                               &*
*& Description: Changes done for SP64-US_21377                        &*
*&              Default term deep entityt set                         &*
*&--------------------------------------------------------------------&*


*&--------------------------------------------------------------------&*
* Data decalration
*&--------------------------------------------------------------------&*

    "DATA:
"      lr_deep_entity   TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_default_terms_deep_entity,
"      lt_default_terms TYPE zctr_terms_dflt_tt.

"*&--------------------------------------------------------------------&*
"****Transform data into the internal structure************
"*&--------------------------------------------------------------------&*
"    TRY .
"        io_data_provider->read_entry_data(
"          IMPORTING
"            es_data = lr_deep_entity ).
"      CATCH /iwbep/cx_mgw_tech_exception .
"        CLEAR lr_deep_entity.
"    ENDTRY.

"*&--------------------------------------------------------------------&*
"*logic
"*&--------------------------------------------------------------------&*
"    IF lr_deep_entity-todefaultterms IS NOT INITIAL.
"      NEW zcl_contract_app( )->fetch_default_terms(
"        EXPORTING
"          im_call_from_fiori = abap_true        " NPSCC-30236_By SOPABBA
"        CHANGING
"          ch_default_terms = lr_deep_entity-todefaultterms[] ).
"      CLEAR : er_deep_entity-todefaultterms.
"      APPEND LINES OF lr_deep_entity-todefaultterms[] TO er_deep_entity-todefaultterms.
"    ENDIF.

  ENDMETHOD.


  METHOD downloadpartexce_create_entity.
*&-------------------------------------------------------------------&*
*& Date       : 20-May-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Sowmya Pabba(SOPABBA)                                &*
*& Description: NPSCC-27223_Part View_Enhance Part Selection         &*
*&              with Excel Upload                                    &*
*---------------------------------------------------------------------*
* This method is used to delete file data stored in tableZEXCL_UPL*
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------

    DATA: ls_data      TYPE zcl_zfio_mng_ctr_mpc=>ts_downloadpartexcel,
          lt_return    TYPE bapiret2_t,
          lo_exception TYPE REF TO /iwbep/cx_mgw_tech_exception.

*****Transform data into the internal structure************
    io_data_provider->read_entry_data(
      IMPORTING
           es_data = ls_data ).

* Below method is called to update database
    NEW zcl_contract_app( )->part_search_excel_upld(
    EXPORTING
      im_mode         = 'UPD'                        " Mode
      it_key_tab      = it_key_tab                   " Key fields
      im_file_name    = ls_data-template_name        " Template Name
      im_excel_stream = ls_data-excel_xstring        " Excel stream
       ).

    er_entity = ls_data.

  ENDMETHOD.


  METHOD downloadpartexce_delete_entity.
*&-------------------------------------------------------------------&*
*& Date       : 20-May-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Sowmya Pabba(SOPABBA)                                &*
*& Description: NPSCC-27223_Part View_Enhance Part Selection         &*
*&              with Excel Upload                                    &*
*---------------------------------------------------------------------*
* This method is used to delete file data stored in tableZEXCL_UPL*
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------
* Below method is called to update database
    NEW zcl_contract_app( )->part_search_excel_upld(
        EXPORTING
          im_mode    = 'DEL'
          it_key_tab = it_key_tab ).
  ENDMETHOD.


  METHOD downloadpartexce_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 20-May-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Sowmya Pabba(SOPABBA)                                &*
*& Description: NPSCC-27223_Part View_Enhance Part Selection         &*
*&              with Excel Upload                                    &*
*---------------------------------------------------------------------*
* This method is used to fetch file data stored in tableZEXCL_UPL*
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------

*    IF line_exists( it_key_tab[ name = 'FieldName' value = 'PART' ] ).
    SELECT user_id,
           field_name,
           ltrim( template_id , '0' ) AS template_id,
           template_name
         " excel_xstring
      FROM zexcl_upl
      WHERE user_id = @sy-uname
        AND field_name = 'PART'
        INTO TABLE @DATA(lt_excl_upl).

    IF sy-subrc EQ 0.
      et_entityset = CORRESPONDING #( lt_excl_upl ).
      SORT et_entityset BY template_id DESCENDING.
    ENDIF.

*    ENDIF.
  ENDMETHOD.


  METHOD do_cache_entity_set.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / RKORADA & SRINIV                            &*
*& Created    : 13-JUNE-2020                                          &*
*& Description: US 29430 [Fiori Check] [Fiori] 2.9 Cache OData calls  &*
*&--------------------------------------------------------------------&*

**   Get time stamp of if-modified-since request header
    IF io_tech_request_context IS NOT INITIAL.
      DATA(lv_if_modified_since) = io_tech_request_context->get_if_modified_since( ).

**   Set the max-age for the cache
      es_response_context-max_age = 31536000 . " 365 days
      es_response_context-do_not_cache_on_client = '-'.

**   Set the last-modified time stamp. This is only a very simplified example - in reality the last-modified time stamp must reflect the last change of the business data
      es_response_context-last_modified = 20200101000000. "Year 2012 Nov 27 09:41:40

**  Calculate the value for is-not-modified
      es_response_context-is_not_modified =
                  /iwbep/if_mgw_conv_srv_runtime~check_if_is_not_modified(
                            iv_if_modified_since = lv_if_modified_since
                            iv_last_modified = es_response_context-last_modified ).

    ELSEIF io_tech_request_context_entity IS NOT INITIAL.
      lv_if_modified_since = io_tech_request_context_entity->get_if_modified_since( ).
**   Set the max-age for the cache
      es_response_context_entity-max_age = 31536000 . " 365 days
      es_response_context_entity-do_not_cache_on_client = '-'.

**   Set the last-modified time stamp. This is only a very simplified example - in reality the last-modified time stamp must reflect the last change of the business data
      es_response_context_entity-last_modified = 20200101000000. "Year 2012 Nov 27 09:41:40

**  Calculate the value for is-not-modified
      es_response_context_entity-is_not_modified =
                  /iwbep/if_mgw_conv_srv_runtime~check_if_is_not_modified(
                            iv_if_modified_since = lv_if_modified_since
                            iv_last_modified = es_response_context-last_modified ).
    ELSE.
      RETURN.
    ENDIF.



  ENDMETHOD.


  METHOD forwardctrset_create_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 13-Dec-2017                                           &*
*& Description: US#3087: Change the buyer for the contracts           &*
*& Transport  : DSQK904294                                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

"*&-------------------------DATA DECLARATIONS---------------------------*
"    DATA: ls_ctr_numbers TYPE crmt_object_id_db,
"          lt_ctr_numbers TYPE TABLE OF crmt_object_id_db,
"          ls_input_data  TYPE zcl_zfio_mng_ctr_mpc=>ts_forwardctr,
"          lo_cls         TYPE REF TO zcl_contract_app,
"          lt_messages    TYPE bapiret2_t,
"          lo_exception   TYPE REF TO /iwbep/cx_mgw_busi_exception.
"*&---------------------------------------------------------------------*

"* Reading the input data
"    io_data_provider->read_entry_data(
"    IMPORTING es_data = ls_input_data ).

"    IF ls_input_data IS NOT INITIAL.

"      CREATE OBJECT lo_cls.

"      ls_ctr_numbers = ls_input_data-object_id.
"      APPEND ls_ctr_numbers TO lt_ctr_numbers.

"*   Call method to change the buyer
"      lo_cls->change_buyer_for_contracts(
"      EXPORTING im_buyer_id    = ls_input_data-new_buyer
"        im_ctr_numbers = lt_ctr_numbers
"        im_fwd_reason  = ls_input_data-reason
"        im_old_buyer   = ls_input_data-old_buyer        "SP_40-US_11259 By--TTHIRUM
"      IMPORTING ex_messages    = lt_messages ).


"      IF lt_messages[] IS NOT INITIAL.

"        CREATE OBJECT lo_exception .
"*     Add messages to container & instantiate container
"        lo_exception->get_msg_container( )->add_messages_from_bapi(
"        it_bapi_messages = lt_messages ).
"*     Raise exception
"        RAISE EXCEPTION lo_exception.

"      ENDIF.

"    ENDIF.


  ENDMETHOD.


  METHOD guestauthcheckse_get_entity.
***********************************************************************
* Author             : KAUSING                                        *
* Title              : Contract Guest Auth Check                      *
* Date               : 2018-09-02                                     *
* Module             : Procure- Guest User Authorisation              *
*_____________________________________________________________________*
* DESCRIPTION (7280 - Contract Guest Auth)                            *
*               This method is used 7280 - PR Guest Auth              *
***********************************************************************
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        31-Aug-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   GSAMINA (Gayathri Saminathan)                         &*
*& Description: US-12971 check for AvoB Visibility                    &*
*----------------------------------------------------------------------*

    DATA: lv_auth_flag TYPE char1.
    CLEAR lv_auth_flag.

    CALL FUNCTION 'ZAUTH_CHECK_USER'
      EXPORTING
        i_uname     = sy-uname
*       i_authobject = lc_contguestauth
      IMPORTING
        e_auth_flag = lv_auth_flag.

    MOVE: lv_auth_flag TO er_entity-display_access,
          sy-uname     TO er_entity-uname.
  ENDMETHOD.


  METHOD guestauthcheckse_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / SOPABBA                                     &*
*& Created    : 04-Feb-2020                                           &*
*& Description: NPSCC-25671: RPC: BU admin to release a retroactive   &*
*&              price change                                          &*
*&--------------------------------------------------------------------&*

    DATA: lt_values   TYPE STANDARD TABLE OF usvalues,
          lr_auth_obj TYPE RANGE OF ust12-objct.

    lr_auth_obj = VALUE #( ( sign = 'I' option = 'EQ' low = 'Z_PROQ_CTR' )
                            ( sign = 'I' option = 'EQ' low = 'Z_PROQ_RPC' ) ).

    LOOP AT lr_auth_obj ASSIGNING FIELD-SYMBOL(<fs_auth_obj>).

      CALL FUNCTION 'SUSR_USER_AUTH_FOR_OBJ_GET'
        EXPORTING
          user_name           = sy-uname
          sel_object          = <fs_auth_obj>-low
        TABLES
          values              = lt_values
        EXCEPTIONS
          user_name_not_exist = 1
          not_authorized      = 2
          internal_error      = 3
          OTHERS              = 4.

      IF sy-subrc <> 0.
        FREE lt_values.
      ENDIF.

      et_entityset = VALUE #( BASE et_entityset FOR ls_value IN lt_values
                             ( uname      = sy-uname
                               auth_objct = ls_value-objct
                               activity   = ls_value-von ) ).

      FREE lt_values.

    ENDLOOP.
  ENDMETHOD.


  METHOD incotermset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                   &*
*& Created    : 2017-10-10                                            &*
*& Description: US#478: This method is used to pass incoterms data    &*
*&--------------------------------------------------------------------&*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        06-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Nihar Ranasingh (NRANASI)                             &*
*& Description: Changes done for SP34-US#7953                         &*
*&    Detailed delivery information for Logistic Supplier  and        &*
*&    prepopulation of City & COuntry as per Incoterm Key_PM type CTR &*
*&--------------------------------------------------------------------&*


"    DATA :ls_entity  TYPE  zcl_fio_manage_po_mpc=>ts_incoterms,
"          lv_counter TYPE p VALUE IS INITIAL,
"          lv_guid1   TYPE /sappssrm/_guid VALUE IS INITIAL,
"          lv_srh_str TYPE string.

"    DATA: lo_cls         TYPE REF TO zcl_carry_out_sourcing,
"          lv_longtext    TYPE string,
"          lv_incoterm_id TYPE bbp_incoterm_key.

"    CREATE OBJECT lo_cls.

"*"-- Old commented code deleted - By Nihar-09Apr18
"**"== Logic Optimized --------------------- By Nihar

"*    SELECT a~incoterm_key,
"*           a~Zincoterm_key_ind,
"*           b~description
"*           FROM bbpc_incoterms AS a
"*        INNER JOIN bbpc_incoterms_t AS b
"*        ON a~incoterm_key = b~incoterm_key
"*        INTO  TABLE @DATA(lt_incoterms)
"*        WHERE language = @sy-langu.

"*    SELECT a~incoterm_key,
"*           a~Zincoterm_key_ind,
"*           a~Zlogistic_supplier_flag,
"*           b~description,
"*           c~text
"*           FROM bbpc_incoterms AS a
"*        INNER JOIN bbpc_incoterms_t AS b
"*        ON  b~incoterm_key = a~incoterm_key
"*        LEFT OUTER JOIN Zinco_ind AS c
"*         ON c~Zincoterm_key_ind = a~Zincoterm_key_ind
"*        INTO  TABLE @DATA(lt_incoterms)
"*        WHERE language = @sy-langu.
"**{ Begin Of Change US#13378 SOPABBA
"    DATA rt_incoterm TYPE RANGE OF bbp_incoterm_key.

"    LOOP AT it_filter_select_options ASSIGNING FIELD-SYMBOL(<fs_filters>).
"      IF <fs_filters>-property EQ 'IncotermKey'.
"        rt_incoterm = VALUE #( FOR ls_sel_opt IN <fs_filters>-select_options
"                                ( sign   = ls_sel_opt-sign
"                                  option = ls_sel_opt-option
"                                  low    = ls_sel_opt-low ) ).
"      ENDIF.
"    ENDLOOP.
"**} End Of Change US#13378 SOPABBA
"*&--------------------------------------------------------------------&*
"*& Begin of changes by GUCHAND < US 698 >                             &*
"*&--------------------------------------------------------------------&*
"    SELECT a~incoterm_key,
"           a~zplace_type,
"           a~zmadrlog_supp,
"           b~description,
"           c~text
"           FROM bbpc_incoterms AS a
"        INNER JOIN bbpc_incoterms_t AS b
"        ON  b~incoterm_key = a~incoterm_key
"        LEFT OUTER JOIN zinco_ind AS c
"         ON c~zincoterm_key_ind = a~zplace_type
"        INTO  TABLE @DATA(lt_incoterms)
"        BYPASSING BUFFER
"        WHERE a~incoterm_key IN @rt_incoterm  " US 13378 SOPABBA
"          AND language = @sy-langu.
"    IF sy-subrc IS INITIAL.
"*&--------------------------------------------------------------------&*
"*& End of changes by GUCHAND < US 698 >                               &*
"*&--------------------------------------------------------------------&*

"*      SELECT a.incoterm_key
"*             a.Zincoterm_key_ind
"*             a.ZLOGISTIC_SUPPLIER_FLAG
"*             b.description
"*             C.TEXT
"*        FROM bbpc_incoterms a ,bbpc_incoterms_t b ,ZInco_Ind c
"*        INTO  TABLE @DATA(lt_incoterms)
"*        where a.

"      SELECT zincoterm_key_ind, text FROM zinco_ind
"          INTO TABLE @DATA(lt_so10)
"        WHERE zincoterm_key_ind IS NOT NULL.

"      IF sy-subrc EQ 0.
"        SORT lt_so10 BY zincoterm_key_ind ASCENDING.

"        DATA it_so10_names TYPE RANGE OF tdobname.

"        LOOP AT lt_so10 ASSIGNING FIELD-SYMBOL(<fs_so10>).
"          APPEND INITIAL LINE TO it_so10_names ASSIGNING FIELD-SYMBOL(<fs_so10_names>) .
"          <fs_so10_names>-low = <fs_so10>-text .
"          <fs_so10_names>-sign = 'I' .
"          <fs_so10_names>-option = 'EQ' .
"        ENDLOOP.

"        IF sy-subrc EQ 0.

"          DATA : lcl_class TYPE REF TO zcl_search_help_and_info.
"*
"          CREATE OBJECT lcl_class .

"          CALL METHOD lcl_class->get_so10_texts
"            EXPORTING
"              im_so10_names   = it_so10_names
"              im_language_key = sy-langu
"            IMPORTING
"              ex_so10_texts   = DATA(et_so10_text).

"          IF et_so10_text IS NOT INITIAL.
"            SORT et_so10_text BY so10_name .
"          ENDIF.
"        ENDIF.
"      ENDIF.
"    ENDIF.
"*"--- If any String is entered in Search help field, filter the values based on that
"    CONCATENATE '*' iv_search_string '*' INTO lv_srh_str.

"    LOOP AT lt_incoterms ASSIGNING FIELD-SYMBOL(<fs_incoterms>).
"      ls_entity-incoterm_key     = <fs_incoterms>-incoterm_key.
"      ls_entity-incoterm_shorttext = <fs_incoterms>-description.

"*        ls_entity-Zincoterm_key_ind  = <fs_incoterms>-Zincoterm_key_ind .                   ""-B== SP34-US#7953-Detailed delivery information for Logistic Supplier_PM_CTR
"      ls_entity-zincoterm_key_ind = <fs_incoterms>-zplace_type .          ""== < US 698 > Changed By  GUCHAND
"      READ TABLE et_so10_text ASSIGNING FIELD-SYMBOL(<fs_so10_text>)                                "== US# 7953-
"          WITH KEY so10_name  = <fs_incoterms>-text BINARY SEARCH.
"      IF  sy-subrc EQ 0.
"        ls_entity-text   = <fs_so10_text>-so10_text .
"      ENDIF.

"*      ls_entity-Zlogistic_supplier_flag = <fs_incoterms>-Zlogistic_supplier_flag .         ""-E== SP34-US#7953
"      ls_entity-zlogistic_supplier_flag = <fs_incoterms>-zmadrlog_supp .            ""==  < US 698 > Changes by GUCHAND

"      lv_counter             = lv_counter + 1.
"      lv_guid1               = lv_guid1 + lv_counter.
"      ls_entity-guid         = lv_guid1.

"* BOC by SHENVIA for US 28135
"*      lv_incoterm_id = <fs_incoterms>-incoterm_key.
"*
"*      lo_cls->get_payterm_incoterm_longtext(
"*                    EXPORTING  im_incoterm_id       = lv_incoterm_id  " im_payment_id = lv_payment_id
"*                    IMPORTING ex_incoterm_longtext = lv_longtext ).   "   EX_PAYMENT_LONGTEXT
"*
"*      ls_entity-incoterm_longtext = lv_longtext.
"* EOC by SHENVIA for US 28135

"      IF iv_search_string IS NOT INITIAL.
"        IF <fs_incoterms>-incoterm_key CP lv_srh_str
"          OR <fs_incoterms>-description CP lv_srh_str.
"          APPEND ls_entity TO et_entityset.
"        ENDIF.            "-- If it is matching  after append it wil move to next loop
"        CONTINUE .        "-- For the Current Loop paas ,If it is not matching with Pattern It should skip to next record
"      ENDIF .

"      APPEND ls_entity TO et_entityset.
"      CLEAR ls_entity .

"    ENDLOOP.

"*/.. Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.


  ENDMETHOD.


  METHOD initappparamset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Swathi Dendi (SWDENDI)                      &*
*& Created    : 26-Nov-2020                                           &*
*& Description: NPSCC:31623- Performance Optimization - Identical     &*
*&              call on navigating to Item view	                      &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*

    DATA: rt_name TYPE RANGE OF rvari_vnam.

    rt_name = VALUE #( ( sign = 'I' option = 'EQ' low = 'ZMPN_DEFAULT_PCR' ) ).

    SELECT name, low, high
      FROM tvarvc
      INTO TABLE @DATA(lt_tvarvc)
      WHERE name IN @rt_name.

    IF sy-subrc  = 0.
      et_entityset = VALUE #( FOR ls_tavrvc IN lt_tvarvc
                               ( field_name  = ls_tavrvc-low
                                 field_value = ls_tavrvc-high ) ).
    ENDIF.

  ENDMETHOD.


  METHOD itemciprateset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Sowmya Pabb (SOPABBA)                       &*
*& Created    : 02-Dec-2019                                           &*
*& Description: NPSCC:25587- Show the GLOBUS imported CIP rate in     &*
*&              the item page                                         *&
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*

    DATA: lv_header_guid TYPE crmt_object_guid,
          lv_item_guid   TYPE crmt_object_guid.
* Contract Header Guid
    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
      lv_header_guid = it_key_tab[ name = 'ContractGuid' ]-value.
    ENDIF.
* Contract Item Guid
    IF line_exists( it_key_tab[ name = 'Guid' ] ).
      lv_item_guid = it_key_tab[ name = 'Guid' ]-value.
    ENDIF.
* Call below method to fetch scheduling agreement details
    NEW zcl_contract_app( )->get_cip_rates(
       EXPORTING
         im_ctr_head_guid         = lv_header_guid
         im_ctr_itm_guid          = lv_item_guid
         it_filter_select_options = it_filter_select_options
       IMPORTING
         ex_cip_rate              = et_entityset ).
* Paging logic
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD itemcodetypef4se_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Swathi Dendi (SWDENDI)                      &*
*& Created    : 18-Mar-2020                                           &*
*& Description: US# 27607 Excel: Upload (new) local parts in PC with  &*
*&              Excel upload template                                 &*
*&--------------------------------------------------------------------&*

    SELECT itemcode_type AS itemcodetype,
           source_item_code AS sourceitemcode,
           item_code_description AS itemcodetypedesc,
           item_code_ext AS itemcodeext
      INTO TABLE @DATA(lt_mat_config)
      FROM zmat_config
      WHERE itemcode_type IS NOT NULL
      AND class EQ 'MB_PARTS'.

    IF sy-subrc NE 0.
      CLEAR et_entityset.
    ELSE.
      et_entityset = CORRESPONDING #( lt_mat_config ).
    ENDIF.
  ENDMETHOD.


  METHOD kodabameasureset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Sowmya Pabba (SOPABBA)                      &*
*& Created    : 27-Feb-2018                                           &*
*& Description: To Display KoDaBa Measure Values in Page 2            &*
*&--------------------------------------------------------------------&*

   " DATA: lv_header_guid TYPE crmt_object_guid,
"          lr_plant       TYPE RANGE OF werks_d,
"          lr_so10_name   TYPE RANGE OF tdobname,
"          lo_common_cls  TYPE REF TO zcl_search_help_and_info.
"* Contract Guid sent from Fiori
"    IF line_exists( it_key_tab[ name = 'ContractGuid' ] ).
"      lv_header_guid = it_key_tab[ name = 'ContractGuid' ]-value.
"    ENDIF.
"* Fetch Measure values from table ZPD_PRC_INF based on Header Guid
"    SELECT a~header_guid, a~item_guid, a~plant, a~pcr_code,
"           a~measure_number, a~measure_volume, b~pmp_scope, c~description,
"           d~description AS pmp_scope_text
"      INTO TABLE @DATA(lt_pd_prc_inf)
"      FROM zpd_prc_inf AS a
"      INNER JOIN zplant_cus AS b
"      ON a~plant = b~werks
"      INNER JOIN zprc_reason AS c
"      ON a~pcr_code = c~id
"      INNER JOIN zpmp_scope AS d
"              ON b~pmp_scope = d~pmp_scope
"      BYPASSING BUFFER
"      WHERE a~header_guid = @lv_header_guid
"        AND   d~spras = @sy-langu.

"    IF sy-subrc EQ 0.
"**/- BOC Bug 20525 By SOPABBA
"* Fetch Unique Price change Reason Code
"* Deleting entries with same PMP Scope and PCR code
"      SORT lt_pd_prc_inf BY pmp_scope ASCENDING pcr_code ASCENDING.
"      DELETE ADJACENT DUPLICATES FROM lt_pd_prc_inf COMPARING pmp_scope pcr_code.
"**/- EOC Bug 20525 By SOPABBA
"      lr_so10_name = VALUE #( FOR ls_so10 IN lt_pd_prc_inf
"                                ( sign = 'I' option = 'EQ' low = ls_so10-description ) ).

"      IF lo_common_cls IS NOT BOUND.
"        CREATE OBJECT lo_common_cls.
"      ENDIF.

"*      Calling method to get the SO10 texts
"      lo_common_cls->get_so10_texts( EXPORTING im_so10_names   = lr_so10_name   " SO10 Names
"                                               im_language_key = sy-langu        " Language
"                                     IMPORTING ex_so10_texts   = DATA(lt_so10_names_texts) )." SO10 texts

"      SORT lt_so10_names_texts BY so10_name.

"      LOOP AT lt_pd_prc_inf ASSIGNING FIELD-SYMBOL(<fs_pd_prc_inf>).
"* Pass Measure values to et_entityset
"        IF <fs_pd_prc_inf>-measure_number IS NOT INITIAL
"          OR <fs_pd_prc_inf>-measure_volume IS NOT INITIAL.

"          APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).

"          <fs_entity>-header_guid = <fs_pd_prc_inf>-header_guid.       " Header Guid
"          <fs_entity>-measure_scope = <fs_pd_prc_inf>-pmp_scope_text.  " PMP Scope Description
"          <fs_entity>-pcr_code = <fs_pd_prc_inf>-pcr_code.             " PCR Code
"          IF line_exists( lt_so10_names_texts[ so10_name = <fs_pd_prc_inf>-description ] ).
"* PCR Code Description
"            <fs_entity>-pcr_desc = lt_so10_names_texts[ so10_name = <fs_pd_prc_inf>-description ]-so10_text.
"          ENDIF.
"          <fs_entity>-measure_number = <fs_pd_prc_inf>-measure_number.  " Measure Number
"          <fs_entity>-measure_volume = <fs_pd_prc_inf>-measure_volume.  " Measure Volume
"        ENDIF.

"      ENDLOOP.

"    ENDIF.

  ENDMETHOD.


  METHOD largecontractite_get_entity.

  ENDMETHOD.


  METHOD largecontractite_get_entityset.
    DATA: lv_ctr_guid  TYPE GUID,
          lv_jobstatus TYPE btcstatus,
          lv_resp      TYPE zcl_zfio_mng_ctr_mpc=>ts_largecontractitems.

    lv_ctr_guid = VALUE #( it_key_tab[ name = 'ContractGuid' ]-value OPTIONAL ).

    SELECT SINGLE guid, error, created_at,
                  changed_at, items_total, warnings_total,
                  errors_total, jobname, jobstatus, jobid
      FROM zctr_lcitms
      INTO @DATA(lv_lcitms)
      WHERE pguid EQ @lv_ctr_guid.
    IF sy-subrc IS NOT INITIAL. "NPSCC 31764
      SELECT SINGLE guid, error, created_at,
            changed_at, items_total, warnings_total,
            errors_total, jobname, jobstatus, jobid
        FROM zctr_lcitms
        INTO @lv_lcitms
        WHERE guid EQ @lv_ctr_guid.
      IF sy-subrc IS NOT INITIAL.
        CLEAR lv_lcitms.
      ENDIF.
    ENDIF.
    IF lv_lcitms IS NOT INITIAL.
      CALL FUNCTION 'BP_JOB_STATUS_GET'
        EXPORTING
          jobcount                   = lv_lcitms-jobid
          jobname                    = lv_lcitms-jobname
          read_only_status           = 'X'
        IMPORTING
          status                     = lv_jobstatus
        EXCEPTIONS
          job_doesnt_exist           = 1
          unknown_error              = 2
          parent_child_inconsistency = 3
          OTHERS                     = 4.
      IF sy-subrc IS INITIAL.
        IF lv_jobstatus EQ 'R'. "Running
          lv_lcitms-jobstatus = 'P'. "In Progress
        ENDIF.

        IF lv_jobstatus EQ 'F'. "Finished
          lv_lcitms-jobstatus = 'C'. "Completed
        ENDIF.

        IF lv_jobstatus EQ 'A'. "Aborted
          lv_lcitms-jobstatus = 'F'. "Failed/Cancelled
        ENDIF.
      ENDIF.

      MOVE-CORRESPONDING lv_lcitms TO lv_resp.
      APPEND lv_resp TO et_entityset.
    ENDIF.
  ENDMETHOD.


  METHOD large_ctr_processing.
    "DATA: lt_sel_param TYPE TABLE OF rsparams,
"          wa_indx      TYPE zindx_ctrtb.
"    SELECT SINGLE low,high FROM tvarvc
"          INTO ( @DATA(lv_configured_items) , @DATA(lv_activate) )
"          WHERE name = 'ZFIORI_CTR_ITEM_LIMIT'.
"    IF sy-subrc IS INITIAL AND cs_entity-action <> 'COPY'.
"      DESCRIBE TABLE cs_entity-tocontractitems.
"      IF sy-tfill > lv_configured_items AND lv_activate = abap_true.
"*1.) Stop further processing - Set flag to return control to Fiori
"        ex_return = abap_true.

"*2.) Create conract with header details only -- Object ID generated will be used as key for storing
"*    information in index table
"        cs_entity-lock_ind         = 'B'.
"        DATA(lv_fiori_head) = CONV zfio_ctr_hdr( CORRESPONDING #( cs_entity ) ).
"        IF cs_entity-guid IS INITIAL OR
"           cs_entity-action = 'COPY'.
"          lv_fiori_head-no_items = abap_true.
"        ENDIF.
"        DATA(lo_ctr_app_handle) = NEW zcl_ctr_app_handling( im_fiori_head = CORRESPONDING #( lv_fiori_head )  ).
"        IF cs_entity-guid IS INITIAL OR cs_entity-action = 'COPY'.
"*   Create contract
"          lo_ctr_app_handle->create_contract( ).
"        ELSEIF cs_entity-guid IS NOT INITIAL.
"*   Update contract
"          lo_ctr_app_handle->update_contract( ).
"        ENDIF.
"*3.) Serialize the deep entity data to be stored in an index table
"        cs_entity-object_id        = lo_ctr_app_handle->at_updated_header-object_id.
"        cs_entity-guid             = lo_ctr_app_handle->at_updated_header-guid.
"        cs_entity-toreturnmessages = lo_ctr_app_handle->at_return_msgs.
"        TRY.
"            CALL TRANSFORMATION id_indent SOURCE user = cs_entity RESULT XML DATA(lv_serialized_data).
"          CATCH cx_root INTO DATA(lx_root).
"            DATA(lv_text)  = lx_root->get_longtext( ).
"            DATA(lv_text1) = lx_root->get_text( ).
"        ENDTRY.

"        UPDATE bbp_pdhsc
"           SET zlock_ind = 'B'
"         WHERE guid = cs_entity-guid.
"        IF sy-subrc IS INITIAL.
"          COMMIT WORK AND WAIT.
"        ENDIF.
"*4.) Delete any pre-existing instance of this Contract in the db.
"        DATA(lv_ctr_no) = CONV string( lo_ctr_app_handle->at_updated_header-object_id ).
"        lv_ctr_no       = lv_ctr_no && '_H_INS'.
"        SELECT SINGLE id
"             FROM zindx_ctrtb
"             INTO @DATA(lv_unqid)
"            WHERE relid = 'Z1'
"              AND id = @lv_ctr_no.
"        IF sy-subrc IS INITIAL.
"          DELETE FROM DATABASE zindx_ctrtb(z1) ID lv_unqid.
"          IF sy-subrc IS INITIAL.
"            COMMIT WORK.
"          ENDIF.
"        ENDIF.
"*5.) Store contract deep entity data in index table for contracts
"        IF lo_ctr_app_handle->at_updated_header-object_id IS NOT INITIAL.
"          APPEND VALUE #( selname = 'P_CTRNUM' kind = 'P' sign = 'I' option  = 'EQ'
"                          low = lo_ctr_app_handle->at_updated_header-object_id ) TO lt_sel_param.
"          GET TIME STAMP FIELD DATA(lv_timestamp).
"          DATA(lv_unique_id) = CONV char25(  lo_ctr_app_handle->at_updated_header-object_id
"                                             && '_'
"                                             && CONV string( lv_timestamp ) ).

"          APPEND VALUE #( selname = 'P_CTRKEY' kind = 'P' sign = 'I' option  = 'EQ'
"                              low = lv_unique_id ) TO lt_sel_param.
"          wa_indx-timestamp = lv_timestamp.
"          wa_indx-userid    = sy-uname.
"          EXPORT lv_serialized_data1 FROM lv_serialized_data
"          TO DATABASE zindx_ctrtb(z1)
"          FROM   wa_indx
"          ID lv_unique_id.  "CLIENT sy-mandt -> Removed
"          IF sy-subrc IS INITIAL.
"            COMMIT WORK.
"          ENDIF.
"*6.) Create background job for contract processing via a job
"          DATA: lv_jobname            TYPE tbtcjob-jobname,
"                lv_jobcount           TYPE tbtcjob-jobcount,
"                lv_starttimeimmediate TYPE btch0000-char1 VALUE 'X'.

"          CONCATENATE 'Z' lo_ctr_app_handle->at_updated_header-object_id '_CTR_BKGD_JOB' INTO lv_jobname.

"          CALL FUNCTION 'JOB_OPEN'
"            EXPORTING
"              delanfrep        = ' '
"              jobgroup         = ' '
"              jobname          = lv_jobname
"              sdlstrtdt        = sy-datum
"              sdlstrttm        = sy-uzeit
"            IMPORTING
"              jobcount         = lv_jobcount
"            EXCEPTIONS
"              cant_create_job  = 01
"              invalid_job_data = 02
"              jobname_missing  = 03.
"          IF sy-subrc = 0.
"            SUBMIT zfiori_ctr_bkgd_process
"            WITH SELECTION-TABLE lt_sel_param
"            VIA JOB lv_jobname
"            NUMBER  lv_jobcount
"            AND RETURN.
"*            cs_entity-lock_ind = abap_true.
"            CALL FUNCTION 'JOB_CLOSE'
"              EXPORTING
"                jobcount             = lv_jobcount
"                jobname              = lv_jobname
"                strtimmed            = lv_starttimeimmediate
"                sdlstrtdt            = sy-datum
"                sdlstrttm            = sy-uzeit
"              EXCEPTIONS
"                cant_start_immediate = 01
"                invalid_startdate    = 02
"                jobname_missing      = 03
"                job_close_failed     = 04
"                job_nosteps          = 05
"                job_notex            = 06
"                lock_failed          = 07
"                OTHERS               = 99.
"            IF sy-subrc NE 0.
"              CLEAR lv_starttimeimmediate.
"            ENDIF.
"          ENDIF.
"        ENDIF.
"      ELSE.
"        ex_return = abap_false.
"      ENDIF.
"    ELSE.
"      ex_return = abap_false.
"    ENDIF.
  ENDMETHOD.


  METHOD large_ctr_upd_conditions.
    "DATA: ls_deep_entity TYPE zfio_deep_sel_cond,
"          ls_ctrsave     TYPE zctr_lcitms,
"          ls_pctrsave    TYPE zctr_pcitms,
"          ls_conditions  TYPE string.

"*   Transform data into the internal structure
"    TRY .
"        io_data_provider->read_entry_data(
"          IMPORTING
"            es_data = ls_deep_entity ).
"      CATCH /iwbep/cx_mgw_tech_exception .
"        CLEAR ls_deep_entity.
"    ENDTRY.

"* Boc US# 31882 by SWDENDI
"    SELECT SINGLE process_type
"      FROM crmd_orderadm_h
"      INTO @DATA(lv_process_type)
"      WHERE guid = @ls_deep_entity-guid.
"    IF sy-subrc <> 0.
"      CLEAR lv_process_type.
"    ENDIF.
"    DATA(lv_split_date) = ls_deep_entity-price_split_date.
"* Eoc US# 31882 by SWDENDI

"*   Prepare COMMA separated string for conditions update
"    LOOP AT ls_deep_entity-conditions ASSIGNING FIELD-SYMBOL(<fs_cond>).
"      IF ls_conditions IS INITIAL.
"        ls_conditions = <fs_cond>-cond_type.
"      ELSE.
"        CONCATENATE ls_conditions <fs_cond>-cond_type INTO ls_conditions SEPARATED BY ','.
"      ENDIF.
"    ENDLOOP.

"*   Prepare Timestamp
"    GET TIME STAMP FIELD DATA(ls_stamp).
"* Boc US# 31882 by SWDENDI
"    IF lv_process_type <> 'ZDTL'.
"      SELECT SINGLE *
"        FROM zctr_pcitms
"        INTO ls_pctrsave
"        WHERE guid = ls_deep_entity-guid.
"      IF sy-subrc IS NOT INITIAL.
"        ls_pctrsave-guid = ls_deep_entity-guid.
"        ls_pctrsave-conditions = ls_conditions.
"        ls_pctrsave-price_split_date = lv_split_date.
"      ELSE.
"        CLEAR ls_pctrsave-conditions.
"        ls_pctrsave-conditions = ls_conditions.
"        ls_pctrsave-price_split_date = lv_split_date.
"      ENDIF.
"*   Update Table
"      MODIFY zctr_pcitms FROM ls_pctrsave.
"      IF sy-subrc IS INITIAL.
"        COMMIT WORK.
"      ENDIF.
"    ELSE.
"* Boc US# 31882 by SWDENDI

"*   Check if there is exisiting data for given contract
"      SELECT SINGLE * FROM zctr_lcitms
"                         INTO ls_ctrsave
"                         WHERE guid = ls_deep_entity-guid.
"      IF sy-subrc IS NOT INITIAL.
"        ls_ctrsave-guid = ls_deep_entity-guid.
"        ls_ctrsave-conditions = ls_conditions.
"        ls_ctrsave-created_at = ls_stamp.
"*        ls_ctrsave-changed_at = ls_stamp.
"      ELSE.
"        CLEAR ls_ctrsave-conditions.
"        ls_ctrsave-conditions = ls_conditions.
"*        ls_ctrsave-changed_at = ls_stamp.
"      ENDIF.

"      ls_ctrsave-price_split_date = lv_split_date. "NPSCC 32139 Price Split

"*   Update Table
"      MODIFY zctr_lcitms FROM ls_ctrsave.
"      IF sy-subrc IS INITIAL.
"        COMMIT WORK.
"      ENDIF.
"    ENDIF. "US# 31882 by SWDENDI
"    er_deep_entity = ls_deep_entity.

  ENDMETHOD.


  METHOD lcselectedcondit_get_entityset.
    "TYPES: BEGIN OF ty_condkey,
"             cond_type TYPE kschl,
"           END OF  ty_condkey.

"    DATA: lt_filters     TYPE /iwbep/t_mgw_select_option,
"          lt_cond        TYPE STANDARD TABLE OF ty_condkey,
"          lv_guid        TYPE GUID,
"          lv_attr_single TYPE bbp_attr_list,
"          lv_dft_single  TYPE bbps_attr_single,
"          lr_cnd_type    TYPE RANGE OF /sapcnd/cond_type,
"          lv_user_id     TYPE baluser.

"    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

"    lv_guid = VALUE #( lt_filters[ property = 'GUID' ]-select_options[ 1 ]-low OPTIONAL ).

"* Boc US# 31880 by SWDENDI
"    SELECT SINGLE process_type, zplantassign_ind
"      FROM crmd_orderadm_h AS a
"      INNER JOIN bbp_pdhsc AS b ON a~guid = b~guid
"      INTO @DATA(ls_process_type)
"      WHERE a~guid = @lv_guid.
"    IF sy-subrc <> 0.
"      CLEAR ls_process_type.
"    ENDIF.
"    IF ls_process_type-process_type = 'ZDTL'.
"* Eoc US# 31880 by SWDENDI

"      SELECT SINGLE  * FROM zctr_lcitms
"             INTO @DATA(ls_ctr)
"             WHERE guid EQ @lv_guid.
"      IF sy-subrc IS INITIAL.
"        SPLIT ls_ctr-conditions_db AT ',' INTO TABLE DATA(lt_condstr).
"        LOOP AT lt_condstr ASSIGNING FIELD-SYMBOL(<fs_condstr>).
"          APPEND INITIAL LINE TO lt_cond ASSIGNING FIELD-SYMBOL(<fs_cond>).
"          <fs_cond>-cond_type = <fs_condstr>.
"        ENDLOOP.
"      ENDIF.
"* Boc US# 31880 by SWDENDI
"    ELSE.

"      SELECT low, high
"        FROM tvarvc
"        WHERE name = 'ZCTR_REFERENCE_TYPE'
"        INTO TABLE @DATA(lt_ref_type).
"      IF sy-subrc = 0.
"        DATA(lv_ref_type) = VALUE #( lt_ref_type[ low = ls_process_type-process_type  ]-high OPTIONAL ).
"      ENDIF.
"      IF lv_ref_type = 'NPM' AND ls_process_type-zplantassign_ind = 'H'.
"        SELECT kschl AS cond_type
"          FROM crmd_orderadm_i AS itm
"          INNER JOIN bbp_pdigp AS del ON itm~guid = del~guid AND del~del_ind = @abap_false
"          INNER JOIN /1cn/cbpsap016 AS con ON itm~guid = con~bbp_item_guid AND con~release_status = @abap_false
"          WHERE itm~header = @lv_guid
"          INTO TABLE @lt_cond.
"        IF sy-subrc <> 0.
"          CLEAR lt_cond.
"        ENDIF.
"      ELSE.
"        SELECT kschl AS cond_type
"          FROM crmd_orderadm_i AS itm
"          INNER JOIN bbp_pdigp AS del ON itm~guid = del~guid AND del~del_ind = @abap_false
"          INNER JOIN /1cn/cbpsap068 AS con ON itm~guid = con~bbp_item_guid AND con~release_status = @abap_false
"          WHERE itm~header = @lv_guid
"          INTO TABLE @lt_cond.
"        IF sy-subrc <> 0.
"          CLEAR lt_cond.
"        ENDIF.
"      ENDIF.

"      SORT lt_cond BY cond_type ASCENDING.
"      DELETE ADJACENT DUPLICATES FROM lt_cond COMPARING cond_type.
"      DELETE lt_cond WHERE cond_type = 'TTPR' OR cond_type = 'TNBP' OR cond_type = 'TPWR'.
"    ENDIF.
"* Eoc US# 31880 by SWDENDI
"    IF lt_cond[] IS NOT INITIAL.
"      SELECT globus_id, kschl AS cond_type, price_effective,
"             krech AS calculation_type,
"             condition_category AS cond_category, category_desc AS cond_category_desc,
"             description_uc AS price_cond_long_text, description AS condition_text, fixed_currency
"            FROM zcond_det
"            FOR ALL ENTRIES IN @lt_cond
"            WHERE kschl EQ @lt_cond-cond_type
"            INTO TABLE @DATA(lt_cond_sel).
"      IF sy-subrc IS INITIAL.
"        LOOP AT lt_cond_sel ASSIGNING FIELD-SYMBOL(<fs_cond_sel>).
"          APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_output>).
"          MOVE-CORRESPONDING <fs_cond_sel> TO <fs_output>.
"**          IF lv_process_type <> 'ZDTL'. " US# 31882 by SWDENDI
"**            <fs_output>-price_split_date = ls_pctr-price_split_date.
"**          ENDIF.
"          IF <fs_output>-price_effective EQ 'N'.
"            <fs_output>-price_effective = 'no'.
"          ELSE.
"            <fs_output>-price_effective = 'yes'.
"          ENDIF.

"          IF <fs_output>-calculation_type = 'A'.                                           " Venky
"            <fs_output>-calculation_type = 'per'.
"          ELSE.
"            <fs_output>-calculation_type = 'abs'.
"          ENDIF.
"          <fs_output>-guid = lv_guid.
"          <fs_output>-existing = 'X'.
"        ENDLOOP.

"*       Preserve Sequence - Overhead
"        DATA(lt_cond_temp) = et_entityset[].
"        SORT lt_cond_temp BY cond_type.
"        REFRESH et_entityset.
"        LOOP AT lt_cond ASSIGNING <fs_cond>.
"          ASSIGN lt_cond_temp[ cond_type = <fs_cond>-cond_type ] TO FIELD-SYMBOL(<fs_unsorted>).
"          IF <fs_unsorted> IS ASSIGNED.
"            APPEND <fs_unsorted> TO et_entityset.
"            UNASSIGN <fs_unsorted>.
"          ENDIF.
"        ENDLOOP.
"      ENDIF.
"    ELSE.
"      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception.
"    ENDIF.
  ENDMETHOD.


  METHOD mass_change_deep_entity.
*&--------------------------------------------------------------------&*
*& Date:        03-July-2019                                          &*
*& Responsible: Infosys                                               &*
*& Developer:   VENKY                                                 &*
*& Description: Changes done for                                      &*
*&              Mass change deep entity                               &*
*&--------------------------------------------------------------------&*
   " DATA: ls_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_mass_change_deep_entity,
"          lt_mass_data   TYPE STANDARD TABLE OF zfio_pd_mass_change.

"****Transform data into the internal structure************
"    TRY .
"        io_data_provider->read_entry_data(
"          IMPORTING
"            es_data = ls_deep_entity ).
"      CATCH /iwbep/cx_mgw_tech_exception .
"        CLEAR ls_deep_entity.
"    ENDTRY.

"    IF ls_deep_entity-tocontractheader IS NOT INITIAL.

"*    ls_mass_data = VALUE #( FOR ls_data IN ls_deep_entity-tocontractheader
"*                                ( object_id = ls_data-object_id
"*                                  header_guid = ls_data-guid
"*                                  payment_term_flag = ls_deep_entity-pack_term_flag
"*                                  payment_term_flag = ls_deep_entity-pack_term_flag
"*                                  payment_term_flag = ls_deep_entity-pack_term_flag
"      LOOP AT ls_deep_entity-tocontractheader ASSIGNING FIELD-SYMBOL(<fs_doc>).

"        APPEND INITIAL LINE TO lt_mass_data ASSIGNING FIELD-SYMBOL(<fs_mass_data>).
"        <fs_mass_data> = CORRESPONDING #( ls_deep_entity ).
"        <fs_mass_data>-object_id = <fs_doc>-object_id.
"        <fs_mass_data>-header_guid = <fs_doc>-guid.

"      ENDLOOP.

"      NEW zcl_search_help_and_info( )->mass_change_docs(
"        EXPORTING im_object_type = 'BUS2000113'
"                  im_mass_data   = lt_mass_data[] ).

"      er_deep_entity = ls_deep_entity.

"    ENDIF.

  ENDMETHOD.


  METHOD multipleplantsse_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 23-Jan-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Swathi Dendi(SWDENDI)                                &*
*& Description: NPSCC-25057- Part View - Floorplan                   &*
*---------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
* Data declaration
**&--------------------------------------------------------------------&*
    "DATA: lv_itemguid  TYPE GUID.
"*&--------------------------------------------------------------------&*
"*fetch contract Item guid
"*&--------------------------------------------------------------------&*
"    lv_itemguid = COND #( WHEN line_exists( it_key_tab[ name = 'ItemGuid' ] ) THEN
"                              it_key_tab[ name = 'ItemGuid' ]-value ).

"    IF lv_itemguid IS NOT INITIAL.
"      SELECT contract_item_guid AS itemguid,
"             plant AS plantno
"        FROM zv_ctr_itm_plant
"        WHERE contract_item_guid = @lv_itemguid
"        INTO TABLE @DATA(lt_plants).
"      IF sy-subrc EQ 0.
"        SORT lt_plants BY plantno.
"        et_entityset = VALUE #( FOR ls_entity IN lt_plants
"                              ( itemguid = ls_entity-itemguid
"                                plantno  = ls_entity-plantno ) ).
"      ENDIF.
"    ENDIF.

  ENDMETHOD.


  METHOD packtermsset_get_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Feb-2018                                           &*
*& Description: US#3007:                                              &*
*&              Get the pack term details with short and long texts   &*
*& Transport  : DSQK901689                                            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
**"=====================================================================
**& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
**& Created    : 26-Feb-2018                                          &*
**& Description: Changes done for SP31-US#3008                        &*
**&              Define packaging + return terms for PM contracts     &*
**&              on item level and Plant level                        &*
**&-------------------------------------------------------------------&*

    "DATA: lo_ctr_cls   TYPE REF TO zcl_contract_app,
"          lv_pack_term TYPE zpack_term,
"          lt_details   TYPE zcl_fio_manage_po_mpc=>tt_packterms.

"    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

"*   Packaging term
"      IF <fs_key_tab>-name = 'PacktermKey'.

"        lv_pack_term = <fs_key_tab>-value.

"      ENDIF.

"    ENDLOOP.

"    CREATE OBJECT lo_ctr_cls.

"* Call method to get the pack term details
"    lo_ctr_cls->get_all_pack_terms(
"                      EXPORTING im_pack_term         = lv_pack_term
"                      IMPORTING ex_pack_term_details = lt_details ).

"    IF lt_details IS NOT INITIAL.

"      er_entity = lt_details[ 1 ].

"    ENDIF.

  ENDMETHOD.


  METHOD packtermsset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Feb-2018                                           &*
*& Description: US#3007:                                              &*
*&              Get the pack term details with short and long texts   &*
*& Transport  : DSQK901689                                            &*
*&--------------------------------------------------------------------&*
**"=====================================================================
**& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
**& Created    : 26-Feb-2018                                          &*
**& Description: Changes done for SP31-US#3008                        &*
**&              Define packaging + return terms for PM contracts     &*
**&              on item level and Plant level                        &*
**&-------------------------------------------------------------------&*

"*&-------------------------DATA DECLARATIONS---------------------------*
"    DATA: lo_ctr_cls       TYPE REF TO zcl_contract_app,            " CTR Class
"          ls_select_option TYPE /iwbep/s_cod_select_option,              " Filter
"          lt_select_key    TYPE TABLE OF /iwbep/s_cod_select_option,      " Filter
"          lv_valid_from    TYPE zstart_date,                        " Valid From
"          lv_valid_to      TYPE zdate ,                             " Valid To
"          lv_packterm_key  TYPE zpack_term.
"*&---------------------------------------------------------------------*


"*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
"    me->do_cache_entity_set(
"      EXPORTING
"        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
"      CHANGING
"        es_response_context     = es_response_context   " Feed request response information (EntitySet)
"    ).
"***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

"*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

"* Looping filter table
"    LOOP AT it_filter_select_options ASSIGNING FIELD-SYMBOL(<fs_filter>).

"*   Get the valid from date
"      IF <fs_filter>-property = 'ValidityFrom' AND
"         <fs_filter>-select_options IS NOT INITIAL.

"        ls_select_option = <fs_filter>-select_options[ 1 ].

"        lv_valid_from = ls_select_option-low.

"*   Get the valid to date
"      ELSEIF <fs_filter>-property = 'ValidityTo' AND
"             <fs_filter>-select_options IS NOT INITIAL.

"        ls_select_option = <fs_filter>-select_options[ 1 ].

"        lv_valid_to = ls_select_option-low.

"      ELSEIF <fs_filter>-property = 'PackTermKey' AND
"         <fs_filter>-select_options IS NOT INITIAL.

"        lt_select_key = <fs_filter>-select_options[].

"        lv_packterm_key = ls_select_option-low.

"      ENDIF.

"    ENDLOOP.

"    CREATE OBJECT lo_ctr_cls.

"* Call method to get the pack term details
"    lo_ctr_cls->get_all_pack_terms(
"                      EXPORTING im_valid_from        = lv_valid_from
"                                im_valid_to          = lv_valid_to
"                                im_search_string     = iv_search_string
"                      IMPORTING ex_pack_term_details = et_entityset ).

"    DELETE et_entityset WHERE packterm_key NOT IN lt_select_key.

"*/.. Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.


  ENDMETHOD.


  METHOD partnof4set_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 23-Jan-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Swathi Dendi(SWDENDI)                                &*
*& Description: NPSCC-26216- Part View - Filters for Plant and Part  &*
*---------------------------------------------------------------------*

    "DATA: lv_where_cond    TYPE string,
"          lv_search_string TYPE string,
"          lv_es1           TYPE string,
"          rt_part          TYPE RANGE OF crmt_ordered_prod_db,
"          rt_printmatnr    TYPE RANGE OF crmt_ordered_prod_db,
"          rt_desc          TYPE RANGE OF comt_prshtextx,
"          rt_itemcodedesc  TYPE RANGE OF comt_prshtextx,
"          rt_itemcodetype  TYPE RANGE OF zitemcode_type,
"          rt_es1           TYPE RANGE OF string, "Zes1,
"          rt_es2           TYPE RANGE OF string, "Zes2.
"          lv_cond          TYPE string.

"    IF iv_search_string IS NOT INITIAL.

"      lv_search_string = to_upper( |*| && iv_search_string && |*| ).
"      rt_part  = VALUE #( ( sign = 'I' option = 'CP' low = lv_search_string ) ).  " NPSCC 29402_SOPABBA
"      CONDENSE lv_search_string NO-GAPS.

"      rt_part  = VALUE #( BASE rt_part ( sign = 'I' option = 'CP' low = lv_search_string ) ).

"      SPLIT iv_search_string AT '' INTO DATA(lv_part) lv_es1.
"      IF lv_es1 IS NOT INITIAL.
"        rt_part  = VALUE #( BASE rt_part ( sign = 'I' option = 'EQ' low = lv_part ) ).
"*        rt_es1  = VALUE #( ( sign = 'I' option = 'CP' low = lv_es1 ) ). " Bug# 28130 by SWDENDI
"      ENDIF.
"      SORT rt_part BY low.
"      DELETE ADJACENT DUPLICATES FROM rt_part COMPARING low.
"*      lv_cond = |{ 'product_id IN @rt_part' } { ' OR es1 IN @rt_es1' } { ' OR es2 IN @rt_es2 ' }|.

"    ELSEIF it_filter_select_options IS NOT INITIAL.
"      rt_part  = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'ProductId' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = 'CP'
"                              low    = to_upper( ls_select_option-low && |*| )
"                              high   = to_upper( ls_select_option-high && |*| ) ) ).


"      LOOP AT rt_part ASSIGNING FIELD-SYMBOL(<fs_part>).
"        CONDENSE <fs_part>-low NO-GAPS.
"        CONDENSE <fs_part>-high NO-GAPS.
"      ENDLOOP.

"      rt_es1 = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'Es1' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = 'CP'
"                              low    = |*| && |{ ls_select_option-low }| && |*| ) ).
"      rt_es2 = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'Es2' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = 'CP'
"                              low    = |*| && |{ ls_select_option-low }| && |*| ) ).
"      rt_itemcodetype = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'Itemcodetype' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = ls_select_option-option
"                              low    = ls_select_option-low
"                              high   = ls_select_option-high ) ).
"      rt_desc  = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'ShortText' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = 'CP' "ls_select_option-option
"                              low    = to_upper( |*| && ls_select_option-low && |*| ) ) ).
"*                              high   = to_upper( |*| && ls_select_option-high && |*| ) ) ).
"      rt_itemcodedesc  = VALUE #( FOR ls_filter IN it_filter_select_options WHERE ( property = 'Itemcodetypedesc' )
"                        FOR ls_select_option IN ls_filter-select_options
"                            ( sign   = ls_select_option-sign
"                              option = 'CP' "ls_select_option-option
"                              low    = to_upper( |*| && ls_select_option-low && |*| ) ) ).
"*                              high   = to_upper( |*| && ls_select_option-high && |*| ) ) ).

"*      lv_cond = |{ ' product_id IN @rt_part ' } { ' AND short_text_up IN @rt_desc ' } { ' AND itemcodetypedesc IN @rt_itemcodedesc ' }|.
"*      lv_cond = |{ lv_cond } { ' AND es1 IN @rt_es1 ' } { ' AND es2 IN @rt_es2 ' }|.

"    ELSE.

"      " When there are no filter, it is meaning less to show first 100 parts always out of 12 Milion parts
"      RETURN.

"    ENDIF.

"    SORT rt_part BY low.
"    DELETE ADJACENT DUPLICATES FROM rt_part COMPARING low.

"    DATA(lv_rows) = is_paging-top + is_paging-skip.

"    IF lv_rows IS INITIAL.
"      lv_rows = 20.
"    ENDIF.

"    SELECT a~product_guid AS part_guid ,
"           a~ordered_prod ,
"           a~root_matnr AS product_id,
"           a~es1,
"           a~es2,
"           a~itemcodetype,
"           a~itemcodedesc AS itemcodetypedesc,
"           a~pritnmatnr AS print_product_id,
"           a~short_text   AS   short_text
"           FROM zparts_char_cds AS a
"           WHERE a~root_matnr IN @rt_part
"            AND a~itemcodetype IN @rt_itemcodetype
"            AND a~itemcodedesc IN @rt_itemcodedesc
"            AND a~es1 IN @rt_es1
"            AND a~es2 IN @rt_es2
"            AND a~shtext_large IN @rt_desc
"          ORDER BY a~ordered_prod ASCENDING
"          INTO TABLE @DATA(lt_parts)
"          UP TO @lv_rows ROWS.

"    IF sy-subrc EQ 0.
"      et_entityset = CORRESPONDING #( lt_parts ).
"    ENDIF.


"*    ELSE.

"*      TRY.
"*          DATA(lv_where) = cl_shdb_seltab=>combine_seltabs( it_named_seltabs = VALUE #(
"*                     ( name = 'PRODUCT_ID' dref = REF #( rt_part[] ) )
"*                     ( name = 'SHORT_TEXT_UP' dref = REF #( rt_desc[] ) )
"*                     ( name = 'ITEMCODETYPE' dref = REF #( rt_itemcodetype[] ) )
"*                     ( name = 'ITEMCODETYPEDESC' dref = REF #( rt_itemcodedesc[] ) )
"*                     ( name = 'ES1' dref = REF #( rt_es1[] ) )
"*                     ( name = 'ES2' dref = REF #( rt_es2[] ) )
"*                     ) ) .
"*        CATCH cx_shdb_exception INTO DATA(lv_excep).
"*          lv_excep->get_text( ).
"*      ENDTRY.
"*
"*      SELECT * FROM Zpartno_f4_v( p_where_cond = @lv_where )
"*        WHERE (lv_cond)
"*        INTO TABLE @DATA(lt_entity)
"*        UP TO @lv_rows ROWS.
"*      IF sy-subrc EQ '0'.
"*        et_entityset = CORRESPONDING #( lt_entity ).
"*      ENDIF.

"*    SELECT part_guid, ordered_prod,product_id, short_text,
"*      short_text_up, es1, es2, itemcodetype, itemcodetypedesc, print_product_id
"*      FROM Zparts_f4
"*      WHERE (lv_where)
"*      ORDER BY ordered_prod ASCENDING
"*      INTO TABLE @DATA(lt_entityset)
"*      UP TO @lv_rows ROWS.
"*    IF sy-subrc EQ '0'.
"*      et_entityset = CORRESPONDING #( lt_entityset ).
"*    ENDIF.
"*
"*    ENDIF.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.
"    ENDIF.


  ENDMETHOD.


  METHOD parttoolingf4set_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Ashvin Shenvi (SHENVIA)                     &*
*& Created    : 29-May-2020                                           &*
*& Description: To get f4 help for part tooling                       &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*
    DATA : lt_dd07v  TYPE TABLE OF dd07v,
           ls_entity TYPE zfio_ctr_part_tooling.

* Read the Domain values
    CALL FUNCTION 'DDUT_DOMVALUES_GET'
      EXPORTING
        name          = 'ZTOOLING'
*       LANGU         = SY-LANGU
      TABLES
        dd07v_tab     = lt_dd07v
      EXCEPTIONS
        illegal_input = 1
        OTHERS        = 2.

    IF sy-subrc EQ 0 AND lt_dd07v IS NOT INITIAL.
* Pass the domain values to the output structure.
      LOOP AT lt_dd07v ASSIGNING FIELD-SYMBOL(<fs_dd07v>).
        ls_entity-tool_priority = <fs_dd07v>-domvalue_l.
        ls_entity-tool_desc = <fs_dd07v>-ddtext.
        APPEND ls_entity TO et_entityset.
        CLEAR ls_entity.
      ENDLOOP.

    ENDIF.
  ENDMETHOD.


  METHOD partviewset_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 23-Jan-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Swathi Dendi(SWDENDI)                                &*
*& Description: NPSCC-25057- Part View - Floorplan                   &*
*---------------------------------------------------------------------*
*---------------------------------------
*&  Data Declarations
*---------------------------------------
    "DATA: lt_sort_order    TYPE abap_sortorder_tab.
"* BOC by SRINIV for NPSCC-32221 <US Desc - Performance Optimization : Show error message pop up if no filters are passed in the part view tab - page1  >
"    DATA(lv_filter_count) = lines( it_filter_select_options ).
"    IF lv_filter_count < 2.
"      RETURN.
"    ENDIF.
"* EOC by SRINIV for NPSCC-32221 <US Desc - Performance Optimization : Show error message pop up if no filters are passed in the part view tab - page1  >
"* Fetch part list
"    NEW zcl_contract_app( )->get_partview_list(
"     EXPORTING
"       it_filter_options = it_filter_select_options
"       im_search_string  = iv_search_string
"       is_paging         = is_paging
"     IMPORTING
"       et_part_list      = DATA(lt_entityset)
"       ev_count          = DATA(lv_count) ).

"    et_entityset = CORRESPONDING #( lt_entityset ).

"* Sorting
"    DATA(lt_orderby) = io_tech_request_context->get_orderby( ).
"    IF lt_orderby IS NOT INITIAL.
"      LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
"        IF <fs_orderby>-order EQ 'desc'.
"          APPEND VALUE #( descending = 'X' name = <fs_orderby>-property ) TO lt_sort_order.
"        ELSE.
"          APPEND VALUE #( name = <fs_orderby>-property ) TO lt_sort_order.
"        ENDIF.
"      ENDLOOP.
"      SORT et_entityset BY (lt_sort_order).
"    ENDIF.

"**Paging  "Already handling in AMDP
"    IF lv_count IS NOT INITIAL.
"      es_response_context-inlinecount = lv_count.
"    ELSE.
"      es_response_context-inlinecount = lines( et_entityset ).
"    ENDIF.

"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.
"    ENDIF.

  ENDMETHOD.


  METHOD partzgsinfoset_get_entityset.
*&-------------------------------------------------------------------&*
*& Date       : 30-Sep-2020                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Swathi Dendi(SWDENDI)                                &*
*& Description: NPSCC-30893- PC Item Mass Change: Enhance with       &*
*&              Latest ZGS feature                                   &*
*---------------------------------------------------------------------*

    "DATA: lv_prod_det TYPE string,
"          lt_prod     TYPE TABLE OF comt_product_id.

"    lv_prod_det = VALUE #( it_filter_select_options[ property = 'OrderedProd' ]-select_options[ 1 ]-low OPTIONAL ).

"    SPLIT lv_prod_det AT ',' INTO TABLE lt_prod.

"    DATA(rt_prod) = VALUE comt_product_id_range_tab( FOR ls_prod IN lt_prod
"                                                     ( sign = 'I' option = 'EQ'  low = ls_prod ) ).
"    SORT rt_prod BY low ASCENDING.
"    DELETE ADJACENT DUPLICATES FROM rt_prod COMPARING low.

"    IF rt_prod IS NOT INITIAL.
"      SELECT product_id, char_value
"        FROM zparts_char
"        INTO TABLE @DATA(lt_zgs_info)
"        WHERE char_name = '20'
"        AND product_id IN @rt_prod.
"      IF sy-subrc <> 0 .
"        CLEAR lt_zgs_info.
"      ENDIF.
"      et_entityset = VALUE #( FOR ls_part IN rt_prod
"                             ( ordered_prod = ls_part-low
"                               zgs = VALUE #( lt_zgs_info[ product_id = ls_part-low ]-char_value OPTIONAL ) ) ).
"    ENDIF.
  ENDMETHOD.


  METHOD part_view_mass_change_deep_ent.
*&--------------------------------------------------------------------&*
*& Date:        22-04-2020                                            &*
*& Responsible: Infosys                                               &*
*& Developer:   KAUSING                                               &*
*& Description: Changes done for                                      &*
*&              Part view Mass change deep entity                     &*
*&--------------------------------------------------------------------&*
    DATA:
    ls_deep_entity TYPE zcl_zfio_mng_ctr_mpc_ext=>ts_pv_mass_change_deep_entity.

*&********************************************************************&*
****Transform data into the internal structure**************************
*&********************************************************************&*
    TRY .
        io_data_provider->read_entry_data(
          IMPORTING
            es_data = ls_deep_entity ).
      CATCH /iwbep/cx_mgw_tech_exception .
        CLEAR ls_deep_entity.
    ENDTRY.


    IF ls_deep_entity IS NOT INITIAL.

*   Call method to do Part View Mass Change
      NEW zcl_contract_app( )->part_view_mass_change(
         EXPORTING is_input_data = ls_deep_entity ).

    ENDIF.

  ENDMETHOD.


  METHOD paymenttermset_get_entity.
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tanya Sachan (TSACHAN)                                &*
*& Description: Changes done for US#2969                              &*
*&              Passing the payment term long text to the entity      &*
*----------------------------------------------------------------------*

************************************************************************
****** Begin of Change by  <TSACHAN> <US#2969>
    "DATA: lo_cls        TYPE REF TO zcl_carry_out_sourcing,
"          lv_longtext   TYPE string,
"          lv_payment_id TYPE dzterm,
"          lt_key_tab    LIKE it_key_tab.

"*   Sort key tab by name
"    SORT lt_key_tab BY name.

"*  Fetch payment term from key tab
"    READ TABLE it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>)
"              WITH KEY name = 'PmntTrm' BINARY SEARCH.
"    IF sy-subrc = 0.
"      lv_payment_id = <fs_key_tab>-value.
"    ENDIF.

"    IF lo_cls IS NOT BOUND.
"      CREATE OBJECT lo_cls.
"    ENDIF.

"* BOC by SHENVIA for US# 28135
"**   fetch the longtext for the term
"*    lo_cls->get_payterm_incoterm_longtext(
"*                  EXPORTING im_payment_id = lv_payment_id
"*                  IMPORTING ex_payment_longtext = lv_longtext ).
"* EOC by SHENVIA for US# 28135

"    SELECT SINGLE * FROM zpterm_date
"      INTO @DATA(lw_data)
"      WHERE payment_term = @lv_payment_id.
"    IF sy-subrc = 0.
"      er_entity-pmnttrm    = lw_data-payment_term.
"      er_entity-shrtdesc   = lw_data-pterm_text.
"*      er_entity-longdesc   = lv_longtext.  " By SHENVIA for US# 28135
"      er_entity-valid_from = lw_data-valid_from.
"      er_entity-valid_to   = lw_data-valid_to.
"    ENDIF.

  ENDMETHOD.


  METHOD paymenttermset_get_entityset.
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        29-NOV-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:    (TSACHAN)                                            &*
*& Description: Changes done for US#2969                              &*
*&              Passing the payment term long text to the entity      &*
*----------------------------------------------------------------------*
*/..Data Declaration
    "DATA :lv_counter TYPE p VALUE IS INITIAL,
"          lv_guid1   TYPE /sappssrm/_guid VALUE IS INITIAL.

"***********************************************************************
"*/..Data Declaration

"************************************************************************
"    DATA: lt_so10_names   TYPE RANGE OF tdobname,
"          lo_common_class TYPE REF TO zcl_search_help_and_info.

"*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
"    me->do_cache_entity_set(
"      EXPORTING
"        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
"      CHANGING
"        es_response_context     = es_response_context   " Feed request response information (EntitySet)
"    ).
"***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

"*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

"    CREATE OBJECT lo_common_class.
"    IF iv_search_string IS NOT INITIAL.
"      CONCATENATE '*' iv_search_string '*' INTO DATA(lv_search_string).
"    ENDIF.

"**{ Begin Of Change US#13378 SOPABBA
"    DATA rt_pmnt_term TYPE RANGE OF bbp_md_zterm.

"    LOOP AT it_filter_select_options ASSIGNING FIELD-SYMBOL(<fs_filters>).
"      IF <fs_filters>-property EQ 'PmntTerm'.
"        rt_pmnt_term = VALUE #( FOR ls_sel_opt IN <fs_filters>-select_options
"                                ( sign   = ls_sel_opt-sign
"                                  option = ls_sel_opt-option
"                                  low    = ls_sel_opt-low ) ).
"      ENDIF.
"    ENDLOOP.
"**} End Of Change US#13378 SOPABBA
"*   Get the entries
"    SELECT a~payment_term,
"           a~pterm_text,
"           a~valid_from,
"           a~valid_to
"      FROM zpterm_date AS a
"      INNER JOIN bbp_payterm AS b
"      ON a~payment_term = b~zterm
"      INTO TABLE @DATA(lt_pterm)
"      BYPASSING BUFFER
"*      WHERE a~payment_term IS NOT NULL.
"      WHERE a~payment_term IN @rt_pmnt_term.  "US#13378 SOPABBA
"    IF sy-subrc = 0.
"*
"**/.. Below logic is for tile count and result count.
"*      es_response_context-inlinecount = lines( lt_pterm ).
"**/.. Below logic for paging and lazy loading functionality.
"*      IF is_paging IS NOT INITIAL.
"*        IF is_paging-skip EQ 0.
"*          DELETE lt_pterm FROM is_paging-top + 1.
"*        ELSE.
"*          DELETE lt_pterm FROM is_paging-top + is_paging-skip + 1 TO lines( lt_pterm ).
"*          DELETE lt_pterm FROM 1 TO is_paging-skip.
"*        ENDIF.
"*      ENDIF.

"* BOC by SHENVIA for US# 28135
"*      lt_so10_names = VALUE #( FOR ls_pterm IN lt_pterm
"*                              ( sign = 'I' option = 'EQ' low = ls_pterm-payment_term ) ).

"*      lo_common_class->get_so10_texts(
"*        EXPORTING
"*          im_so10_names   = lt_so10_names
"*          im_language_key = sy-langu
"*        IMPORTING
"*          ex_so10_texts   = DATA(lt_so10_texts) ).
"* EOC by SHENVIA for US# 28135

"      LOOP AT lt_pterm ASSIGNING FIELD-SYMBOL(<fs_pterm>).
"        IF lv_search_string IS NOT INITIAL.
"          IF NOT ( <fs_pterm>-payment_term CP lv_search_string OR
"            <fs_pterm>-pterm_text CP lv_search_string ) .
"*          ELSE.
"            CONTINUE.
"          ENDIF.
"        ENDIF.
"        APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<fs_entity>).
"        <fs_entity>-pmnttrm    = <fs_pterm>-payment_term.
"        <fs_entity>-shrtdesc   = <fs_pterm>-pterm_text.
"        lv_counter             = lv_counter + 1.
"        lv_guid1               = lv_guid1 + lv_counter.
"        <fs_entity>-guid       = lv_guid1.
"        <fs_entity>-valid_from = <fs_pterm>-valid_from.
"        <fs_entity>-valid_to   = <fs_pterm>-valid_to.
"* BOC by SHENVIA for US# 28135
"*        IF line_exists( lt_so10_texts[ so10_name = <fs_pterm>-payment_term ] ).
"*          <fs_entity>-longdesc   = lt_so10_texts[ so10_name = <fs_pterm>-payment_term ]-so10_text.
"*        ENDIF.
"* EOC by SHENVIA for US# 28135
"      ENDLOOP.

"*/.. Below logic is for tile count and result count.
"      es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"      IF is_paging IS NOT INITIAL.
"        IF is_paging-skip EQ 0.
"          DELETE et_entityset FROM is_paging-top + 1.
"        ELSE.
"          DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"          DELETE et_entityset FROM 1 TO is_paging-skip.
"        ENDIF.
"      ENDIF.

"    ENDIF.

"*    LOOP AT et_entityset ASSIGNING <fs_entity> WHERE longdesc IS NOT INITIAL.
"*
"*
"*            CALL FUNCTION 'CONVERT_ITF_TO_STREAM_TEXT'
"*          TABLES
"*            itf_text    = li_texts
"*            text_stream = lt_longtext.
"*       LOOP AT lt_longtext INTO ls_longtext.
"*            CALL METHOD cl_abap_string_utilities=>c2str_preserving_blanks
"*              EXPORTING
"*                SOURCE = ls_longtext
"*              IMPORTING
"*                dest   = l_entry.
"*            CONCATENATE ex_payment_longtext l_entry into ex_payment_longtext.
"*          ENDLOOP.
"*
"*    ENDLOOP.

"*    REFRESH : lt_pterm.
"*    CLEAR : lw_pterm, lv_posting_date, ls_header.
"**/..Fetch payment term, text, Payment valid from and to from the table Zpterm_date
"**..and populate to internal table lt_pterm Where payment term is not null../.
"*    SELECT mandt payment_term pterm_text
"*            valid_from valid_to  FROM Zpterm_date
"*           INTO TABLE lt_pterm
"*           WHERE payment_term IS NOT NULL .
"**/..If sy-subrc not equals to 0 refresh the internal table lt_pterm
"*    IF sy-subrc NE 0.
"*      REFRESH lt_pterm.
"*    ELSE.
"**/..Get the payment term details to the structure ls_entity
"*      LOOP AT lt_pterm ASSIGNING FIELD-SYMBOL(<fs_pterm>).
"*        ls_entity-pmnttrm      = <fs_pterm>-payment_term.
"*        ls_entity-shrtdesc     = <fs_pterm>-pterm_text.
"*        lv_counter             = lv_counter + 1.
"*        lv_guid1               = lv_guid1 + lv_counter.
"*        ls_entity-guid         = lv_guid1.
"*        ls_entity-valid_from   = <fs_pterm>-valid_from.
"*        ls_entity-valid_to   = <fs_pterm>-valid_to.
"*
"*
"*************************************************************************
"******* Begin of Insert by  <TSACHAN> <US#2969>
"**/..Get payment term id into local variable lv_payment_id
"*        lv_payment_id = <fs_pterm>-payment_term.
"*        IF lo_cls IS NOT BOUND.
"**/..Create object for the class Zcl_carry_out_sourcing.
"*          CREATE OBJECT lo_cls.
"*        ENDIF.
"**/..Call method get_payterm_incoterm_longtext to get payment long text
"*        lo_cls->get_payterm_incoterm_longtext(
"*                      EXPORTING im_payment_id = lv_payment_id
"*                      IMPORTING ex_payment_longtext = lv_longtext ).
"**/..Get the payment long description into the local work area ls_entity-longdesc
"*        ls_entity-longdesc = lv_longtext.
"******* End of Insert by  <TSACHAN> <US#2969>
"*************************************************************************
"**/..Append the values from ls_entity work area to et_entityset
"*        APPEND ls_entity TO et_entityset.
"*        CLEAR lw_pterm.
"*      ENDLOOP.
"*    ENDIF.
"*
"**/..Concatenate '*' with search string.
"*    CONCATENATE '*' iv_search_string '*' INTO lv_srh_str.
"*    IF iv_search_string IS NOT INITIAL.
"*      CLEAR et_entityset.
"**/..Get payment_term and text into ls_entity work area.
"*      LOOP AT lt_pterm ASSIGNING <fs_pterm>.
"**/..Move the value of payment_term to the work area field ls_entity-pmnttrm
"*        MOVE <fs_pterm>-payment_term TO ls_entity-pmnttrm.
"**/..Move the payment term short description to the work area field ls_entity-shrtdesc
"*        MOVE <fs_pterm>-pterm_text TO ls_entity-shrtdesc.
"**/..Check the payment term with any pattern available
"*        IF <fs_pterm>-payment_term CP lv_srh_str
"*          OR <fs_pterm>-pterm_text CP lv_srh_str.
"*          IF sy-subrc = 0.
"*
"*************************************************************************
"******* Begin of Insert by  <TSACHAN> <US#2969>
"**/..Get payment term value into local variable lv_payment_id.
"*            lv_payment_id = <fs_pterm>-payment_term.
"*
"*            IF lo_cls IS NOT BOUND.
"**/..Create object for the class Zcl_carry_out_sourcing
"*              CREATE OBJECT lo_cls.
"*            ENDIF.
"**/..Call method get_payterm_incoterm_longtext to get payment long text
"*            lo_cls->get_payterm_incoterm_longtext(
"*                          EXPORTING im_payment_id = lv_payment_id
"*                          IMPORTING ex_payment_longtext = lv_longtext ).
"*
"*            ls_entity-longdesc = lv_longtext.
"******* End of Insert by  <TSACHAN> <US#2969>
"*************************************************************************
"**/..Append the values from ls_entity work area to et_entityset
"*            APPEND ls_entity TO et_entityset.
"*
"*          ENDIF.
"*        ENDIF.
"*        CLEAR wa_entity.
"*      ENDLOOP.
"*    ENDIF.

"**/.. Below logic is for tile count and result count.
"*    es_response_context-inlinecount = lines( et_entityset ).
"**/.. Below logic for paging and lazy loading functionality.
"*    IF is_paging IS NOT INITIAL.
"*      IF is_paging-skip EQ 0.
"*        DELETE et_entityset FROM is_paging-top + 1.
"*      ELSE.
"*        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"*        DELETE et_entityset FROM 1 TO is_paging-skip.
"*      ENDIF.
"*
"*    ENDIF.


  ENDMETHOD.


  METHOD plantdistributio_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Tanya Sachan (Tsachan)                     &*
*& Created    : 2017-12-08                                           &*
*& Description: Changes done for SP25-US#2956 (Contract)             &*
*&         This method is to Read all  plants for Header contract    &*
*&                                                                   &*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:                                                             &*
*& Responsible:                                                      &*
*& Developer:                                                        &*
*& Description:                                                      &*
*---------------------------------------------------------------------*
    "DATA : lt_keytab              TYPE /iwbep/t_mgw_name_value_pair,
"           lv_ctr_no              TYPE crmt_object_id_db,
"           lv_ctr_item_no         TYPE bbp_item_no,
"           et_plant_dis           TYPE TABLE OF zfio_ctr_itm_plant_dis,  " INSERT - RKORADA - 15/02/2018 NPSCC 10177
"           lcl_contract_app       TYPE REF TO  zcl_contract_app,
"           lv_transfer_to_ctr_typ TYPE crmt_process_type_db,
"           lv_plant               TYPE bbp_location,      " npscc 24077*09/10/2019
"           lv_ctr_head_guid       TYPE GUID.          "--Insert by  <VMANCHA> <US#8872>

"    CLEAR :lv_ctr_no , lv_ctr_item_no, lv_plant .

"    lt_keytab = it_key_tab .

"    SORT lt_keytab BY name ASCENDING.
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#8872>
"*    READ TABLE lt_keytab  ASSIGNING FIELD-SYMBOL(<fs_keytab>)
"*                                    WITH KEY name = 'ContractId' BINARY SEARCH .
"*    IF sy-subrc EQ 0.
"*      lv_ctr_no = <fs_keytab>-value .

"*  Begin of changes by KASUING*npscc 24077*09/10/2019
"*   Check if it is a case of ctr create from quota app
"    IF line_exists( it_filter_select_options[ property = 'PlantNo' ] ) AND
"      it_filter_select_options[ property = 'PlantNo' ]-select_options[ 1 ]-low IS NOT INITIAL.
"      lv_plant = it_filter_select_options[ property = 'PlantNo' ]-select_options[ 1 ]-low.
"    ENDIF.
"*   End of changes BY KAUSING*npscc 24077*09/10/2019

"*Boc US# 30908 by SWDENDI Transfer of IPS LiAb type contracts - Plants on Item
"    IF line_exists( it_filter_select_options[ property = 'Action' ] ) AND it_filter_select_options[ property = 'Action' ]-select_options[ 1 ]-low EQ 'TRANSFER'.
"      DATA(lv_transfer_flag) = 'T'.
"    ENDIF.
"    IF lv_transfer_flag EQ 'T' AND line_exists( it_filter_select_options[ property = 'ContractType' ] ).
"      lv_transfer_to_ctr_typ = VALUE #( it_filter_select_options[ property = 'ContractType' ]-select_options[ 1 ]-low OPTIONAL ).
"    ENDIF.
"*Eoc US# 30908 by SWDENDI Transfer of IPS LiAb type contracts - Plants on Item

"    READ TABLE lt_keytab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
"                                   WITH KEY name = 'ContractGuid'
"                                   BINARY SEARCH .

"    IF sy-subrc EQ 0 AND <fs_keytab>-value IS NOT INITIAL.
"      lv_ctr_head_guid = <fs_keytab>-value .
"****** End of Insert by  <VMANCHA> <US#8872>
"************************************************************************

"*/.. if the change version document is closed , we need to read from active guid.
"      SELECT SINGLE active_header
"        FROM bbp_pdhgp
"        WHERE guid EQ @lv_ctr_head_guid
"        AND version_type EQ 'C'
"        AND doc_closed EQ 'X'
"        INTO @DATA(lv_active_header).
"      IF sy-subrc EQ 0.
"        lv_ctr_head_guid = lv_active_header.
"      ENDIF.


"      CREATE OBJECT lcl_contract_app .

"      CALL METHOD lcl_contract_app->get_plant_details
"        EXPORTING
"          im_ctr_head_guid       = lv_ctr_head_guid            " Venky 8872
"          im_transfer_flag       = lv_transfer_flag            "US# 30908 by SWDENDI
"          im_transfer_to_ctr_typ = lv_transfer_to_ctr_typ      "US# 30908 by SWDENDI
"        IMPORTING
"          et_plant               = et_plant_dis.

"*     Begin of changes of KAUSING*24077*09/10/2019*
"      IF lv_plant IS NOT INITIAL.
"        DELETE et_plant_dis WHERE plant NE lv_plant.
"        LOOP AT et_plant_dis ASSIGNING FIELD-SYMBOL(<fs_plant_dis>).
"          CLEAR: <fs_plant_dis>-deviation_id, <fs_plant_dis>-deviation_description.
"        ENDLOOP.
"      ENDIF.
"*     End of changes of KAUSING*24077*09/10/2019*

"      MOVE-CORRESPONDING et_plant_dis TO et_entityset.
"    ENDIF.

  ENDMETHOD.


  METHOD plantsearchset_create_entity.


*    DATA: ls_fav                TYPE zbuyer_fav,
*          ls_request_input_data TYPE zcl_zfio_mng_ctr_mpc=>ts_plantsearch,
*          lo_message            TYPE REF TO /iwbep/if_message_container,        " Exception
*          lx_bus_ex             TYPE REF TO /iwbep/cx_mgw_busi_exception,        " Exception
*          lt_message            TYPE bapiret2_t,                                " Internal table for message
*          lw_message            TYPE bapiret2.                                  " Work area for message
** Read data imported from Fiori
*    io_data_provider->read_entry_data( IMPORTING es_data = ls_request_input_data ).
*
*    ls_fav-buyer = ls_request_input_data-logged_in_user.
*    ls_fav-value = ls_request_input_data-plant_no.
*    ls_fav-object_type = 'BUS2000113'.
*    ls_fav-attribute = 'WERKS'.
*
*    AUTHORITY-CHECK OBJECT 'Z_PROQ_CTR'
*             ID 'ACTVT' FIELD '02'.
*    IF sy-subrc <> 0.
** Implement a suitable exception handling here
**      APPEND INITIAL LINE TO ex_bapiret_msgs ASSIGNING <fs_msg>.
**        <fs_msg>-type = 'E'.
**        <fs_msg>-id = 'ZCL_MSG'.
**        <fs_msg>-number = '449'.
*      MESSAGE e449(zcl_msg) INTO DATA(lv_auth_error) WITH 'ZBUYER_FAV'.
*
*      RETURN.
*
*    ENDIF.
*
*
*    IF ls_request_input_data-favorite IS NOT INITIAL.
*      MODIFY zbuyer_fav FROM ls_fav.
*      IF sy-subrc EQ 0.
*        COMMIT WORK.
*      ELSE.
*        lw_message-type       = 'E'.
*        lw_message-message_v1 = ls_fav-value.
*        CONCATENATE TEXT-t07 lw_message-message_v1
*        INTO  lw_message-message SEPARATED BY ':'.
*        APPEND lw_message TO lt_message.
*        CLEAR: lw_message.
*      ENDIF.
*    ELSEIF ls_request_input_data-favorite IS INITIAL.
*      DELETE FROM zbuyer_fav WHERE buyer = ls_fav-buyer
*                                  AND   object_type = ls_fav-object_type
*                                  AND   attribute = 'WERKS'
*                                  AND   value = ls_fav-value.
*      IF sy-subrc EQ 0.
*        COMMIT WORK.
*      ELSE.
*        lw_message-type       = 'E'.
*        lw_message-message_v1 = ls_fav-value.
*        CONCATENATE TEXT-t08 lw_message-message_v1
*        INTO  lw_message-message SEPARATED BY ':'.
*        APPEND lw_message TO lt_message.
*        CLEAR: lw_message.
*      ENDIF.
*    ENDIF.
*
*    IF lt_message IS NOT INITIAL.
*      lo_message = mo_context->get_message_container( ).
*
*      lo_message->add_messages_from_bapi( it_bapi_messages = lt_message ).
*
*      CREATE OBJECT lx_bus_ex
*        EXPORTING
*          message_container = lo_message.
*
*      RAISE EXCEPTION lx_bus_ex.
*    ENDIF.
*
*

  ENDMETHOD.


  METHOD plantsearchset_get_entityset.
*&--------------------------------------------------------------------&*
*& Date:        07-DEC-2017                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tanya Sachan (TSACHAN)                                &*
*& Description: Changes done for US#2956                              &*
*&              Contract Creation: PLANT F4 Help                      &*
*----------------------------------------------------------------------*
*&-------------------------------------------------------------------&*
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date:        01-07-2019                                           &*
*& Responsible: Infosys                                              &*
*& Developer:   Swathi Dendi(SWDENDI)                                &*
*& Description: US# 17252 Filter IPS plants for selection in         &*
*&        contracts and allow plants without configured distribution &*
*---------------------------------------------------------------------*

    "DATA: lo_plant          TYPE REF TO zcl_carry_out_sourcing,
"          lv_buyer_id       TYPE xubname,
"          lv_logged_in_user TYPE uname,
"          lv_bu             TYPE zbu_id,
"          lt_sort_order     TYPE abap_sortorder_tab,
"          ls_sort_order     TYPE abap_sortorder,
"          lt_orderby        TYPE /iwbep/t_mgw_tech_order,
"          lv_attr_list      TYPE bbp_attr_list,
"          lv_dft_single     TYPE bbps_attr_single.


"*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
"*   me->do_cache_entity_set(
"*     EXPORTING
"*       io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
"*     CHANGING
"*       es_response_context     = es_response_context   " Feed request response information (EntitySet)
"*   ).
"***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

"*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
"* BOC by SRINIV for NPSCC-32009
"    READ TABLE it_filter_select_options
"    ASSIGNING FIELD-SYMBOL(<fs_ctr_type>)
"    WITH KEY property = 'ContractType'.
"    IF sy-subrc EQ 0 AND <fs_ctr_type> IS ASSIGNED.
"      DATA(lv_contract_type) = <fs_ctr_type>-select_options[ 1 ]-low.
"    ENDIF.
"* EOC by SRINIV for NPSCC-32009
"* Boc { US# 17252 Filter IPS plants for selection by SWDENDI
"    READ TABLE it_filter_select_options
"      ASSIGNING FIELD-SYMBOL(<fs_filter>)
"      WITH KEY property = 'ResponsibleBuyer'.
"    IF sy-subrc EQ 0.
"      lv_buyer_id = <fs_filter>-select_options[ 1 ]-low.
"      lv_attr_list-attr_id = 'Z_BU'.
"      CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"        EXPORTING
"          iv_user                 = lv_buyer_id
"          iv_attr_single          = lv_attr_list
"        IMPORTING
"          ev_attr_dft_single      = lv_dft_single
"        EXCEPTIONS
"          object_id_not_found     = 1
"          no_attributes_requested = 2
"          attributes_read_error   = 3
"          OTHERS                  = 4.
"      IF sy-subrc IS INITIAL.
"        MOVE: lv_dft_single-value TO lv_bu.
"      ENDIF.
"    ENDIF.
"* Eoc } US# 17252 Filter IPS plants for selection by SWDENDI
"    CREATE OBJECT lo_plant.

"    CALL METHOD lo_plant->plant_f4_help
"      EXPORTING
"        iv_search_string = iv_search_string
"      IMPORTING
"        et_plant_details = et_entityset.                              "--SP32-US#3010- Changed by Nihar

"    IF lv_buyer_id IS NOT INITIAL. " RKORADA / NPSCC-25151 - Page1 plant search should show all plants so that user can search

"***{ BOC - RKORADA - NPSCC-21973  Capability to exclude certain plants from contract user-lead
"      IF sy-sysid NE 'D1Q' AND
"        lv_bu IS NOT INITIAL.
"        DATA(lv_where) = |BU_ID = '{ lv_bu }'|.

"        CALL METHOD zcl_plant_bu=>get_tab_data
"          EXPORTING
"            iv_where = lv_where
"          IMPORTING
"            it_final = DATA(lt_bu_plants).

"        IF lt_bu_plants IS NOT INITIAL.
"          DATA rt_plant TYPE RANGE OF bbp_location.

"          rt_plant = VALUE #( FOR ls_plant IN lt_bu_plants ( sign = 'I' option = 'EQ' low = ls_plant-werks ) ).

"          DELETE et_entityset WHERE plant_no NOT IN rt_plant.

"        ELSE.
"          CLEAR: et_entityset.
"          " No plants for buyer unit.
"          RETURN.
"        ENDIF.

"      ELSEIF sy-sysid EQ 'D1Q'.
"        rt_plant = VALUE #( sign = 'I' option = 'EQ' ( low = '0500' ) ( low = '0100' )  ( low = '0400' ) ( low = '0060' ) ).
"      ELSE.
"        CLEAR: et_entityset.
"        " No Buniess unit found
"        RETURN .
"      ENDIF.
"***} EOC - RKORADA - NPSCC-21973  Capability to exclude certain plants from contract user-lead
"    ENDIF.
"*    SORT et_entityset BY plant_no ASCENDING.
"*    DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING plant_no.

"    lt_orderby = io_tech_request_context->get_orderby( ).
"    IF lt_orderby IS INITIAL.
"      SORT et_entityset BY  plant_no ASCENDING.
"      DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING plant_no.
"    ELSE.
"      LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
"        CLEAR ls_sort_order.
"        IF <fs_orderby>-order EQ 'desc'.
"          ls_sort_order-descending = 'X'.
"        ENDIF.
"        ls_sort_order-name = <fs_orderby>-property.
"        APPEND ls_sort_order TO lt_sort_order.
"      ENDLOOP.
"      SORT et_entityset BY (lt_sort_order).
"      DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING plant_no.
"    ENDIF.

"*"===={BOC-SP32-US#3010--Assign VAT Shiping country on Plant level for Header(NPM)/Items(PM) of CTR - by Nihar_21Feb18

"*  Begin of changes by KAUSING*npscc 23592*Add favorite plants to contracts
"    lv_logged_in_user = VALUE #( it_filter_select_options[ property = 'LoggedInUser' ]-select_options[ 1 ]-low OPTIONAL ).
"    IF lv_logged_in_user IS NOT INITIAL.
"      SELECT value
"        FROM zbuyer_fav
"        INTO TABLE @DATA(lt_fav)
"        WHERE buyer EQ @lv_logged_in_user
"        AND   object_type EQ 'BUS2000113'
"        AND   attribute EQ 'WERKS'.
"      IF sy-subrc IS INITIAL.
"        SORT lt_fav BY value.
"        DATA: lr_fav TYPE RANGE OF werks_d.
"        lr_fav = VALUE #( FOR ls_fav IN lt_fav ( sign = 'I' option = 'EQ' low = ls_fav-value ) ).
"        IF line_exists( it_filter_select_options[ property = 'Favorite' ] ).
"          IF it_filter_select_options[ property = 'Favorite' ]-select_options[ 1 ]-low = 'X' .
"            DELETE et_entityset WHERE plant_no NOT IN lr_fav.
"          ENDIF.
"        ENDIF.
"      ENDIF.
"    ENDIF.
"*  End of changes by KAUSING*npscc 23592*Add favorite plants to contracts
"* BOC Bug NPSCC-28397_Plant selection Issue
"    FREE: rt_plant.
"    rt_plant = VALUE #( FOR ls_entityset IN et_entityset
"                            ( sign = 'I' option = 'EQ' low = ls_entityset-plant_no ) ).
"    IF rt_plant IS NOT INITIAL.

"**      SELECT a~ext_locno,
"**             a~partner_no,
"**             c~vat_ship_country,
"**             e~topdivision,
"**             f~ddtext
"**      FROM bbp_locmap AS a
"**      INNER JOIN Zplant_cus AS c
"**      ON c~werks = a~ext_locno
"**      INNER JOIN Zlegal_cc AS d
"**      ON d~bukrs = a~company_code
"**      INNER JOIN Zdiv_value AS e
"**      ON e~id = d~division
"**      LEFT OUTER JOIN dd07t AS f
"**      ON f~domvalue_l = e~topdivision AND f~ddlanguage EQ @sy-langu
"**      INTO TABLE @DATA(lt_plant_det)
"**      BYPASSING BUFFER
"**      WHERE a~ext_locno IN @rt_plant.
"      SELECT ext_locno, partner_no,vat_ship_country,
"        plant_category, "++ By SRINIV for NPSCC-32009
"        topdivision,ddtext  "Vforge by SWDENDI
"        FROM zvw_plant_f4( p_lang = @sy-langu )
"        INTO TABLE @DATA(lt_plant_det)
"        WHERE ext_locno IN @rt_plant.

"      IF sy-subrc = 0.
"        SORT lt_plant_det BY ext_locno.
"        DELETE ADJACENT DUPLICATES FROM lt_plant_det COMPARING ext_locno.
"        IF lv_contract_type IS NOT INITIAL.
"          IF lv_contract_type = 'ZTRN'.
"            DELETE lt_plant_det WHERE plant_category <> '3'.
"          ELSE.
"            DELETE lt_plant_det WHERE plant_category = '3'.
"          ENDIF.
"        ENDIF.
"      ENDIF.
"      LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_plantdetails>).

"        ASSIGN lt_plant_det[ ext_locno = <fs_plantdetails>-plant_no ] TO FIELD-SYMBOL(<fs_plant_det>).
"        IF sy-subrc IS INITIAL
"          AND <fs_plant_det> IS ASSIGNED.
"          <fs_plantdetails>-vat_ship_country_flag = <fs_plant_det>-vat_ship_country.
"          <fs_plantdetails>-top_div_id    = <fs_plant_det>-topdivision.
"          <fs_plantdetails>-top_div_desc  = <fs_plant_det>-ddtext.
"          <fs_plantdetails>-top_div_desc_full  = |{ <fs_plantdetails>-top_div_desc }( { <fs_plantdetails>-top_div_id } )|.
"          IF line_exists( lt_fav[ value = <fs_plantdetails>-plant_no ] ).
"            <fs_plantdetails>-favorite = 'X'.
"          ENDIF.
"        ELSE.
"          CLEAR <fs_plantdetails>.
"        ENDIF.

"      ENDLOOP.
"      DELETE et_entityset WHERE table_line IS INITIAL.
"    ENDIF.
"* EOC Bug NPSCC-28397_Plant selection Issue
"*    DATA :lv_plant  TYPE bbp_location.
"**../Fetch plant and vat ship country code from the table Zplant_cus
"*    SELECT werks,                               "-- cos of diff data type of WERKS, we are fetching all entries
"*           vat_ship_country
"**           npm_plant_usage
"*    FROM Zplant_cus
"*    INTO TABLE @DATA(lt_vat_country)
"*    WHERE werks IS NOT NULL ORDER BY werks.
"*
"*    IF sy-subrc EQ 0.
"*      SORT lt_vat_country BY werks .
"*      DELETE ADJACENT DUPLICATES FROM lt_vat_country COMPARING werks .
"*** Begin of Changes US# 17021 by SWDENDI
"** Passing Division values to Plant F4 help
"*    ENDIF.
"*
"*    SELECT a~ext_locno,
"*           c~topdivision,
"*           d~ddtext
"*      FROM bbp_locmap AS a
"*      LEFT OUTER JOIN Zlegal_cc AS b
"*      ON b~bukrs = a~company_code
"*      LEFT OUTER JOIN Zdiv_value AS c
"*      ON c~id = b~division
"*      LEFT OUTER JOIN dd07t AS d
"*      ON d~domvalue_l = c~topdivision AND d~ddlanguage EQ @sy-langu  " RKORADA : NPSCC-23993 : 3-Sep-2019
"*      INTO TABLE @DATA(lt_plant_div)
"*      BYPASSING BUFFER
"*      WHERE d~domname = 'ZTOP_DIVISION'.
"*
"*    IF sy-subrc EQ 0 AND lt_plant_div IS NOT INITIAL.
"*      SORT lt_plant_div BY ext_locno.
"*    ENDIF.
"*** End of Changes US# 17021 by SWDENDI
"**../
"*    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<fs_plantdetails>).
"*      lv_plant = <fs_plantdetails>-plant_no.
"*
"*      READ TABLE  lt_vat_country ASSIGNING FIELD-SYMBOL(<fs_vat_country>)
"*        WITH KEY  werks = lv_plant BINARY SEARCH.
"*
"*      IF sy-subrc EQ 0.
"*        <fs_plantdetails>-vat_ship_country_flag  = <fs_vat_country>-vat_ship_country.
"**        <fs_plantdetails>-npm_plant_usage        = <fs_vat_country>-npm_plant_usage.
"*      ENDIF.
"*** Begin of Changes US# 17021 by SWDENDI
"*      IF line_exists( lt_plant_div[ ext_locno = lv_plant ] ).
"*        <fs_plantdetails>-top_div_id    = lt_plant_div[ ext_locno = lv_plant ]-topdivision.
"*        <fs_plantdetails>-top_div_desc  = lt_plant_div[ ext_locno = lv_plant ]-ddtext.
"*        <fs_plantdetails>-top_div_desc_full  = |{ <fs_plantdetails>-top_div_desc }( { <fs_plantdetails>-top_div_id } )|." RKORADA - NPSCC-22561: Filter for PC with plant
"*
"*      ENDIF.
"*** Begin of Changes US# 17021 by SWDENDI
"*      IF line_exists( lt_fav[ value = lv_plant ] ).
"*        <fs_plantdetails>-favorite = 'X'.
"*      ENDIF.
"*    ENDLOOP.
"*
"*** Boc { US# 17252 Filter IPS plants for selection by SWDENDI
"**    IF lv_bu EQ '100'.
"**      DELETE et_entityset WHERE npm_plant_usage EQ 'N'
"**                            OR npm_plant_usage EQ space.
"**    ENDIF.
"*** Eoc } US# 17252 Filter IPS plants for selection by SWDENDI
"**} EOC - RKORADA - NPSCC-21973  Capability to exclude certain plants from contract user-lead
"**    ENDIF." US# 17021 by SWDENDI
"*
"***"====}EOC-SP32-US#3010--Assign VAT Shiping country on Plant level for Header(NPM)/Items(PM)
"*/.. Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.

  ENDMETHOD.


  METHOD pricereasoncateg_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 06-Jun-2018                                           &*
*& Description: US#11723 - Get the category list (f4) for all price   &*
*&              change reasons                                        &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*
    DATA: lt_filters TYPE /iwbep/t_mgw_select_option,            " Filters
          lo_ctr_cls TYPE REF TO zcl_contract_app.          " CTR Class
*&---------------------------------------------------------------------*

* Getting the filters with SAP structure field names instead of oData field names
    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    CREATE OBJECT lo_ctr_cls.

* Call method to get the details
    lo_ctr_cls->get_all_price_change_reasons(
                        EXPORTING im_mode             = 'PCR_CAT_F4'     " Price Change Reason Category F4
                                  im_search_string    = iv_search_string " Search String
                        IMPORTING ex_data             = et_entityset ).  " Data
  ENDMETHOD.


  METHOD pricereasonf4set_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 09-Apr-2018                                           &*
*& Description: US#3013 - Get all the price change reasons            &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*
    DATA: lt_filters TYPE /iwbep/t_mgw_select_option,            " Filters
          lo_ctr_cls TYPE REF TO zcl_contract_app.          " CTR Class
*&---------------------------------------------------------------------*

*BoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls
    me->do_cache_entity_set(
      EXPORTING
        io_tech_request_context = io_tech_request_context    " Request Details for Read Feed
      CHANGING
        es_response_context     = es_response_context   " Feed request response information (EntitySet)
    ).
***  Entity set data does not need to be returned if is-not-modified is ABAP_TRUE

*EoC - SRINIV NPSCC-29430(PoC) - [Fiori Check] [Fiori] 2.9 Cache OData calls

* Getting the filters with SAP structure field names instead of oData field names
    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    CREATE OBJECT lo_ctr_cls.

* Call method to get the details
    lo_ctr_cls->get_all_price_change_reasons(
                        EXPORTING im_mode             = 'PCR_F4'         " Price Change Reason F4
                                  im_search_string    = iv_search_string " Search String
                                  im_filter_options   = lt_filters       " Filters
                        IMPORTING ex_data             = et_entityset ).  " Data

*   Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).

*   Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.

      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD pricereasonset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 09-Apr-2018                                           &*
*& Description: US#3013 - Get all the item price change reasons       &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

*&-------------------------DATA DECLARATIONS---------------------------*
    DATA: lo_ctr_cls       TYPE REF TO zcl_contract_app,            " CTR Class
          lv_ctr_head_guid TYPE GUID,                                " Header GUID
          lv_ctr_item_guid TYPE GUID,                                " Item GUID
          lt_sort_order    TYPE abap_sortorder_tab,                      " Sorting
          lt_input_order   TYPE /iwbep/t_mgw_tech_order.                 " Order (input from fiori)
*&---------------------------------------------------------------------*

* Looping the key table
    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

*   Get CTR header guid
      IF <fs_key_tab>-name = 'ContractGuid'.

        lv_ctr_head_guid = <fs_key_tab>-value.

      ENDIF.

*   Get CTR item guid
      IF <fs_key_tab>-name = 'Guid'.

        lv_ctr_item_guid = <fs_key_tab>-value.

      ENDIF.

    ENDLOOP.

    CREATE OBJECT lo_ctr_cls.

    CHECK lv_ctr_head_guid IS NOT INITIAL AND lv_ctr_item_guid IS NOT INITIAL.

* Call method to get the details
    lo_ctr_cls->get_all_price_change_reasons(
                      EXPORTING im_mode               = 'PCR_ITEM'       " Mode
                                im_ctr_head_guid      = lv_ctr_head_guid " Header GUID
                                im_ctr_item_guid      = lv_ctr_item_guid " Item GUID
                                im_filter_options = it_filter_select_options "kausing*npscc 22130*16/07
                      IMPORTING ex_data               = et_entityset ).  " Item price reasons

* Input order
    lt_input_order = io_tech_request_context->get_orderby( ).

    IF lt_input_order IS INITIAL.
*   Default sorting the entries by date ascending (oldest to newest)

*    SORT et_entityset BY price_change_date ASCENDING.
      SORT et_entityset BY price_sec_id ASCENDING price_change_date ASCENDING.  " NPSCC-21792 BY SOPABBA


    ELSE.

      LOOP AT lt_input_order ASSIGNING FIELD-SYMBOL(<fs_input_order>).
        APPEND INITIAL LINE TO lt_sort_order ASSIGNING FIELD-SYMBOL(<fs_sort_order>).
        IF <fs_input_order>-order EQ 'desc'.
          <fs_sort_order>-descending = 'X'.
        ENDIF.
        <fs_sort_order>-name = <fs_input_order>-property.
      ENDLOOP.

      SORT et_entityset BY (lt_sort_order).

    ENDIF.

  ENDMETHOD.


  METHOD pricetypeset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Nihar Ranasingh (NRANASI)                   &*
*& Created    : 11-Jan-2018                                           &*
*& Story ID   : SP29-US#2977 -F4 help for Price Type-on Item level_CTR&*
*& Transport  : DSQK90#####                                           &*
*& Description:                                                       &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible: Infosys                                               &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

"    DATA: ls_entity     LIKE LINE OF et_entityset.

"    REFRESH et_entityset[].

"*    Get the data from table
"* BOC{ US#20333_Additional data for field PriceType & Translations_By SOPABBA
"* Using common table for Price Type
"*    SELECT Zprice_type,Ztype_desc  FROM Zpd_ptype
"*      INTO TABLE @DATA(lt_item_pricetypes)
"*      WHERE object_type EQ 'BUS2000113'
"*        AND Zprice_type IS NOT NULL
"*        AND spras = @sy-langu .
"    SELECT zprice_type,ztype_desc  FROM zptype
"      INTO TABLE @DATA(lt_item_pricetypes)
"      WHERE zprice_type IS NOT NULL
"        AND spras = @sy-langu .
"* EOC} US#20333_Additional data for field PriceType & Translations_By SOPABBA
"    IF sy-subrc = 0.

"*      Looping the fetched entries
"      LOOP AT lt_item_pricetypes ASSIGNING FIELD-SYMBOL(<fs_pricetypes>).

"* "--Transalte and append to entity set with required format
"        ls_entity-price_type      = <fs_pricetypes>-zprice_type.
"        ls_entity-price_type_desc = <fs_pricetypes>-ztype_desc .

"        APPEND ls_entity TO et_entityset.
"        CLEAR ls_entity.
"      ENDLOOP.

"    ENDIF.
"    DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING ALL FIELDS .

  ENDMETHOD.


  METHOD pricingcondition_get_entityset.
************************************************************************
* Author             : Infosys/TSACHAN                                *
* Title              : Read pricing condition for PO                  *
* Date               : 22-Dec-2017                                    *
* Module             : Contract-(EPIC)                                *
*_____________________________________________________________________*
* DESCRIPTION (User story)    : NPSCC-3002                            *
*
***********************************************************************
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        23-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#12236 and 12238                   &*
*&              Implementing the filter options and search criteria   &*
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        23-Aug-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Tamilarasi Thirumal (TTHIRUM)                         &*
*& Description: Changes done for US#14462                             &*
*&              Enhance filter price conditions                       &*
*----------------------------------------------------------------------*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Sowmya Pabba (SOPABBA)                                &*
*& Description: Changes done for US#15889                             &*
*&              PC App: Improve UX - selection of Price conditions    &*
*----------------------------------------------------------------------*

*  TYPES: BEGIN OF ty_price_cond,                                           "Local structure for price conditions.
*           groupname TYPE /sapcnd/group_i-groupname,
*           grp_name  TYPE /sapcnd/group_it-groupname,
*           counter   TYPE /sapcnd/group_i-counter,
*           count     TYPE /sapcnd/group_it-counter,
*           kotabnr   TYPE /sapcnd/group_i-kotabnr,
*           kschl     TYPE /sapcnd/t685t-kschl,
*           desc      TYPE  /sapcnd/group_it-description,
*           spras     TYPE /sapcnd/group_it-ddlanguage,
*           globusid  TYPE Zglobus_id,                                  "SP39_US-10861 By TTHIRUM
*         END OF ty_price_cond.

*/..Creating the below struc with char data type for comparing the search string.
*  TYPES: BEGIN OF ty_cond_set,                                              "SP39_US-10861 By TTHIRUM
*           cond_type      TYPE char04,
*           condition_text TYPE char30,
*           globus_id      TYPE char10,
*           amount_value   TYPE char10,
*         END OF ty_cond_set.

    "TYPES: rty_tdname TYPE RANGE OF tdobname.                            " SP_43-US_14462 By--TTHIRUM
"    CONSTANTS: c_y TYPE c VALUE 'Y'.                                     " US# NPSCC-15465 - By SOPABBA
"    DATA : "lt_price_cond      TYPE TABLE OF ty_price_cond,
"      es_entity          LIKE LINE OF et_entityset,
"      lt_filters         TYPE /iwbep/t_mgw_select_option,                " Venky - US#12236 and 12238
"      lr_cond_type       TYPE RANGE OF /sapcnd/cond_type,                " Venky - US#12236 and 12238
"      lr_cnd_type        TYPE RANGE OF /sapcnd/cond_type,                " NPSCC-23192
"      lw_cond_set        TYPE zpricing_condition,
"      lv_cond_str        TYPE string,
"      lv_cond            TYPE string,
"      rt_globus_id       TYPE RANGE OF zglobus_id,
"      rt_cond_shot_txt   TYPE RANGE OF /sapcnd/text_group_it,
"      rt_tdname          TYPE RANGE OF tdobname,
"      rt_glob_id         TYPE RANGE OF zglobus_id,            "SP_50 US_15889 By SOPABBA
"      rt_price_effective TYPE RANGE OF zprice_effective,      "SP_50 US_15889 By SOPABBA
"      rt_cal_typ         TYPE RANGE OF prct_calculation_type,      "SP_50 US_15889 By SOPABBA
"      lt_orderby         TYPE /iwbep/t_mgw_tech_order,             "Bug# 18600 - By SOPABBA
"      lt_sort_order      TYPE abap_sortorder_tab,                  "Bug# 18600 - By SOPABBA
"      ls_sort_order      TYPE abap_sortorder,
"**/BOC_US# NPSCC-15465 - By SOPABBA
"      lv_user_id         TYPE baluser.
"      "lv_attr_single     TYPE bbp_attr_list,
"      "lv_dft_single      TYPE bbps_attr_single.

"    CLEAR: lv_user_id, lv_attr_single, lv_dft_single.
"**/EOC_US# NPSCC-15465 - By SOPABBA
"************************************************************************
"****** Begin of Insert by  <VMANCHA> <US#12236 and 12238>
"* This will get the data into ABAP field name as property name
"    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
"*
"*  CONCATENATE '( a~groupname = @lv_grp_name_0100 OR a~groupname = @lv_grp_name_01cc )'
"*              'AND b~ddlanguage = @sy-langu AND a~kotabnr = @lv_sap016 AND d~domname = @lv_domname AND d~ddlanguage = @sy-langu'
"*         INTO lv_where_condition SEPARATED BY space.

"* Search string
"    IF iv_search_string IS NOT INITIAL.

"      "--{B--SP_43-US_14462 Enhance filter price conditions By--TTHIRUM
"      DATA(lv_search_string) = iv_search_string.
"      TRANSLATE lv_search_string TO UPPER CASE.
"      CONCATENATE '*' lv_search_string '*' INTO lv_search_string.

"      rt_globus_id = VALUE #( sign = 'I' option = 'CP' ( low = lv_search_string ) ).

"      CONCATENATE lv_cond_str '( globus_id IN @rt_globus_id OR'
"        INTO lv_cond_str SEPARATED BY space.

"      rt_cond_shot_txt = VALUE #( sign = 'I' option = 'CP' ( low = lv_search_string ) ).

"      CONCATENATE lv_cond_str 'description_uc IN @rt_cond_shot_txt )'
"        INTO lv_cond_str SEPARATED BY space.

"*    CONCATENATE '( (' lv_where_condition ')' 'AND' lv_cond_str ')'
"*      INTO lv_where_condition SEPARATED BY space.

"      "--}E--SP_43-US_14462 Enhance filter price conditions By--TTHIRUM

"    ELSEIF lt_filters IS NOT INITIAL.

"*   Looping filters
"      LOOP AT lt_filters ASSIGNING FIELD-SYMBOL(<fs_filter>).
"        IF <fs_filter>-property = 'COND_TYPE' AND
"           <fs_filter>-select_options IS NOT INITIAL.

"*       Range table for condition type
"          APPEND INITIAL LINE TO lr_cond_type ASSIGNING FIELD-SYMBOL(<fs_cond_type>).

"          <fs_cond_type>-sign   = <fs_filter>-select_options[ 1 ]-sign.
"          <fs_cond_type>-option = <fs_filter>-select_options[ 1 ]-option.
"          <fs_cond_type>-low    = <fs_filter>-select_options[ 1 ]-low.
"**{BOC SP_50 US 15889 PC App: Improve UX - selection of Price conditions    By - SOPABBA
"        ELSEIF <fs_filter>-property = 'GLOBUS_ID' AND
"               <fs_filter>-select_options IS NOT INITIAL.
"          IF <fs_filter>-select_options[ 1 ]-low EQ 'ALL_GLOBUS'.  "NPSCC-CTR-23327 - Excel upload
"            DATA(lv_all_cond) = abap_true.
"          ELSE.
"*         Range table for Globus ID
"            APPEND INITIAL LINE TO rt_glob_id ASSIGNING FIELD-SYMBOL(<fs_globus_id>).
"            <fs_globus_id>-sign   = <fs_filter>-select_options[ 1 ]-sign.
"            <fs_globus_id>-option = <fs_filter>-select_options[ 1 ]-option.
"            <fs_globus_id>-low    = <fs_filter>-select_options[ 1 ]-low.
"          ENDIF.

"        ELSEIF <fs_filter>-property = 'PRICE_EFFECTIVE' AND
"               <fs_filter>-select_options IS NOT INITIAL.
"*       Range table for Price effective
"          APPEND INITIAL LINE TO rt_price_effective ASSIGNING FIELD-SYMBOL(<fs_price_eff>).
"          <fs_price_eff>-sign   = <fs_filter>-select_options[ 1 ]-sign.
"          <fs_price_eff>-option = <fs_filter>-select_options[ 1 ]-option.
"          <fs_price_eff>-low    = <fs_filter>-select_options[ 1 ]-low.

"        ELSEIF <fs_filter>-property = 'CALCULATION_TYPE' AND
"               <fs_filter>-select_options IS NOT INITIAL.

"*       Range table for Calculation Type
"          APPEND INITIAL LINE TO rt_cal_typ ASSIGNING FIELD-SYMBOL(<fs_cal_typ>).
"          <fs_cal_typ>-sign   = <fs_filter>-select_options[ 1 ]-sign.
"          IF <fs_filter>-select_options[ 1 ]-low EQ 'PER'.
"            <fs_cal_typ>-option = 'EQ'.
"            <fs_cal_typ>-low = 'A'.
"          ELSEIF <fs_filter>-select_options[ 1 ]-low EQ 'ABS'.
"            <fs_cal_typ>-option = 'NE'.
"            <fs_cal_typ>-low = 'A'.
"          ENDIF.
"**}EOC SP_50 US 15889 PC App: Improve UX - selection of Price conditions    By - SOPABBA
"        ENDIF.
"      ENDLOOP.

"    ENDIF.
"****** End of Insert by  <VMANCHA> <US#12236 and 12238>
"************************************************************************

"*  SELECT a~kschl,                                                            "SP_39-US10861-By--TTHIRUM
"*         b~description,
"*         c~globus_id,
"*         d~krech                                                             " Venky
"*    FROM /sapcnd/group_i AS a
"*    INNER JOIN /sapcnd/group_it AS b
"*    ON  a~groupname = b~groupname
"*    AND a~counter   = b~counter
"*    INNER JOIN Zcust_cond AS c
"*    ON a~kschl = c~condition_id
"*    AND c~valid_from LE @sy-datum AND c~valid_to GE @sy-datum
"*    INNER JOIN prcc_cond_ct AS d                                             " Venky
"*    ON d~kschl = a~kschl                                                     " Venky
"*    INTO TABLE @DATA(lt_cond_desc)
"**    WHERE ( a~groupname = '0100' OR a~groupname = '01CC')
"**    AND b~ddlanguage = @sy-langu AND kotabnr EQ 'SAP016'.
"*    WHERE (lv_where_condition).

"*  SELECT a~kschl,                                                             "SP_39-US10861-By--TTHIRUM
"*      b~description,
"*      c~globus_id,
"*      c~price_effective,
"*      d~ddtext,
"*      e~krech                                                                 " Venky
"*   FROM /sapcnd/group_i AS a
"*   INNER JOIN /sapcnd/group_it AS b
"*   ON  a~groupname = b~groupname
"*   AND a~counter   = b~counter
"*   INNER JOIN Zcust_cond AS c
"*   ON a~kschl = c~condition_id
"*   AND c~valid_from LE @sy-datum AND c~valid_to GE @sy-datum
"*   INNER JOIN dd07t AS d
"*   ON d~domvalue_l = c~condition_category
"*   INNER JOIN prcc_cond_ct AS e                                                " Venky
"*   ON e~kschl = a~kschl                                                        " Venky
"*   INTO TABLE @DATA(lt_cond_desc)
"*   WHERE (lv_where_condition).
"**/ BOC_US_NPSCC-15465_Enhance search helps for BU specific conditions (Addons/Discounts) - By SOPABBA

"    DATA(lv_curr) = COND #( WHEN line_exists( lt_filters[ property = 'FIXED_CURRENCY' ] ) THEN "US# 24604 by SWDENDI
"                            lt_filters[ property = 'FIXED_CURRENCY' ]-select_options[ 1 ]-low ).
"    CONDENSE lv_curr.

"    READ TABLE lt_filters ASSIGNING <fs_filter> WITH KEY property = 'RESPONSIBLE_BUYER'.
"    IF sy-subrc EQ 0
"      AND <fs_filter>-select_options IS NOT INITIAL.
"      lv_user_id = <fs_filter>-select_options[ 1 ]-low.
"    ELSE.
"      RETURN . " if there is no buyer
"    ENDIF.
"    lv_attr_single-attr_id = 'Z_BU'.

"    CALL FUNCTION 'BBP_READ_ATTRIBUTES'
"      EXPORTING
"        iv_user                 = lv_user_id
"        iv_scenario             = 'BBP'
"        iv_attr_single          = lv_attr_single
"      IMPORTING
"        ev_attr_dft_single      = lv_dft_single
"      EXCEPTIONS
"        object_id_not_found     = 1
"        no_attributes_requested = 2
"        attributes_read_error   = 3
"        OTHERS                  = 4.
"    IF sy-subrc IS NOT INITIAL.
"* Implement suitable error handling here
"      CLEAR: lv_dft_single.

"      RETURN . " If there is no business unit
"    ELSE.
"*{ BOC-RKORADA NPSCC-23192 Logic adjustment for conditions according to the new table Zcust_cond
"*    SELECT SINGLE process_varient
"*      FROM Zmaint_bu
"*      INTO @DATA(lv_process_var)
"*            WHERE bu_id = @lv_dft_single-value.
"*    IF sy-subrc EQ 0
"*      AND lv_process_var IS NOT INITIAL.
"*
"*      IF lv_process_var EQ 'NPM'.
"*        CONCATENATE lv_cond 'npm EQ @c_y' INTO lv_cond SEPARATED BY space.
"*      ELSEIF lv_process_var EQ 'PMT'.
"*        CONCATENATE lv_cond 'pmt EQ @c_y' INTO lv_cond SEPARATED BY space.
"*      ELSEIF lv_process_var EQ 'PMP'.
"*        CONCATENATE lv_cond 'pmp EQ @c_y' INTO lv_cond SEPARATED BY space.
"*      ENDIF.
"*
"*      IF lv_cond_str IS NOT INITIAL.
"*        CONCATENATE lv_cond_str 'AND' lv_cond INTO lv_cond_str SEPARATED BY space.
"*      ELSE.
"*        CONCATENATE lv_cond_str lv_cond INTO lv_cond_str SEPARATED BY space.
"*      ENDIF.
"      SELECT 'I' AS sign , 'EQ' AS option , condition_id AS low
"        INTO TABLE @lr_cnd_type
"        FROM zcond_bu
"        WHERE condition_id IS NOT NULL AND bu_id EQ @lv_dft_single-value.

"      IF sy-subrc EQ 0.

"        SORT lr_cnd_type BY low ASCENDING.
"        DELETE ADJACENT DUPLICATES FROM lr_cnd_type COMPARING low.

"*} EOC-RKORADA NPSCC-23192 Logic adjustment for conditions according to the new table Zcust_cond
"      ELSE.
"        RETURN. " if there are no conditions found for BU
"      ENDIF.
"    ENDIF.
"**/ EOC_US_NPSCC-15465_Enhance search helps for BU specific conditions (Addons/Discounts) - By SOPABBA
"    SELECT kschl,description,description_uc,globus_id,from_currency,fixed_currency,fixed_curr_flag,price_effective, " US# 24604 by SWDENDI
"      condition_category,category_desc,category_desc_uc,krech
"      FROM zcond_det
"      WHERE kschl IN @lr_cond_type
"      AND globus_id IN @rt_glob_id
"      AND price_effective IN @rt_price_effective
"      AND krech IN @rt_cal_typ
"      AND (lv_cond_str)
"      INTO TABLE @DATA(lt_cond_desc).


"    IF sy-subrc = 0 .

"      SORT lt_cond_desc BY kschl.                                                "SP_39-US10861-By--TTHIRUM
"      DELETE ADJACENT DUPLICATES FROM lt_cond_desc COMPARING kschl.
"      DELETE lt_cond_desc WHERE kschl NOT IN lr_cnd_type. "NPSCC-23192 Logic adjustment for conditions according to the new table Zcust_cond
"      DELETE lt_cond_desc WHERE kschl = 'TTPR' OR kschl = 'TNBP'.
"      "--{B--SP_43-US_14462 Enhance filter price conditions By--TTHIRUM

"*/..Get condition type in range table.
"      rt_tdname = VALUE rty_tdname( FOR ls_tdname IN lt_cond_desc
"                                    ( sign = 'I' option = 'EQ' low = ls_tdname-kschl ) ).

"      DATA(lt_so10_text) = NEW zcl_search_help_and_info( ).

"      lt_so10_text->get_so10_texts(
"        EXPORTING
"          im_so10_names   =  rt_tdname                                           " Table with Text Names
"          im_textid       = 'ZCON'
"          im_language_key =  sy-langu                                            " ABAP System Field: Language Key of Text Environment
"        IMPORTING
"          ex_so10_texts   =  DATA(et_so10_text)
"      ).
"      "--}E--SP_43-US_14462 Enhance filter price conditions By--TTHIRUM

"      LOOP AT lt_cond_desc ASSIGNING FIELD-SYMBOL(<fs_condition>).

"        CLEAR: lw_cond_set.
"        lw_cond_set-cond_type = <fs_condition>-kschl.
"        lw_cond_set-condition_text = <fs_condition>-description.
"        lw_cond_set-globus_id = <fs_condition>-globus_id.                        " SP39_US-10861 By TTHIRUM
"        lw_cond_set-price_effective = <fs_condition>-price_effective.            " SP_43-US_14462 By TTHIRUM
"        lw_cond_set-cond_category = <fs_condition>-condition_category.           " VMANCHA US#22863
"        lw_cond_set-cond_category_desc = <fs_condition>-category_desc.           " SP_43-US_14462 By TTHIRUM
"        lw_cond_set-currency = <fs_condition>-from_currency.                     " npscc 23833*KAUSING

"        IF <fs_condition>-krech = 'A'.                                           " Venky
"          lw_cond_set-amount_value = '%'.
"          lw_cond_set-calculation_type = 'PER'.
"        ELSE.
"          lw_cond_set-calculation_type = 'ABS'.
"        ENDIF.
"*/..Get So10 text for condition type
"        " " SP_43-US_14462 By TTHIRUM
"        IF line_exists( et_so10_text[ so10_name = <fs_condition>-kschl ] ).
"          lw_cond_set-price_cond_long_text = et_so10_text[ so10_name = <fs_condition>-kschl ]-so10_text.
"        ENDIF.
"*/..Commenting the below code replacing the logic with dynamic where conditions --By-TTHIRUM
"*      IF lv_search_string IS NOT INITIAL AND lw_cond_set NP lv_search_string. " Venky - US#12236 and 12238
"*        CONTINUE.                                                             " Venky - US#12236 and 12238
"*      ENDIF.
"* Boc US# 24604 - MPN: Limit selection of weight-based conditions based on currency
"        IF <fs_condition>-fixed_curr_flag EQ abap_false
"          OR <fs_condition>-fixed_currency IS INITIAL.
"*/.. If neither flag set nor currency is not maintained,
"          "then it is free to use irrespective of item currency
"          lw_cond_set-fixed_currency = <fs_condition>-fixed_currency.

"        ELSE.
"          CONDENSE  <fs_condition>-fixed_currency.
"          IF lv_curr IS INITIAL.
"*/.. If input currency will be blank, then fiori is loading initially irrespective of item currency
"            lw_cond_set-fixed_currency = <fs_condition>-fixed_currency.

"*/.. if currency input is given, then only match
"          ELSEIF lv_curr EQ <fs_condition>-fixed_currency.

"            lw_cond_set-fixed_currency = <fs_condition>-fixed_currency.
"*/.. if the above conditions fail, then ignore this record.
"          ELSE.
"            CONTINUE.
"          ENDIF.

"        ENDIF.
"*      IF <fs_condition>-fixed_curr_flag IS INITIAL
"*       OR ( <fs_condition>-fixed_curr_flag IS NOT INITIAL AND <fs_condition>-fixed_currency EQ lv_curr )
"*        OR ( <fs_condition>-fixed_curr_flag IS NOT INITIAL AND <fs_condition>-fixed_currency IS INITIAL ).
"*
"*        IF <fs_condition>-fixed_curr_flag IS NOT INITIAL.
"*          lw_cond_set-fixed_currency = <fs_condition>-fixed_currency.
"*        ENDIF.
"*      ELSE.
"*        CONTINUE.
"*      ENDIF.
"* Eoc US# 24604 - MPN: Limit selection of weight-based conditions based on currency

"        MOVE-CORRESPONDING lw_cond_set TO es_entity.                             " SP39_US-10861 By TTHIRUM

"        APPEND es_entity TO et_entityset.

"      ENDLOOP.

"    ENDIF.

"    DELETE et_entityset WHERE cond_type NOT IN lr_cond_type.            " Venky - US#12236 and 12238
"    IF lr_cond_type IS INITIAL
"      AND rt_glob_id IS INITIAL
"      AND rt_price_effective IS INITIAL
"      AND rt_cal_typ IS INITIAL
"      AND lv_all_cond IS INITIAL.              "NPSCC-CTR-23327 - Excel upload
"      " SP_50 US 15889 By-SOPABBA
"      DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING globus_id.
"    ENDIF.
"*/ BOC Bug#18600_Sorting by Condition Description and Condition Category in F4 search Help - By SOPABBA
"*/ Sorting
"    lt_orderby = io_tech_request_context->get_orderby( ).
"    LOOP AT lt_orderby ASSIGNING FIELD-SYMBOL(<fs_orderby>).
"      CLEAR ls_sort_order.
"      IF <fs_orderby>-order EQ 'desc'.
"        ls_sort_order-descending = 'X'.
"      ENDIF.

"      IF <fs_orderby>-property EQ 'GLOBUS_ID'.
"        ls_sort_order-name = 'COND_TYPE'.
"      ELSE.
"        ls_sort_order-name = <fs_orderby>-property.
"      ENDIF.

"      APPEND ls_sort_order TO lt_sort_order.
"    ENDLOOP.
"    SORT et_entityset BY (lt_sort_order).
"*/ EOC Bug#18600_Sorting by Condition Description and Condition Category in F4 search Help - By SOPABBA
"*/.. Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.


  ENDMETHOD.


  METHOD quickviewcardset_get_entity.
*---------------------------------------------------------------------*
*& Date       : 10-April-2018                                        &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi (TTHIRUM)                                 &*
*& Description: SP34_US#12091                                        &*
*&              Fiori App Contract - Activate Quick view card        &*
*---------------------------------------------------------------------*

    "DATA lcl_cls TYPE REF TO zcl_quickviewcard.

"    IF it_key_tab[] IS NOT INITIAL .
"      DATA(lt_key_tab) = it_key_tab .

"      CREATE OBJECT lcl_cls .

"      SORT lt_key_tab BY name .
"*"-- Check if its for Buyer.
"      READ TABLE lt_key_tab ASSIGNING FIELD-SYMBOL(<fs_id_type>)
"            WITH KEY name = 'Flag'  BINARY SEARCH .

"      IF sy-subrc EQ 0.

"        DATA(lv_flag) = <fs_id_type>-value .

"        IF lv_flag = 'B'.           "-- Buyer
"          CALL METHOD lcl_cls->get_quickviewcardset_buyer
"            EXPORTING
"              im_flag    = ''
"              it_key_tab = it_key_tab
"            IMPORTING
"              ex_return  = er_entity.
"        ENDIF.
"      ENDIF.
"    ENDIF.




  ENDMETHOD.


  METHOD releaseswitchset_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / RKORADA                                    &*
*& Created    : 20/09/2019                                           &*
*&-------------------------------------------------------------------&*
   " SELECT zrelease AS active_release
"      FROM zswitch_rel
"      INTO TABLE @et_entityset
"      WHERE document_type EQ 'BUS2000113'
"      AND active_flag = @abap_true.

"    IF sy-subrc EQ 0.
"      SORT et_entityset BY active_release ASCENDING.
"    ENDIF.

  ENDMETHOD.


  METHOD responsiblebuyer_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
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

*    DATA : lc_ctr     TYPE REF TO Zcl_contract_app,
*           lv_user_id TYPE xubname.
*
*    CREATE OBJECT lc_ctr.
*
*    CALL METHOD lc_ctr->get_all_responsible_buyers
*      EXPORTING
*        im_srh_string = iv_search_string
*        im_user_id    = lv_user_id
*      IMPORTING
*        et_buyer      = et_entityset.

*// Performance improvement with CDS.

    DATA : lcl_ctr    TYPE REF TO zcl_search_help_and_info,
           lv_user_id TYPE xubname,
           lt_filters TYPE         /iwbep/t_mgw_select_option.


    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

*{ Begin of change - RKORADA / 08.06.2018
*/.. Implementing filter logic sothat given value is verified.

    SORT lt_filters BY property ASCENDING .

    READ TABLE lt_filters
      ASSIGNING FIELD-SYMBOL(<fs_filter>)
      WITH KEY property = 'BUYER_ID' BINARY SEARCH.
    IF sy-subrc EQ 0.
      lv_user_id = <fs_filter>-select_options[ 1 ]-low.
    ENDIF.
*} End of change - RKORADA / 08.06.2018
*   Begin of changes by KAUSING*npscc 22562*enhance buyer f4
    IF line_exists( lt_filters[ property = 'VIRTUAL_BUYER' ] ).
      ASSIGN lt_filters[ property = 'VIRTUAL_BUYER' ]-select_options[ 1 ]-low TO FIELD-SYMBOL(<fs_vbuyer>).
      IF <fs_vbuyer> IS ASSIGNED AND <fs_vbuyer> IS NOT INITIAL.
        DATA(lv_vbuyer) = 'X'.
      ENDIF.
    ENDIF.
*   End of changes by KAUSING*npscc 22562*enhance buyer f4

    CREATE OBJECT lcl_ctr.

    CALL METHOD lcl_ctr->get_cds_buyer_list
      EXPORTING
*       iv_firstname  =
*       iv_lastname   =
        iv_username   = lv_user_id
*       iv_department =
        iv_search_str = iv_search_string
      IMPORTING
        et_buyer      = et_entityset.

*/.. Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).
*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD rettermsset_get_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Feb-2018                                           &*
*& Description: US#3007:                                              &*
*&              Get the return term details with short and long texts &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
**& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
**& Created    : 26-Feb-2018                                          &*
**& Description: Changes done for SP31-US#3008                        &*
**&             Define packaging + return terms for PM contracts      &*
**&             on item level and Plant level                         &*
**&           US#3008: This method is used to pass package terms data &*
**&-------------------------------------------------------------------&*

"    DATA: lo_ctr_cls     TYPE REF TO zcl_contract_app,
"          lv_return_term TYPE bbp_absgr,
"          lt_details     TYPE zcl_fio_manage_po_mpc=>tt_retterms.

"    LOOP AT it_key_tab ASSIGNING FIELD-SYMBOL(<fs_key_tab>).

"*   Return term
"      IF <fs_key_tab>-name = 'RetTermKey'.

"        lv_return_term = <fs_key_tab>-value.

"      ENDIF.

"    ENDLOOP.

"    CREATE OBJECT lo_ctr_cls.

"* Call method to get the return term details
"    lo_ctr_cls->get_all_return_terms(
"                      EXPORTING im_return_term         = lv_return_term
"                      IMPORTING ex_return_term_details = lt_details ).

"    IF lt_details IS NOT INITIAL.

"      er_entity = lt_details[ 1 ].

"    ENDIF.

  ENDMETHOD.


  METHOD rettermsset_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Feb-2018                                           &*
*& Description: US#3007:                                              &*
*&              Get the return term details with short and long texts &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
**& Developer  : Infosys / Nihar Ranasingh (NRANASI)                  &*
**& Created    : 26-Feb-2018                                          &*
**& Description: Changes done for SP31-US#3008                        &*
**&              Define packaging + return terms for PM contracts     &*
**&              on item level and Plant level                        &*
**&           US#3008: This method is used to pass pack ageterms data &*
**&-------------------------------------------------------------------&*

"*&-------------------------DATA DECLARATIONS---------------------------*
"    DATA: lo_ctr_cls       TYPE REF TO zcl_contract_app,            " CTR Class
"          ls_select_option TYPE /iwbep/s_cod_select_option,              " Filter
"          lt_select_key    TYPE TABLE OF /iwbep/s_cod_select_option,              " Filter
"          lv_valid_from    TYPE date,                        " Valid From
"          lv_valid_to      TYPE date.                              " Valid To
"*&---------------------------------------------------------------------*

"* Looping filter table
"    LOOP AT it_filter_select_options ASSIGNING FIELD-SYMBOL(<fs_filter>).

"*   Get the valid from date
"      IF <fs_filter>-property = 'ValidityFrom' AND
"         <fs_filter>-select_options IS NOT INITIAL.

"        ls_select_option = <fs_filter>-select_options[ 1 ].

"        lv_valid_from = ls_select_option-low.

"*   Get the valid to date
"      ELSEIF <fs_filter>-property = 'ValidityTo' AND
"             <fs_filter>-select_options IS NOT INITIAL.

"        ls_select_option = <fs_filter>-select_options[ 1 ].

"        lv_valid_to = ls_select_option-low.

"      ELSEIF <fs_filter>-property = 'RetTermKey' AND
"         <fs_filter>-select_options IS NOT INITIAL.

"        lt_select_key = <fs_filter>-select_options[].

"      ENDIF.

"    ENDLOOP.

"    CREATE OBJECT lo_ctr_cls.

"* Call method to get the return term details
"    lo_ctr_cls->get_all_return_terms(
"                      EXPORTING im_valid_from          = lv_valid_from
"                                im_valid_to            = lv_valid_to
"                                im_search_string       = iv_search_string
"                      IMPORTING ex_return_term_details = et_entityset ).

"    DELETE et_entityset WHERE retterm_key NOT IN lt_select_key.

"*/.. Below logic is for tile count and result count.
"    es_response_context-inlinecount = lines( et_entityset ).
"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"*{==BOC Bug-NPSCC-26349 By-SBILLAP
"        IF ( is_paging-top + is_paging-skip + 1 ) <= lines( et_entityset ).
"          DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"          IF sy-subrc = 0.
"            DELETE et_entityset FROM 1 TO is_paging-skip.
"          ENDIF.
"        ENDIF.
"*        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ). "Commented as part of Bug Fix-NPSCC-26349-By-SBILLAP
"*        DELETE et_entityset FROM 1 TO is_paging-skip. "Commented as part of Bug Fix-NPSCC-26349-By-SBILLAP
"*}==EOC Bug-NPSCC-26349 By-SBILLAP
"      ENDIF.

"    ENDIF.

  ENDMETHOD.


  METHOD saperionattachme_get_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Jai Vasudev (JVASUDE)                       &*
*& Created    : 2017-12-27                                            &*
*& Story ID   : NPSCC_2947                                             &*
*& Transport  :                                                       &*
*&--------------------------------------------------------------------&*

*"==== This Method is for Attachement (External & Internal) on CTR Header/Item Level - Nihar


    DATA :lt_key_tab LIKE it_key_tab .

    IF it_key_tab[] IS NOT INITIAL.
      lt_key_tab[] = it_key_tab[] .
      SORT lt_key_tab BY name .
    ENDIF.

    READ TABLE lt_key_tab ASSIGNING FIELD-SYMBOL(<fs_keytab>)
     WITH KEY name = 'Attach_Guid' BINARY SEARCH.
    IF sy-subrc EQ 0.
      er_entity-token_no  = <fs_keytab>-value.
    ENDIF.

    READ TABLE lt_key_tab ASSIGNING <fs_keytab>
     WITH KEY name = 'Indicator' BINARY SEARCH.
    IF sy-subrc EQ 0.
      er_entity-indicator  = <fs_keytab>-value.
    ENDIF.
* BOC { US# 18589 By SWDENDI ECS: manual uploading of attachments to ECS in PC
    READ TABLE lt_key_tab ASSIGNING <fs_keytab>
     WITH KEY name = 'ECS_Filepath' BINARY SEARCH.
    IF sy-subrc EQ 0.
      er_entity-ecs_fpath  = <fs_keytab>-value.
    ENDIF.

    READ TABLE lt_key_tab ASSIGNING <fs_keytab>
     WITH KEY name = 'File_Name' BINARY SEARCH.
    IF sy-subrc EQ 0.
      er_entity-file_name  = <fs_keytab>-value.
    ENDIF.
* EOC } US# 18589 By SWDENDI ECS: manual uploading of attachments to ECS in PC
  ENDMETHOD.


  METHOD suppbpoinfoset_get_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Ashvin Shenvi (SHENVIA)                     &*
*& Created    : 03-JUNE-2020                                          &*
*& Description: US# 28410 DTNA part specifics                         &*
*&--------------------------------------------------------------------&*
    "DATA: lt_dd07v        TYPE TABLE OF dd07v,
"          lv_supplier_num TYPE bu_partner.

"    DATA(lv_part_number) = VALUE #( it_key_tab[ name = 'PartNumber' ]-value DEFAULT space ).
"    DATA(lv_supplier_no) = VALUE #( it_key_tab[ name = 'SupplierNo' ]-value OPTIONAL ).
"    lv_supplier_num = |{ lv_supplier_no ALPHA = IN }|.
"    SELECT SINGLE part_number,
"            supplier_no,
"            bpo,
"            bpo_line_number,
"            tool_priority
"       FROM zsupp_bpo
"       INTO @DATA(lw_supp_bpo)
"        WHERE part_number = @lv_part_number
"       AND supplier_no = @lv_supplier_num.

"    IF sy-subrc EQ 0.
"      er_entity-supp_bpo      = lw_supp_bpo-bpo.
"      er_entity-supp_bpo_line = lw_supp_bpo-bpo_line_number.
"      er_entity-tool_priority = lw_supp_bpo-tool_priority.
"* Read the Domain values
"      CALL FUNCTION 'DDUT_DOMVALUES_GET'
"        EXPORTING
"          name          = 'ZTOOLING'
"*         LANGU         = SY-LANGU
"        TABLES
"          dd07v_tab     = lt_dd07v
"        EXCEPTIONS
"          illegal_input = 1
"          OTHERS        = 2.
"      IF sy-subrc EQ 0.
"        er_entity-tool_priority_desc = VALUE #( lt_dd07v[ domvalue_l = er_entity-tool_priority ]-ddtext OPTIONAL ).
"      ENDIF.
"    ENDIF.

"    er_entity-part_number   = lv_part_number.
"    er_entity-supplier_no   = lv_supplier_no.

  ENDMETHOD.


  METHOD suppcontactperso_get_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 29-Dec-2017                                           &*
*& Description: US#2944: Fetch supplier contact persons               &*
*&--------------------------------------------------------------------&*
*../Local structure for partner details
    TYPES: BEGIN OF ty_supp_cont_persons,
             partner1     TYPE bu_partner,
             partner2     TYPE bu_partner,
             name_first   TYPE bu_namep_f,
             name_last    TYPE bu_namep_l,
             smtp_address TYPE ad_smtpadr,
             tel_number   TYPE ad_tlnmbr,
             edoc_flag    TYPE rsdmem_boolean,
             guest_access TYPE rsdmem_boolean,   "npscc 29175
           END OF ty_supp_cont_persons.
*/..Data declarations
    DATA: lt_supp_cont_persons TYPE TABLE OF ty_supp_cont_persons,
          lt_message           TYPE bapiret2_t,
          ls_key_tab           TYPE /iwbep/s_mgw_name_value_pair,
          lv_supplier          TYPE bu_partner,
          lv_supplier_cont     TYPE bu_partner,
          lt_key_tab           TYPE /iwbep/t_mgw_name_value_pair,
          lo_cls               TYPE REF TO zcl_contract_app.
*&---------------------------------------------------------------------*
*/..Check if importing internal table it_key_tab is not initial and copy to local internal table
*..lt_key_tab and sort by name../.
    IF it_key_tab[] IS NOT INITIAL.
      lt_key_tab[] = it_key_tab[] .
*/..Sort the internal table lt_key_tab by name
      SORT lt_key_tab BY name .
    ENDIF.
*/..Read internal table lt_key_tab with key name equals to supplierID.
    READ TABLE lt_key_tab WITH KEY name = 'SupplierId'
                          INTO ls_key_tab BINARY SEARCH .
    IF sy-subrc = 0.
*/..Get the value of supplier id into local variable lv_supplier.
      lv_supplier = ls_key_tab-value.

      CLEAR: ls_key_tab.
*/..convertion of any number into a string fill with zeroes
      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = lv_supplier
        IMPORTING
          output = lv_supplier.
*/..Read internal table lt_key_tab with key name equals to SupContactPerson
      READ TABLE lt_key_tab WITH KEY name = 'SupContactPerson'
                            INTO ls_key_tab BINARY SEARCH .
      IF sy-subrc = 0.
*/..Get the value of supplier contact person into local variale lv_supplier_cont.
        lv_supplier_cont = ls_key_tab-value.

        CLEAR: ls_key_tab.
*/..convertion of any number into a string fill with zeroes
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
          EXPORTING
            input  = lv_supplier_cont
          IMPORTING
            output = lv_supplier_cont.
*/..Create object for the class Zcl_contract_app
        CREATE OBJECT lo_cls.
*/..Call method fetch_supplier_Contact_persons to get supplier contract person details
        lo_cls->fetch_supplier_contact_persons(
          EXPORTING
            im_supplier_id       = lv_supplier
            im_supp_con_id       = lv_supplier_cont
          IMPORTING
            ex_supp_cont_persons = lt_supp_cont_persons
            ex_messages          = lt_message ).
*/..Read internal table lt_supp_Cont_persons with index 1 and get all details into er_entity
        READ TABLE lt_supp_cont_persons
                   ASSIGNING FIELD-SYMBOL(<fs_supp_cont_persons>) INDEX 1.

        IF sy-subrc = 0.

*      Pass Supplier Contact Person details
          MOVE-CORRESPONDING <fs_supp_cont_persons> TO er_entity.
*/..Get the supplier id, partner details, email, first name, last name, tell number into the er_entity to
*..display in Fiori
          er_entity-supplier_id = <fs_supp_cont_persons>-partner1.
          er_entity-partner     = <fs_supp_cont_persons>-partner1.
          er_entity-partner2    = <fs_supp_cont_persons>-partner2.
          er_entity-email       = <fs_supp_cont_persons>-smtp_address.
          er_entity-firstname   = <fs_supp_cont_persons>-name_first.
          er_entity-lastname    = <fs_supp_cont_persons>-name_last.
          er_entity-tel1_number = <fs_supp_cont_persons>-tel_number.
          er_entity-edoc_flag   = <fs_supp_cont_persons>-edoc_flag.
          er_entity-guest_access = <fs_supp_cont_persons>-guest_access.   "npscc 27915*KAUSING*

        ENDIF.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD suppcontactperso_get_entityset.
*----------------------------------------------------------------------*
*& Class      : ZCL_CONTRACT_APP                                 &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 14-Dec-2017                                           &*
*& Description: US#2944: Fetch supplier contact persons               &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*
*/..Local structure declaration
    TYPES: BEGIN OF ty_supp_cont_persons,
             partner1     TYPE bu_partner,
             partner2     TYPE bu_partner,
             name_first   TYPE bu_namep_f,
             name_last    TYPE bu_namep_l,
             smtp_address TYPE ad_smtpadr,
             tel_number   TYPE ad_tlnmbr,
             edoc_flag    TYPE rsdmem_boolean,
             guest_access TYPE rsdmem_boolean,   "npscc 29175
           END OF ty_supp_cont_persons.
*/..Data declaration
    DATA: lt_supp_cont_persons
            TYPE TABLE OF ty_supp_cont_persons,
          lt_message           TYPE bapiret2_t,
          lv_search_string     TYPE string,
          ls_key_tab           TYPE /iwbep/s_mgw_name_value_pair,
          lv_supplier          TYPE bu_partner,
          lt_filters           TYPE /iwbep/t_mgw_select_option,
          ls_vi                TYPE /iwbep/s_cod_select_option,
          ls_filter            TYPE /iwbep/s_mgw_select_option,
          lt_key_tab           TYPE /iwbep/t_mgw_name_value_pair,
          lo_cls               TYPE REF TO zcl_contract_app,
          lt_orderby           TYPE /iwbep/t_mgw_tech_order. "US# 21062 by SWDENDI
*&---------------------------------------------------------------------*
*/..Check if the internal table it_key_tab is not initial
    IF it_key_tab[] IS NOT INITIAL.
*/..Copy all the values of internal table it_key_tab into lt_key_tab.
      lt_key_tab[] = it_key_tab[] .
*/..Sort the internal table lt_key_tab by name
      SORT lt_key_tab BY name .
    ENDIF.
*/..Read internal table lt_key_tab with key name equals to 'SupplierId'.
    READ TABLE lt_key_tab WITH KEY name = 'SupplierId'
                          INTO ls_key_tab BINARY SEARCH .
    IF sy-subrc = 0.
*/..Get the value of SupplierId to local variable lv_supplier.
      lv_supplier = ls_key_tab-value.
    ELSE.
*/..Get the filter options values into interal table lt_filters
      lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
      SORT lt_filters BY property.
*/..Read internal table lt_filters with the key 'PARTNER'
      READ TABLE lt_filters WITH KEY property = 'PARTNER' INTO ls_filter BINARY SEARCH.
      IF sy-subrc EQ 0.
*/..Loop at ls_filter to get the value for the 'Partner'
        LOOP AT ls_filter-select_options ASSIGNING FIELD-SYMBOL(<fs_sel_option>).
          ls_vi = <fs_sel_option>.
          lv_supplier = ls_vi-low.
        ENDLOOP.
      ENDIF.
    ENDIF.
*/..convertion of any number into a string fill with zeroes
    CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
      EXPORTING
        input  = lv_supplier
      IMPORTING
        output = lv_supplier.
*/..Create object for the class Zcl_contract_app
    CREATE OBJECT lo_cls.
*/..Call method fetch_supplier_Contract_persons to get details of supplier contract.
    lo_cls->fetch_supplier_contact_persons(
      EXPORTING
        im_supplier_id       = lv_supplier
      IMPORTING
        ex_supp_cont_persons = lt_supp_cont_persons
        ex_messages          = lt_message ).
*..Concatenate '*' with search_string value
    CONCATENATE '*' iv_search_string '*' INTO lv_search_string.
**/.. SOPABBA - (NPSCC-10769)- German Umlauts to be recognized as ae,oe,ue, ss in PC app
    DATA: lv_umlauts TYPE char100,
          lo_umlauts TYPE REF TO zcl_search_help_and_info.

    CREATE OBJECT lo_umlauts.

    CLEAR lv_umlauts.
    lv_umlauts = lv_search_string.
    TRANSLATE lv_umlauts TO UPPER CASE.
    lo_umlauts->umlauts_conversion(
      EXPORTING
        im_text = lv_umlauts
      IMPORTING
        em_text = lv_umlauts ).

**/.. SOPABBA - (NPSCC-10769)- German Umlauts to be recognized as ae,oe,ue, ss in PC app
*/..Loop at the internal table lt_supp_cont_persons assignning to the field symbols<fs_supp_cont_persons>
    LOOP AT lt_supp_cont_persons ASSIGNING FIELD-SYMBOL(<fs_supp_cont_persons>).

*/..Search the String in Partner /First Name/Last Name/Email Address field
*/..If Matching the pattern in any field, display the details of that entry
      IF <fs_supp_cont_persons>-partner2     CP lv_search_string OR
         <fs_supp_cont_persons>-partner2     CP lv_umlauts OR
         <fs_supp_cont_persons>-name_first   CP lv_search_string OR
         <fs_supp_cont_persons>-name_first   CP lv_umlauts OR
         <fs_supp_cont_persons>-name_last    CP lv_search_string OR
         <fs_supp_cont_persons>-name_last    CP lv_umlauts OR
         <fs_supp_cont_persons>-smtp_address CP lv_search_string OR
         <fs_supp_cont_persons>-smtp_address CP lv_umlauts.
*/..Get the values of the field sybmol <fs_supp_cont_persons> to et_entityset.
        APPEND INITIAL LINE TO et_entityset
                               ASSIGNING FIELD-SYMBOL(<fs_entity>).
*/..Move corresponding values from the field symbol <fs_supp_cont_persons> to <fs_entity>
        MOVE-CORRESPONDING <fs_supp_cont_persons> TO <fs_entity>.
*../Get supplier_id, email address, firstname, lastname, telephone number into et_entityset
        <fs_entity>-supplier_id = <fs_supp_cont_persons>-partner1.
        <fs_entity>-partner     = <fs_supp_cont_persons>-partner1.
        <fs_entity>-partner2    = <fs_supp_cont_persons>-partner2.
        <fs_entity>-email       = <fs_supp_cont_persons>-smtp_address.
        <fs_entity>-firstname   = <fs_supp_cont_persons>-name_first.
        <fs_entity>-lastname    = <fs_supp_cont_persons>-name_last.
        <fs_entity>-tel1_number = <fs_supp_cont_persons>-tel_number.
        <fs_entity>-edoc_flag   = <fs_supp_cont_persons>-edoc_flag.

      ENDIF.

    ENDLOOP.
* BOC { US# 21062 by SWDENDI PC: sorting of supplier contact table
    lt_orderby = io_tech_request_context->get_orderby( ).
    IF lt_orderby IS INITIAL.
      SORT et_entityset BY edoc_flag DESCENDING.
    ENDIF.
* EOC { US# 21062 by SWDENDI PC: sorting of supplier contact table
*/.. Below logic is for tile count and result count.
    es_response_context-inlinecount = lines( et_entityset ).
*/.. Below logic for paging and lazy loading functionality.
    IF is_paging IS NOT INITIAL.
      IF is_paging-skip EQ 0.
        DELETE et_entityset FROM is_paging-top + 1.
      ELSE.
        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
        DELETE et_entityset FROM 1 TO is_paging-skip.
      ENDIF.

    ENDIF.


  ENDMETHOD.


  METHOD supplierconfirma_create_entity.
*----------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                          &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 08-Mar-2018                                           &*
*& Description: US#9135: Create Supplier Confirmation                 &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*

"*&-------------------------DATA DECLARATIONS---------------------------*
"    DATA: lv_update     TYPE char10 VALUE 'UPDATE',
"          ls_input_data TYPE zcl_zfio_mng_ctr_mpc=>ts_supplierconfirmation,
"          lt_messages   TYPE bapiret2_t,
"          lo_ctr_app    TYPE REF TO zcl_contract_app,
"          lo_exception  TYPE REF TO /iwbep/cx_mgw_busi_exception.
"*&---------------------------------------------------------------------*

"* Reading the input data
"    io_data_provider->read_entry_data(
"              IMPORTING es_data = ls_input_data ).

"    IF ls_input_data IS NOT INITIAL.

"      CREATE OBJECT lo_ctr_app.

"*{ BOC- US# 9134 -RKORADA - 12/03/2018
"*    Begin of comments by KASUING*code clean up*20/09/2019
"*    SELECT object_id FROM crmd_orderadm_h
"*          INTO @DATA(lt_ctr_number)
"*          WHERE guid EQ @ls_input_data-guid.
"*    ENDSELECT.
"*   End of commetns by KASUING*code clean up*20/09/2019
"*   Begin of changes by KASUING*code clean up*20/09/2019
"      SELECT SINGLE object_id
"        FROM crmd_orderadm_h
"        WHERE guid EQ @ls_input_data-guid
"        INTO @DATA(lt_ctr_number).
"*   End of changes by KASUING*code clean up*20/09/2019
"      IF sy-subrc IS NOT INITIAL.
"        CLEAR lt_ctr_number.
"      ENDIF.
"*} EOC- US# 9134 -RKORADA - 12/03/2018

"*   Call method to update the supplier confirmation
"      lo_ctr_app->supplier_confirmation(
"                    EXPORTING im_ctr_head_guid  = ls_input_data-guid
"                              im_supp_conf_date = ls_input_data-supp_conf_date
"                              im_supp_conf_num  = ls_input_data-supp_conf_num
"                              im_action         = lv_update
"                              im_document_id    = lt_ctr_number           " US# 9134 -RKORADA - 12/03/2018
"                    IMPORTING ex_messages       = lt_messages ).

"      IF lt_messages[] IS NOT INITIAL.

"        CREATE OBJECT lo_exception .
"*     Add messages to container & instantiate container
"        lo_exception->get_msg_container( )->add_messages_from_bapi(
"                                    it_bapi_messages = lt_messages ).
"*     Raise exception
"        RAISE EXCEPTION lo_exception.

"      ELSE.

"        er_entity = ls_input_data.

"      ENDIF.

"    ENDIF.

  ENDMETHOD.


  METHOD supplierset_get_entity.
*---------------------------------------------------------------------*
*& Date       : 10-April-2018                                        &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi (TTHIRUM)                                 &*
*& Description: SP34_US#12091                                        &*
*&              Fiori App Contract - Activate Quick view card        &*
*---------------------------------------------------------------------*

    "DATA: lo_supplier  TYPE REF TO zcl_carry_out_sourcing,
"          lo_supp_info TYPE REF TO zcl_search_help_and_info,
"          lt_supplier  TYPE TABLE OF zcl_fio_manage_po_mpc=>ts_suppliersearch,
"          ls_supplier  LIKE LINE OF lt_supplier,
"          ls_key_tab   TYPE /iwbep/s_mgw_name_value_pair,
"          lv_supplier  TYPE bu_partner,
"          lv_url       TYPE /bofu/url,
"          lv_partner   TYPE c LENGTH 10.


"    CREATE OBJECT lo_supplier.

"    DATA lt_key_tab LIKE it_key_tab .

"    IF it_key_tab[] IS NOT INITIAL.
"      lt_key_tab[] = it_key_tab[] .
"      SORT lt_key_tab BY name .
"    ENDIF.

"*    READ TABLE lt_key_tab WITH KEY name = 'Partner' INTO ls_key_tab BINARY SEARCH .
"    READ TABLE lt_key_tab WITH KEY name = 'SupplierId' INTO ls_key_tab BINARY SEARCH .
"    IF sy-subrc = 0.

"      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
"        EXPORTING
"          input  = ls_key_tab-value
"        IMPORTING
"          output = lv_supplier.

"      CREATE OBJECT lo_supp_info.

"*/..Get the supplier information for Quick View card
"      CALL METHOD lo_supp_info->get_supplier_info
"        EXPORTING
"          iv_supplier = lv_supplier
"        IMPORTING
"          es_supplier = ls_supplier.

"      lv_partner = ls_supplier-partner.
"      IF lv_partner CP '01*'.
"        lv_partner = lv_partner+1(9).
"      ELSEIF lv_partner CP '0*'.
"        lv_partner = lv_partner+2(8).
"      ELSE.
"        lv_partner = lv_partner+0(8).
"      ENDIF.
"*/..Pass URL for SDB link
"      CONCATENATE TEXT-001 TEXT-002 INTO lv_url.
"      CONCATENATE lv_url lv_partner INTO ls_supplier-url.
"      MOVE-CORRESPONDING ls_supplier TO er_entity.
"    ENDIF.

"***Begin of changes by kausing for 23276 0n 28.08.2019***
"**get supplier ID

"    IF lv_supplier IS NOT INITIAL.
"      SELECT SINGLE zsupplglbid
"                  FROM but000
"                  INTO @DATA(lv_gsupp)
"                  WHERE partner = @lv_supplier.

"      IF sy-subrc = 0.
"** Fetch links
"        SELECT appname,
"               systemid,
"               protocol,
"               server,
"               port,
"               link1
"               INTO TABLE @DATA(lt_links)
"               FROM zfio_links
"               WHERE appname IS NOT NULL "kausing*vforge fix
"               AND   systemid EQ @sy-sysid.
"        IF sy-subrc EQ '0'.
"          SORT lt_links BY appname .
"*** SPI Link
"          CONDENSE lv_supplier.
"          SHIFT lv_supplier LEFT DELETING LEADING '0'.
"          IF line_exists( lt_links[ appname = '13' ] ).
"            er_entity-spi_link =  |{ lt_links[ appname = '13' ]-protocol }| &&
"                                  |{ lt_links[ appname = '13' ]-server }| &&
"                                  |{ lt_links[ appname = '13' ]-port }| &&
"                                  |{ lt_links[ appname = '13' ]-link1 }| &&
"                                  |{ lv_supplier }|.

"          ENDIF.
"        ENDIF.
"      ENDIF.
"    ENDIF.
***End of changes by kausing for 23276 0n 28.08.2019***

  ENDMETHOD.


  METHOD supplierset_get_entityset.
*---------------------------------------------------------------------*
*& Class      : ZCL_ZFIO_MNG_CTR_DPC_EXT                         &*
*& Developer  : Infosys / Ramjee Korada (RKORADA)                    &*
*& Created    : 2017-11-02                                           &*
*& Description: This method is display suppliers in F4 help          &*
*&              US# 2943                                             &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        17-Apr-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#11606                             &*
*&              Getting supplier list based on filter options         &*
*----------------------------------------------------------------------*

    DATA: lt_filters    TYPE /iwbep/t_mgw_select_option,
          lt_order      TYPE /iwbep/t_mgw_sorting_order,
          lo_common_cls TYPE REF TO zcl_search_help_and_info.

    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

* BOC Bug# 21051_Filter on exclude supplier number and on local supplier number does not work_BY SOPABBA
    IF lt_filters IS NOT INITIAL.

      DATA(lt_select_option) = lt_filters.

    ELSE.

      TRY.
          lt_select_option  =  cl_clb2_tools=>odata_filter2select_option(
                                        iv_filter_string = iv_filter_string ).
        CATCH cx_clb2_parse.
          CLEAR lt_select_option.
      ENDTRY.

      DATA(temp) = io_tech_request_context->get_osql_where_clause( ).
*        CATCH /iwbep/cx_mgw_busi_exception.    "
*        CATCH /iwbep/cx_mgw_tech_exception.    "

    ENDIF.
* EOC Bug# 21051_Filter on exclude supplier number and on local supplier number does not work_BY SOPABBA
    CREATE OBJECT lo_common_cls.

* Get supplier list from CDS view.
    lo_common_cls->get_supplier_list(
      EXPORTING
        iv_srh_string     = iv_search_string
        iv_filter_options = lt_select_option "lt_filters                                   " Venky US#11606
        is_paging         = is_paging
        it_orderby        = it_order
      IMPORTING
        et_supplier_list  = et_entityset ).

*  Begin of changes by KAUSING*NPSCC-21657*Suppleir sorting
*   DATA(lt_order) = it_order[].
*   SORT lt_order BY property.
*
*   IF line_Exists( lt_order[ property = 'SupplierId' ] ).
*      CASE lt_order[ property = 'SupplierId' ]-order.
*        WHEN 'asc'.
*          SORT et_entityset BY partner ASCENDING.
*        WHEN OTHERS OR 'desc'.
*          SORT et_entityset BY partner DESCENDING.
*      ENDCASE.
*    ENDIF.

*  IF line_Exists( lt_order[ property = 'SupplierName' ] ).
*      CASE lt_order[ property = 'SupplierId' ]-order.
*        WHEN 'asc'.
*          SORT et_entityset BY partner ASCENDING.
*        WHEN OTHERS OR 'desc'.
*          SORT et_entityset BY partner DESCENDING.
*      ENDCASE.
*    ENDIF.

*  End of chnages by KAUSING*NPSCC-21657*supplier sorting



  ENDMETHOD.


  METHOD uomf4set_get_entityset.
************************************************************************
* Author             : TSACHAN                                        *
* Title              : UOM F4 help                                    *
* Date               : 28/11/2017                                     *
* Module             : Contracts                                      *
* User Story         : 3004                                           *
*_____________________________________________________________________*
* DESCRIPTION                                                         *
*   As buyer/junior buyer/purchasing assistant I want to be able     *
*   to select a currency for my item so that mandatory information    *
*   is provided.                                                     *
*                                                                     *
***********************************************************************
*& Change Log                                                        &*
*&-------------------------------------------------------------------&*
*& Date       : 21-Mar-2018                                          &*
*& Responsible: Infosys                                              &*
*& Developer  : Tamilarasi (TTHIRUM)                                 &*
*& Description: SP34_US#10838-                                       &*
*&              Filter UOMs in PO app and PC app so that only UOMs   &*
*&              mapped with GLOBUS are selectable                    &*
*---------------------------------------------------------------------*


*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
   " TYPES: lty_uom       TYPE RANGE OF msehl,
"           lty_entityset TYPE TABLE OF zuom_details WITH DEFAULT KEY.
"    DATA: lt_unit_om       TYPE TABLE OF zuom_details , "t006a,
"          lv_search_string TYPE string,
"          lv_cond_str      TYPE string,
"          lt_filters       TYPE         /iwbep/t_mgw_select_option,
"          ls_filter        TYPE         /iwbep/s_mgw_select_option,
"          lt_uomrange      TYPE RANGE OF msehl,
"          lv_entity        LIKE LINE OF et_entityset,
"          lv_partno        TYPE crmt_ordered_prod_db,              "SP_39-US13815 By--TTHIRUM
"          lt_uom           TYPE STANDARD TABLE OF t006a,
"          lv_es1           TYPE char4,        "NPSCC24309*kausing
"          lv_es2           TYPE char4,        " npscc 24309 *kausing
"          lv_itemcodetype  TYPE char2.        " npscc 24309 kausing
"    CONSTANTS: lc_x TYPE c VALUE 'X'.

"*    -get filter
"    lt_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).
"    SORT lt_filters BY property.
"*/..Assign the Part Master # to pass it to table to get coorresponding UOMs
"    READ TABLE lt_filters WITH KEY property = 'PART_NO' INTO ls_filter BINARY SEARCH.        "SP_39-US13815 By--TTHIRUM
"    IF sy-subrc EQ 0.
"      READ TABLE ls_filter-select_options ASSIGNING FIELD-SYMBOL(<fs_pt>) INDEX 1.
"      IF sy-subrc EQ 0 AND <fs_pt> IS ASSIGNED.
"        lv_partno = <fs_pt>-low.
"      ENDIF.
"*     Begin of changes by kausing*npscc 24309*
"      IF line_exists( lt_filters[ property = 'ES1' ] ).
"        lv_es1 = lt_filters[ property = 'ES1' ]-select_options[ 1 ]-low.
"        CONDENSE lv_es1.
"      ENDIF.
"      IF line_exists( lt_filters[ property = 'ES2' ] ).
"        lv_es2 = lt_filters[ property = 'ES2' ]-select_options[ 1 ]-low.
"        CONDENSE lv_es2.
"      ENDIF.
"      IF line_exists( lt_filters[ property = 'ITEMCODETYPE' ] ).
"        lv_itemcodetype = lt_filters[ property = 'ITEMCODETYPE' ]-select_options[ 1 ]-low.
"      ENDIF.
"      zcl_part_creation=>concatenate_basic_part_es1_es2(
"              EXPORTING
"                im_es1 = CONV #( lv_es1 )
"                im_es2 = CONV #( lv_es2 )
"                im_basic_part = CONV #( lv_partno )
"              IMPORTING
"               ex_part_no = DATA(lv_partnew) ).
"      lv_partno = lv_partnew.
"      IF lv_itemcodetype IS NOT INITIAL AND lv_itemcodetype NE 'A0'.
"        lv_partno = |{ lv_partno }| && |_| && |{ lv_itemcodetype }|.
"      ENDIF.
"*     End of changes by kausing*npscc 24309*
"    ELSE.
"*"-- Get Serach criteria values for field MESH3                                       "-- VF fix
"      READ TABLE lt_filters WITH KEY property = 'MSEH3' INTO ls_filter BINARY SEARCH.
"      IF sy-subrc EQ 0.
"        LOOP AT ls_filter-select_options ASSIGNING FIELD-SYMBOL(<fs_vi>).
"          APPEND INITIAL LINE TO lt_uomrange ASSIGNING FIELD-SYMBOL(<fs_uomrange>).
"          <fs_uomrange>-sign = <fs_vi>-sign .
"          <fs_uomrange>-option = <fs_vi>-option .
"          <fs_uomrange>-low = <fs_vi>-low .
"          <fs_uomrange>-high = <fs_vi>-high .
"        ENDLOOP.
"      ENDIF.
"    ENDIF.


"*"--  iv_search_string will hold the values entered in Generic Search field on screen for UOM
"*/..If iv_search_string is not initial move the values to local variable lv_search_string
"    IF iv_search_string IS NOT INITIAL.
"      MOVE iv_search_string TO lv_search_string.
"*/..Concatenate lv_search_string with '*'.
"      CONCATENATE '*' lv_search_string '*' INTO lv_search_string.
"*/..Translate the value of lv_search_string into upper case.
"      TRANSLATE lv_search_string TO UPPER CASE.

"    ENDIF.

"*"---  Fetch UOM values to be used in F4 help                                        "-- VF fix _ DSQK902539/DSQK902547_By Nihar-18Sep17
"*/..Fetch mandt,Language Key, unit of measurement, External Unit of Measurement in Commercial Format,
"*..External Unit of Measurement in Internal Format, Unit of Measurement Text, decimal unit from the table
"*..t006a, with left outer join from the table t006 where unit of measurement equals and populate into
"*..internal table lt_uom../.

"    IF lv_partno IS NOT INITIAL.
"*---> Get part master UOMs from COMM_PRODUCT and COMM_PR_UNIT using INNER JOIN
"      SELECT a~client, a~product_guid, a~product_id,
"             b~unit, b~is_base_unit
"        FROM comm_product AS a
"        INNER JOIN comm_pr_unit AS b
"          ON a~product_guid EQ b~product_guid
"        WHERE a~product_id EQ @lv_partno
"        INTO TABLE @DATA(it_comm).

"      IF sy-subrc = 0.
"* BOC { US NPSCC-20829_BY SOPABBA
"        APPEND LINES OF VALUE lty_uom(  FOR <fs_pr_unit> IN it_comm
"                                                ( sign    = 'I'
"                                                  option  = 'EQ'
"                                                  low     = <fs_pr_unit>-unit
"                                                  ) )
"                                               TO lt_uomrange.
"*   Allow using UOMs in PCont that are in the same physical dimension as the base UOM of the part master
"*        Begin of comments by KAUSING*npscc 30692
"*        IF line_exists( it_comm[ is_base_unit = 'X' ] ).
"*          DATA(lv_base_uom) = it_comm[ is_base_unit = 'X' ]-unit.

"*          IF lv_base_uom IS NOT INITIAL.
"*
"*            SELECT a~dimid, b~msehi
"*              INTO TABLE @DATA(it_uom_dim)
"*              FROM t006 AS a
"*              INNER JOIN t006 AS b
"*              ON a~dimid EQ b~dimid
"*              BYPASSING BUFFER
"*              WHERE a~msehi EQ @lv_base_uom
"*                AND a~dimid IS NOT NULL.
"*
"*            IF sy-subrc EQ 0.
"*
"*              DELETE it_uom_dim WHERE dimid EQ 'AAAADL'.    " NPSCC-24309 - Other uoms are shown in F4 .
"*
"*              APPEND LINES OF VALUE lty_uom(  FOR <fs_uom_dim> IN it_uom_dim
"*                                                ( sign = 'I'
"*                                                  option = 'EQ'
"*                                                  low = <fs_uom_dim>-msehi
"*                                                  ) )
"*                                               TO lt_uomrange.
"*            ENDIF.
"*          ENDIF.
"*        ENDIF.
"*        End of changes by KAUSING*npscc 30692
"      ENDIF.
"    ENDIF.

"*---> If UOMs are present for Part master then get UOM details from T006A and T006 using LEFT OUTER JOIN
"    SELECT a~mandt, a~spras, a~msehi, a~mseh3,
"      a~mseh6, a~mseht, a~msehl, b~dimid, b~decan
"      FROM t006a AS a
"      LEFT OUTER JOIN t006 AS b
"      ON a~msehi = b~msehi
"      WHERE a~spras EQ @sy-langu
"      AND a~msehi IN @lt_uomrange
"      AND b~kzkeh EQ 'X'
"      AND b~primary EQ 'X'
"      INTO TABLE @DATA(lt_unit_measure)
"      BYPASSING BUFFER.
"*---> If there are no records for selected UOM then clear IT_UCOMM table
"    IF sy-subrc NE 0.
"      CLEAR lt_unit_measure[].
"    ENDIF.
"    " US#11158 VMANCHA - Deleting UOMs based on dimension (it is for Weight UOM for conditions)
"    DATA(lv_dimension) = VALUE #( lt_filters[ property = 'DIMENSION' ]-select_options[ 1 ]-low OPTIONAL ).
"    IF lv_dimension IS NOT INITIAL.
"      DELETE lt_unit_measure WHERE dimid <> lv_dimension.
"    ENDIF.
"**
"***/..Loop at the internal table lt_uom and get the corresponding values into et_entityset
"    LOOP AT lt_unit_measure ASSIGNING FIELD-SYMBOL(<fs_uom>).
"*      WHERE spras = sy-langu AND ( mseh3 IN lt_uomrange OR msehl IN lt_uomrange ).

"*      lv_entity-mseh3 = <fs_uom>-mseh3.
"      lv_entity-msehi = <fs_uom>-msehi.
"*      lv_entity-mseh6 = <fs_uom>-mseh6.
"      lv_entity-decan = <fs_uom>-decan.
"      lv_entity-msehl = <fs_uom>-msehl.
"*      lv_entity-mseht = <fs_uom>-mseht.
"      lv_entity-spras = <fs_uom>-spras.
"      lv_entity-part_no = lv_partno .

"      IF lv_search_string IS NOT INITIAL.

"        IF lv_entity-msehl CP lv_search_string
"           OR lv_entity-msehi CP lv_search_string . "RKORADA-NPSCC-25528 : NPM PC: UoM "GS" not available
"          APPEND lv_entity TO et_entityset.
"        ENDIF.
"      ELSE.
"        APPEND lv_entity TO et_entityset.
"      ENDIF.

"      CLEAR lv_entity.
"    ENDLOOP.

"* EOC }  US NPSCC-20829_BY SOPABBA
"*"-- Delete duplicates from result                                                  "-- VF fix _ DSQK902539/DSQK902547_By Nihar-18Sep17
"    SORT et_entityset BY msehi.    "Sort the entityset by External Unit of Measurement in Commercial Format
"    DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING msehi.

"*/.. Below logic for paging and lazy loading functionality.
"    IF is_paging IS NOT INITIAL.
"      IF is_paging-skip EQ 0.
"        DELETE et_entityset FROM is_paging-top + 1.
"      ELSE.
"        DELETE et_entityset FROM is_paging-top + is_paging-skip + 1 TO lines( et_entityset ).
"        DELETE et_entityset FROM 1 TO is_paging-skip.
"      ENDIF.

"    ENDIF.

*/.. RKORADA - End of logic for paging and lazy loading.

  ENDMETHOD.
ENDCLASS.
