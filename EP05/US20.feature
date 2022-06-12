Feature: US20 - Como usuario de la aplicación quiero poder contactarme con el soporte de la app para solucionar dudas o problemas

  Scenario Outline: E01 - El usuario contacta con el soporte de la app.
    Given que el usuario quiere contactarse con soporte
    When presione la opción [Contactar con soporte] en la pantalla de venta de productos
    Then se muestra un apartado donde el usuario puede escribir su molestia o duda y tiene que presionar la opción [Aceptar] para enviarlo
    And recibe respuesta mediante un correo electrónico.

    Examples:
      | Botón[Contactar con soporte] |  | Botón[Aceptar] |  | Acción                         |
      | Clic();                      |  | Clic();        |  | Se envia el correo electrónico |

  Scenario Outline: E02 - El usuario no se puede contactar con soporte
    Given que el usuario quiere contactarse con soporte
    When presione la opción [Contactar con soporte] en la pantalla de venta de productos
    And solo se quede cargando sin aparecer nada
    Then se muestra el mensaje [Escriba su problema para que pueda ser enviado a soporte].

    Examples:
      | Botón[Contactar con soporte] |  | Mensaje                                                    |
      | Clic();                      |  | [Escriba su problema para que pueda ser enviado a soporte] |
