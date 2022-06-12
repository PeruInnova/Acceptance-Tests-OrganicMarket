Feature: US16 - Como usuario de la aplicación quiero editar la información de mi perfil y/o agregar datos adicionales para obtener un mejor perfil

  Scenario Outline: E01 - El usuario personaliza su perfil.
    Given que el usuario desea editar su perfil
    When seleccione la opción [Editar Perfil]
    Then le aparecen los campos a los que puede realizarle cambios en su perfil
    And puede acceder a la opción [Guardar Cambios].

    Examples:
      | Botón[Editar Perfil] |  | Ventana       |  | [Guardar Cambios] |
      | Clic();              |  | Editar Perfil |  | Clic();           |

  Scenario Outline: E02 - El usuario no puede personalizar su perfil.
    Given que el usuario desea editar su perfil
    Then seleccione la opción [Editar Perfil]
    And no le aparecen los campos para editar
    Then le aparece el mensaje [Intente iniciar sesión nuevamente].

    Examples:
      | Botón[Editar Perfil] |  | Mensaje                             |
      | Clic();              |  | [Intente iniciar sesión nuevamente] |