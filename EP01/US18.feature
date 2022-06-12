Feature: US18 - Como usuario de la aplicación, quiero recibir un correo electrónico luego de haber realizado el pago de la suscripción para verificar que me haya registrado correctamente

  Scenario Outline: E01 - El usuario recibe la confirmación por correo electrónico.
    Given que el usuario realiza el pago de la suscripción
    And selecciona la opción [Enviar correo]
    When presione ello, el sistema le envía un correo de confirmación con todos los datos de registro.
    Then el usuario puede revisar el correo en su cuenta e ingresar a la app.

    Examples:
      | Botón[Enviar correo] |  | Correo                 |
      | Clic();              |  | Correo de Verificacion |

  Scenario Outline: E02 - El usuario no recibe la confirmación por correo electrónico.
    Given que el usuario realiza el pago de la suscripción
    And selecciona la opción [Enviar correo]
    When presione ello
    And no le llegue un correo de confirmación
    Then puede acceder a la opción [Reenvío de correo de confirmación].

    Examples:
      | Botón[Enviar correo] |  | Botón[Reenvío de correo de confirmación] |
      | Clic();              |  | Clic();                                  |

