Feature: US08 - Como agricultor usuario de la app quiero visualizar todos los productos que voy ofertando para llevar un control de los productos que aún no he ofertado

  Scenario Outline: E01 - El usuario visualiza sus productos ofertados.
    Given que el usuario desea visualizar los productos que está ofertando
    When seleccione la opción [Mis Productos en venta]
    Then puede visualizar todos sus productos que ha ido ofertando.

    Examples:
      | Botón[Mis Productos en venta] |  | Ventana                |
      | Clic();                       |  | Mis productos en venta |

  Scenario Outline: E02 - El usuario no visualiza sus productos ofertados.
    Given que el usuario desea visualizar los productos que está ofertando
    When seleccione la opción [Mis Productos en venta]
    And no le aparece ningún producto
    Then le aparece el mensaje [Aún no ha promocionado ningún producto].

    Examples:
      | Botón[Mis Productos en venta] |  | Mensaje                                  |
      | Clic();                       |  | [Aún no ha promocionado ningún producto] |