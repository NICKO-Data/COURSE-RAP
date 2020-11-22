CLASS zcl_no_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_NO_HELLO_WORLD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( |Hello Mr. { cl_abap_context_info=>get_user_alias(  ) }| ).

  ENDMETHOD.
ENDCLASS.
