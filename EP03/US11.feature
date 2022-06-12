Feature: US11 - Como usuario de la app quiero contactarme rápidamente con la persona con la que he realizado un acuerdo de exclusividad para coordinar la fecha de venta.

  Scenario Outline: E01 - El usuario decide contactar con la persona con la que ha realizado acuerdo de exclusividad.
    Given que el usuario quiere contactarse con dicha persona
    When seleccione la opción [Mayoristas interesados]
    Then puede visualizar la información detallada del otro usuario
    And puede contactarlo.

    Examples:
      | Botón[Mayoristas interesados] |  | Ventana               |
      | Clic();                       |  | Información detallada |

  Scenario Outline: E02 - El usuario no puede contactarse con la persona con la que ha realizado acuerdo de exclusividad.
    Given que el usuario quiere contactarse con dicha persona
    When seleccione la opción [Mi acuerdo de exclusividad]
    And no puede visualizar ningún detalle acerca del acuerdo
    Then le aparece el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Botón[Mi acuerdo de exclusividad] |  | Mensaje                                   |
      | Clic();                           |  | [Revise su conexión e intente nuevamente] |
