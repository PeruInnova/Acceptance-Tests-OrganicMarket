Feature: US09 - Como usuario de la app quiero visualizar las publicaciones más recientes de los productos que se venden para conocer las últimas ofertas

  Scenario Outline: E01 - El usuario actualiza y visualiza las ofertas más recientes.
    Given que el usuario desea visualizar las ofertas más recientes
    When haga la búsqueda de algún producto en el que esté interesado
    Then se muestran por defecto las ofertas más actuales de productos orgánicos.

    Examples:
      | Barra de Busqueda     |  | Ventana                |
      | "Nombre del Producto" |  | Productos mas actuales |

  Scenario Outline: E02 - El usuario actualiza y no visualiza cambios en las ofertas.
    Given que el usuario desea visualizar las ofertas más recientes
    When haga la búsqueda de algún producto en el que esté interesado
    And se quede cargando sin observar cambios
    Then se muestra el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Barra de Busqueda     |  | Mensaje                                   |
      | "Nombre del Producto" |  | [Revise su conexión e intente nuevamente] |
