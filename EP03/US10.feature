Feature: US10 - Como usuario de la app quiero realizar acuerdos de exclusividad durante un periodo de tiempo con agricultores o mayoristas para evitar pérdidas de producción y poco abastecimiento.

  Scenario Outline: E01 - El usuario realiza acuerdos de exclusividad para la compra o venta de productos orgánicos con otro usuario.
    Given que el usuario quiere realizar un acuerdo de exclusividad con otro usuario sobre la compra-venta de productos
    When seleccione la opción [Contactar acuerdo de exclusividad]
    Then se contacta con el vendedor del producto, el cual, está interesado.

    Examples:
      | Botón[Contactar acuerdo de exclusividad] |  | Acción                                   |
      | Clic();                                  |  | Se contacta con el vendedor del producto |

  Scenario Outline: E02 - El acuerdo de exclusividad no se realiza.
    Given que el usuario completa los campos para realizar el acuerdo de exclusividad y le llega la notificación al otro usuario.
    When el vendedor aún no llegue aún acuerdo con el mayorista.
    Then el mayorista interesado pasa a la lista de interesados del vendedor

    Examples:
      | Botón[Contactar acuerdo de exclusividad] |  | Acción                                      |
      | Clic();                                  |  | Pasa a la lista de interesados del vendedor |