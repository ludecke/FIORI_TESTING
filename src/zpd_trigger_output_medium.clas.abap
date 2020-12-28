class ZPD_TRIGGER_OUTPUT_MEDIUM definition
  public
  final
  create public .

public section.

"  types:
"    BEGIN OF ty_output_medium,
"           output_medium      TYPE  ppfdmetype,
"           output_medium_desc TYPE  Zoutput_medium_desc,
"           mail               TYPE  c LENGTH  241,
"           default_flag(1)    TYPE c,
"         END OF ty_output_medium .
"  types:
"    lty_output_medium TYPE STANDARD TABLE OF ty_output_medium .

"  data GT_ATTACH type BBPT_PDS_ATT_T .
"  data AT_CTR_BUS2000113 type CRMT_SUBOBJECT_CATEGORY_DB value 'BUS2000113' ##NO_TEXT.
"  data GO_CONTRACT_APP_CLASS type ref to ZCL_CONTRACT_APP .
"  data GO_COMMON_APP_CLASS type ref to ZCL_SEARCH_HELP_AND_INFO .
"  data AT_CTR_NUMBER type CRMT_OBJECT_ID_DB .

  methods DEFINE_OUTPUT_MEDIUM
    importing
      !IM_MODE type CHAR20
      !IM_COMMIT type XFELD optional
      !IM_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB
      !IM_HEADER_GUID type GUID optional
    changing
      !CH_CTR_FIORI_DATA type ZCL_ZFIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY optional
      "!CH_OUTPUT_PARAMETERS type BBP_OUTPUT_PARA optional
      !CH_BUYER_EMAIL_ID type AD_SMTPADR optional.
      "!CH_OUTPUT_MEDIUM type LTY_OUTPUT_MEDIUM optional .
  methods TRIGGER_OUTPUT_MEDIUM
    importing
      !IM_OBJECT_TYPE type CRMT_SUBOBJECT_CATEGORY_DB
      !IM_HEADER_GUID type GUID.
    "changing
      "!CH_OUTPUT_PARAMETERS type BBP_OUTPUT_PARA optional .
  methods SEND_EMAIL
    importing
      !IM_DOC_NUM type CRMT_OBJECT_ID_DB
      !IM_DOC_HEAD_GUID type GUID
      !IM_OUTPUT_TYPE type PPFDMETYPE
      !IM_SO10_NAME type TDOBNAME
      !IM_EMAIL_ID type SO_NAME
    exporting
      !EX_MAIL_SENT type XFELD .
  methods GET_BUYER_DETAILS
    importing
      "!IM_PD_ORGDATA type BBPT_PD_ORG optional
      !IM_PURCH_GROUP_ID type STRING optional
      !IM_PD_INDEX type INTEGER1 optional
    exporting
      !EX_BUYER_EMAIL_ID type AD_SMTPADR
      !EX_BUYER_USER_ID type UNAME .
  methods SEND_EMAIL_NEW
    importing
      !IM_DOC_NUM type CRMT_OBJECT_ID_DB
      !IM_DOC_HEAD_GUID type GUID
      !IM_OUTPUT_TYPE type PPFDMETYPE
      !IM_SO10_NAME type TDOBNAME
      !IM_EMAIL_ID type SO_NAME .
  methods SEND_NOTIFICATION
    importing
      !IM_DOC_NUM type CRMT_OBJECT_ID_DB
      !IM_DOC_HEAD_GUID type GUID
      !IM_USER_ID type XUBNAME
    exporting
      !EX_NOTIF_SENT type XFELD .
protected section.
private section.

  data GV_DUMMY_PLANT type FLAG .
  data GV_ACTIVE_GUID type CRMT_OBJECT_GUID .

  methods UPDATE_TRIGGER_DATE_AND_TIME .
ENDCLASS.



CLASS ZPD_TRIGGER_OUTPUT_MEDIUM IMPLEMENTATION.


METHOD define_output_medium.
*----------------------------------------------------------------------*
*& Class      : ZPD_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 27-Jul-2018                                           &*
*& Description: US#2945 - Define output medium based on fiori/DB data &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17151                             &*
*&              Setting the global attribute with buyer id using      &*
*&              purchase group id.                                    &*
*&--------------------------------------------------------------------&*



ENDMETHOD.


METHOD GET_BUYER_DETAILS.
*----------------------------------------------------------------------*
*& Class      : ZPD_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 14-Aug-2018                                           &*
*& Description: US#12731 - Get the buyer email id                     &*
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


METHOD send_email.
*----------------------------------------------------------------------*
*& Class      : ZPD_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 14-Aug-2018                                           &*
*& Description: US#12731 - Send Email                                 &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date       : 04-10-2018                                            &*
*& Responsible: Infosys                                               &*
*& Developer  : Ramjee Korada (RKORADA)                               &*
*& Description: NPSCC-16547 -INT) PC: add external attachment in      &*
*&              the email send to supplier                            &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17151                             &*
*&              Changing the CC of buyer to BCC and also changing the &*
*&              email sender from initiator ID to buyer ID            &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17431                             &*
*&              Trigger email to supplier contact person when the doc &*
*&              output medium is eDoc and having SCP email ID         &*
*&--------------------------------------------------------------------&*
*& Date:        19-Dec-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17986                             &*
*&              Passing only the document number in subject and also  &*
*&              removing the document title in mail body              &*
*&--------------------------------------------------------------------&*
*& Date:        20-Dec-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Ramjee Korada ( RKORADA )                             &*
*& Description: Changes done for US#18022                             &*
*&              Deep link issue and email format in HTML              &*
*&--------------------------------------------------------------------&*
*& Date:        28-May-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Swathi Dendi ( SWDENDI )                              &*
*& Description: Changes done for US#18344                             &*
*&              ECS: Supplier communication (SR, E-Mail)              &*
*&--------------------------------------------------------------------&*
*& Date:        23-Oct-2020                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Kulsoom Fatima ( KFATIMA )                            &*
*& Description: Changes done for US#28928                             &*
*&              Notification email to Operative Buyer instead of      &*
*&              Responsible Buyer                                     &*
*&--------------------------------------------------------------------&*

*&------
ENDMETHOD.


METHOD SEND_EMAIL_NEW.
*----------------------------------------------------------------------*
*& Class      : ZPD_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 14-Aug-2018                                           &*
*& Description: US#12731 - Send Email                                 &*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date       : 04-10-2018                                            &*
*& Responsible: Infosys                                               &*
*& Developer  : Ramjee Korada (RKORADA)                               &*
*& Description: NPSCC-16547 -INT) PC: add external attachment in      &*
*&              the email send to supplier                            &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17151                             &*
*&              Changing the CC of buyer to BCC and also changing the &*
*&              email sender from initiator ID to buyer ID            &*
*&--------------------------------------------------------------------&*
*& Date:        29-Nov-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17431                             &*
*&              Trigger email to supplier contact person when the doc &*
*&              output medium is eDoc and having SCP email ID         &*
*&--------------------------------------------------------------------&*
*& Date:        19-Dec-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Venkateswara Reddy Manchala (VMANCHA)                 &*
*& Description: Changes done for US#17986                             &*
*&              Passing only the document number in subject and also  &*
*&              removing the document title in mail body              &*
*&--------------------------------------------------------------------&*
*& Date:        20-Dec-2018                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Ramjee Korada ( RKORADA )                             &*
*& Description: Changes done for US#18022                             &*
*&              Deep link issue and email format in HTML              &*
*&--------------------------------------------------------------------&*
*& Date:        28-May-2019                                           &*
*& Responsible: Infosys                                               &*
*& Developer:   Swathi Dendi ( SWDENDI )                              &*
*& Description: Changes done for US#18344                             &*
*&              ECS: Supplier communication (SR, E-Mail)              &*
*&--------------------------------------------------------------------&*

ENDMETHOD.


METHOD send_notification.
*----------------------------------------------------------------------*
*& Class      : ZCL_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 2019-Jul-02                                           &*
*& Description: US#20639 - Send notification to supplier contact person*
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


METHOD trigger_output_medium.
*----------------------------------------------------------------------*
*& Class      : ZPD_TRIGGER_OUTPUT_MEDIUM                        &*
*& Developer  : Infosys / Venkateswara Reddy Manchala (VMANCHA)       &*
*& Created    : 14-Aug-2018                                           &*
*& Description: US#12731 - Trigger output medium for purchase document&*
*&--------------------------------------------------------------------&*
*& Change Log                                                         &*
*&--------------------------------------------------------------------&*
*& Date:                                                              &*
*& Responsible:                                                       &*
*& Developer:                                                         &*
*& Description:                                                       &*
*----------------------------------------------------------------------*


ENDMETHOD.


  METHOD update_trigger_date_and_time.


  ENDMETHOD.
ENDCLASS.
