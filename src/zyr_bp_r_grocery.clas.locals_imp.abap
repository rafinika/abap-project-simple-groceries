CLASS lhc_grocery DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR ZyrRGrocery
        RESULT result,
      checkExpirationDate FOR MODIFY
        IMPORTING keys FOR ACTION ZyrRGrocery~checkExpirationDate RESULT result.
ENDCLASS.

CLASS lhc_grocery IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD checkExpirationDate.

    DATA: lt_groceries        TYPE TABLE FOR READ RESULT zyr_r_grocery,
          ls_grocery          TYPE STRUCTURE FOR READ RESULT zyr_r_grocery,
          lv_expiration       TYPE d,
          lv_current_date     TYPE d,
          lv_expired          TYPE abap_boolean,
          lt_update_groceries TYPE TABLE FOR UPDATE zyr_r_grocery.

    READ ENTITIES OF zyr_r_grocery
      IN LOCAL MODE ENTITY ZyrRGrocery
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT lt_groceries.

    LOOP AT lt_groceries INTO ls_grocery.
      lv_expiration = ls_grocery-Expirationdate.
      lv_current_date = cl_abap_context_info=>get_system_date( ).
      IF lv_expiration < lv_current_date.
        lv_expired = abap_true.
      ELSE.
        lv_expired = abap_false.
      ENDIF.

      APPEND VALUE #( id = ls_grocery-Id expired = lv_expired )
        TO lt_update_groceries.
      MODIFY ENTITIES OF zyr_r_grocery IN LOCAL MODE
        ENTITY ZyrRGrocery
        UPDATE FIELDS ( expired )
        WITH lt_update_groceries.
    ENDLOOP.

    result = VALUE #( FOR groceries IN lt_groceries
      ( id = groceries-id %param = groceries ) ).
  ENDMETHOD.
ENDCLASS.
