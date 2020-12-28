*&---------------------------------------------------------------------*
*& Report ZSTRUCTTEST_CTR_FIO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSTRUCTTEST_CTR_FIO.

DATA: lo_type_desc   TYPE REF TO cl_abap_typedescr.

 cl_abap_structdescr=>describe_by_name(
      EXPORTING
        p_name         = 'ZCL_FIO_MNG_CTR_MPC_EXT=>TS_CTR_DEEP_ENTITY'
      RECEIVING
        p_descr_ref    = lo_type_desc    " Reference to description object
      EXCEPTIONS
        type_not_found = 1
        OTHERS         = 2
        ).

        if sy-subrc <> 1.
          write 'hey'.
         endif.
