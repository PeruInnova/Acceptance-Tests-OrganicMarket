Feature: US14 - Como agricultor usuario de la app quiero que las ventas realizadas me sean pagadas en el medio que yo prefiera para escoger el medio que más utilizo.

  Scenario Outline: E01 - El usuario cobra la venta de su producción mediante su medio de pago preferido.
    Given que el usuario quiere realizar el cobro de la venta de su producción
    And luego de haber llegado a un acuerdo con el comprador mayorista
    When presione la opción [Cobrar]
    And agregue una tarjeta a la app
    Then el usuario puede escoger el medio que desee para cobrar la venta.

    Examples:
      | Botón[Cobrar] |  | Ventana        |
      | Clic();       |  | Medios de Pago |

  Scenario Outline: E02 - El usuario no puede realizar el cobro de la venta de su producción.
    Given que el usuario quiere realizar el cobro de la venta de su producción
    When presione la opción [Cobrar]
    And solo se quede cargando sin aparecer nada
    Then se muestra el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Botón[Cobrar] |  | Mensaje                                   |
      | Clic();       |  | [Revise su conexión e intente nuevamente] |
