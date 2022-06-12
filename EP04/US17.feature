Feature: US17 - Como usuario de la app quiero recibir un correo de confirmación luego del pago de alguna compra o venta para saber que fue realizado de manera adecuada y en qué fecha.

  Scenario Outline: E01 - El usuario recibe el correo electrónico con la confirmación del cobro o pago de los productos orgánicos.
    Given que el usuario realizó el pago o cobro de la venta
    When seleccione la opción [Enviar correo]
    Then el sistema le envía un correo electrónico de confirmación con todos los detalles de la venta.

    Examples:
      | Botón[Enviar correo] |  | Acción                                                              |
      | Clic();              |  | El sistema envía un correo electrónico con los detalles de la venta |

  Scenario Outline: E02 - El usuario no recibe el correo electrónico con la confirmación del cobro o pago de los productos orgánicos.
    Given que el usuario realizó el pago o cobro de la venta
    When seleccione la opción [Enviar correo]
    And no le llegue ningún correo de confirmación
    Then le aparece la opción [Reenviar correo de confirmación]
    And el usuario tiene que presionarla para que se le reenvíe el correo.

    Examples:
      | Botón[Enviar correo] |  | [Reenviar correo de confirmación] |  | Acción                  |
      | Clic();              |  | Clic();                           |  | Se le reenvia el correo |
