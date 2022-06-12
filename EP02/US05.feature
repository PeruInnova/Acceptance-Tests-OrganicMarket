Feature: US05 - Como usuario de la app quiero obtener información confiable sobre los diversos agricultores y mayoristas para contactarme con ellos de manera rápida y evitar estafas

  Scenario Outline: E01 - El usuario accede a la información de otro usuario.
    Given que el usuario desea visualizar la información de contacto de otro usuario
    When encuentre el producto que quiere, luego vea al vendedor
    And seleccione la opción [Vendedor: Nombre del vendedor]
    Then le aparece su información de perfil detallado.

    Examples:
      | Botón[Vendedor: "Nombre del vendedor"] |  | Ventana                |
      | Clic();                                |  | Información del Perfil |

  Scenario Outline: E02 - El usuario no visualiza la información de contacto de otro usuario.
    Given que el usuario desea visualizar la información de contacto de otro usuario
    Then realice la búsqueda de tal usuario
    And no encuentre a dicho usuario
    Then le aparece el mensaje en el centro [No hemos encontrado a dicho usuario].

    Examples:
      | Botón[Vendedor: "Nombre del vendedor"] |  | Mensaje                               |
      | Clic();                                |  | [No hemos encontrado a dicho usuario] |


