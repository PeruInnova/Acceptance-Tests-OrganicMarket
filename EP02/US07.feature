Feature: US07 - Como mayorista de la app quiero filtrar la búsqueda de productos orgánicos para conocer los productos ofertados que me interesan

  Scenario Outline: E01 - El usuario visualiza los productos orgánicos que le interesan.
    Given que el usuario desea visualizar los productos orgánicos que le interesan
    When escriba el nombre del producto que le interesa en la barra de búsqueda
    And realice la búsqueda
    Then le aparece todas las ofertas sobre los productos que haya buscado.

    Examples:
      | Barra de Busqueda     |  | Ventana               |
      | "Nombre del Producto" |  | Productos encontrados |

  Scenario Outline: E02 - El usuario no visualiza los productos orgánicos que le interesan.
    Given que el usuario desea visualizar los productos orgánicos que le interesan
    When escriba el nombre del producto que le interesa en la barra de búsqueda y realice su búsqueda
    And no le aparece ninguna oferta
    Then le aparece el mensaje en el centro de la pantalla [No hemos encontrado ninguna oferta de ese producto].

    Examples:
      | Barra de Busqueda     |  | Mensaje                                              |
      | "Nombre del Producto" |  | [No hemos encontrado ninguna oferta de ese producto] |
