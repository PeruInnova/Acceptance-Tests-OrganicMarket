Feature: US03 - Como agricultor usuario de la app quiero conocer la información detallada de los compradores que estén interesados en mis productos para contactarme con ellos

  Scenario Outline: E01 - El usuario accede a ver la información de contacto de las personas interesadas en su producto.
    Given que el usuario desea conocer la información detallada de los compradores
    When seleccione [Ver perfil] de algún usuario de la lista de personas interesadas.
    Then le aparece la información de contacto confiable sobre este proveedor.

    Examples:
      | [Ver perfil]   |  | Ventana                 |
      | Seleccionar(); |  | información de contacto |

  Scenario Outline: E02 - El usuario no puede acceder a ver la información de contacto de las personas interesadas en su producto.
    Given que el usuario desea conocer la información detallada de los compradores
    When seleccione a algún usuario de la lista de personas interesadas.
    And no le aparece su información de contacto
    Then le aparece el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | [Ver perfil]   |  | Mensaje                                   |
      | Seleccionar(); |  | [Revise su conexión e intente nuevamente] |
