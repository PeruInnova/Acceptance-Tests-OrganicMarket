Feature: US13 - Como mayorista usuario de la app quiero acceder a diferentes medios de pago en las compras para escoger el medio de pago que más utilizo

  Scenario Outline: E01 - El usuario realiza el pago de la compra de productos mediante su medio de pago preferido.
    Given que el usuario quiere pagar la compra de la producción
    And luego de haber llegado a un acuerdo con el vendedor
    When presione la opción [Comprar]
    Then se muestran diferentes medios de pago

    Examples:
      | Botón[Comprar] |  | Ventana        |
      | Clic();        |  | Medios de Pago |

  Scenario Outline: E02 - El usuario no puede realizar el pago de la compra de productos mediante su medio de pago preferido.
    Given que el usuario quiere pagar la compra de la producción
    When presione la opción [Comprar]
    And no se muestren ningún medio de pago y se quede cargando
    Then se muestra el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Botón[Comprar] |  | Mensaje                                   |
      | Clic();        |  | [Revise su conexión e intente nuevamente] |