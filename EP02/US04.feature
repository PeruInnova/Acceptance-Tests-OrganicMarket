Feature: US04 - Como agricultor usuario de la app quiero editar y/o eliminar los productos que estoy ofreciendo en la app para evitar confusiones con los compradores

  Scenario Outline: E01 - El usuario actualiza el estado de la oferta del producto.
    Given que el usuario desea actualizar el estado de la oferta del producto
    When seleccione la opción [Editar]
    Then puede modificar los campos de la oferta publicada
    And los cambios se guardarán automáticamente conforme vaya cambiando los datos.

    Examples:
      | Botón[Editar] |  | Ventana |
      | Clic();       |  | Editar  |

  Scenario Outline: E02 - El usuario elimina la oferta del producto.
    Given que el usuario desea eliminar lo oferta de tal producto
    When seleccione la opción [Eliminar producto en venta]
    Then se eliminará automáticamente

    Examples:
      | Botón[Eliminar producto en venta] |  | Acción                 |
      | Clic();                           |  | Eliminacion automatica |

  Scenario Outline: E03 - El usuario no puede actualizar el estado de la oferta del producto.
    Given que el usuario desea actualizar el estado de la oferta del producto
    When seleccione la opción [Editar] o [Eliminar producto en venta]
    And no le aparece ningún otro evento
    Then le aparece el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Botón[Editar] |  | Botón[Eliminar producto en venta] |  | Mensaje                                   |
      | Clic();       |  | Clic();                           |  | [Revise su conexión e intente nuevamente] |