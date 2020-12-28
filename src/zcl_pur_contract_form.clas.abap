class ZCL_PUR_CONTRACT_FORM definition
  public
  create public .

public section.

  types:
    BEGIN OF ts_so10_texts,
        so10_name TYPE tdobname,
        so10_lan  TYPE spras,
        so10_text TYPE string,
      END OF ts_so10_texts .
  types:
    tt_so10_texts TYPE TABLE OF ts_so10_texts .
  types:
    tt_so10_names TYPE RANGE OF tdobname .

  methods PURCHASE_CONTRACT_FORM
    importing
      !IM_OBJECT_GUID type GUID
      !IM_OBJECT_ID type CRMT_OBJECT_ID_DB
      !IM_MEDIUM type CHAR10 optional
      !IM_CALL_APPROVAL type FLAG optional
      !IM_PREVIEW_FLAG type FLAG optional
      !IM_CANCEL_VERSION type FLAG optional
      !IM_LANGUAGE type SPRAS optional
    exporting
      "!ES_CTR_INFO type ZBBPS_SF_CTR_OUTPUT
      !E_XSTRING type XSTRING
      !EV_OBJECT_ID type CRMT_OBJECT_ID_DB .
protected section.
private section.

  data AT_LANGUAGE type SPRAS .
ENDCLASS.



CLASS ZCL_PUR_CONTRACT_FORM IMPLEMENTATION.


  METHOD purchase_contract_form.
************************************************************************
* Author   :   Ramjee Korada
* Title    :   Purchase Contract for Adobe Form output
* Date     :
* Module   :
*_______________________________________________________________________
* DESCRIPTION                                                          *
*   Method to transfer the Purchase Contract for the Adobe Form Output
*   along with the xstring data.
************************************************************************
*----------------------------------------------------------------------*
*& Date:        16-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Sharanabasappa Noola (SHNOOLA)                        &*
*& Description: US# 13104: Re-work PC form header                     &*
*&--------------------------------------------------------------------&*
*& Date:        25-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Sharanabasappa Noola (SHNOOLA)                        &*
*& Description: US# 13082: Show Logo/ GBA/ Footer/ Headline signer Box&*
*&              and GPC´s                                             &*
*&--------------------------------------------------------------------&*
*& Date:        30-Jul-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Sharanabasappa Noola (SHNOOLA)                        &*
*& Description: US# 14009: Adjust Document titles, labels, numbers    &*
*&              for PC (incl. Change and Cancellation)                &*
*&--------------------------------------------------------------------&*
*& Date:        1-Aug-2018                                            &*
*& Responsible: Infosys                                               &*
*& Developer:   Sharanabasappa Noola (SHNOOLA)                        &*
*& Description: US# 13100:  Show line item table on NPM document      &*
*&--------------------------------------------------------------------&*
*& Date:        2-Aug-2018                                            &*
*& Responsible: Infosys                                               &*
*& Developer:   Sharanabasappa Noola (SHNOOLA)                        &*
*& Description: US# 13090:  Show consumption plant(s) on NPM          &*
*&--------------------------------------------------------------------&*
  ENDMETHOD.
ENDCLASS.
