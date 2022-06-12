Feature: US01 - Como agricultor usuario de la app quiero promocionar mis cultivos orgánicos para obtener mayores ventas e ingresos

  Scenario Outline: E01 - El usuario promociona sus productos orgánicos
    Given que el usuario desea promocionar sus productos
    Then seleccione la opción [Promocionar]
    When le aparecen los campos que tiene que completar obligatoriamente
    And puede promocionar sus productos.

    Examples:
      | Botón[Promocionar] |  | Ventana                 |
      | Clic();            |  | Campos para promocionar |

  Scenario Outline: E02 - El usuario no puede promocionar sus productos orgánicos
    Given que el usuario desea promocionar sus productos
    When intente seleccionar la opción [Promocionar]
    Then le aparece el mensaje [Complete todos los campos] para promocionar sus productos.

    Examples:
      | Botón[Promocionar] |  | Mensaje                     |
      | Clic();            |  | [Complete todos los campos] |
