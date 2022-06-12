Feature: US15 - Como usuario de la aplicación quiero iniciar sesión de manera rápida y segura para visualizar todos los productos ofertados.

  Scenario Outline: E01 - El usuario inicia sesión en la app.
    Given que el usuario coloca sus datos para iniciar sesión
    When presione la opción [Iniciar Sesión]
    Then el usuario puede ingresar a la app.

    Examples:
      | Botón[Iniciar Sesión] |
      | Clic();               |

  Scenario Outline: E02 - El usuario no puede iniciar sesión en la app.
    Given que el usuario coloca sus datos para iniciar sesión
    Then presione la opción [Iniciar Sesión]
    And no pueda acceder a la app
    When le aparece el mensaje [No se ha podido iniciar sesión. Intente nuevamente].

    Examples:
      | Botón[Iniciar Sesión] |  | Mensaje                                              |
      | Clic();               |  | [No se ha podido iniciar sesión. Intente nuevamente] |

  Scenario Outline: E03 - El usuario sigue sin poder iniciar sesión en la app en 5 intentos.
    Given que el usuario coloca sus datos para iniciar sesión
    When presione la opción [Iniciar Sesión] por quinta vez
    And siga sin poder ingresar a la app
    Then le aparece la opción [Forgot Password]

    Examples:
      | Botón[Iniciar Sesión] |  | Mensaje           |
      | Clic();               |  | [Forgot Password] |