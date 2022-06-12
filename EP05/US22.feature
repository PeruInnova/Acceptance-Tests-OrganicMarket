Feature: US22 - Como usuario de la app quiero recibir notificaciones sobre productos nuevos que me interesan o si alguien me quiere contactar para saber las nuevas novedades y/o conocer a las personas interesadas en mis productos.

  Scenario Outline: E01 - El usuario recibe notificaciones en el celular
    Given que el usuario quiere recibir notificaciones sobre novedades de la app
    When habilite la opción [Notificaciones]
    Then le llegan notificaciones relevantes sobre diferentes novedades de la app.

    Examples:
      | Botón[Notificaciones] |  | Acción                              |
      | Clic();               |  | Le llegan notificaciones relevantes |

  Scenario Outline: E02 - El usuario no recibe notificaciones en el celular
    Given que el usuario quiere recibir notificaciones sobre novedades de la app
    When habilite la opción [Notificaciones]
    And no le llegue ninguna notificación durante un periodo de tiempo largo
    Then se muestra el mensaje en la app [Revise la configuración de notificaciones de su celular para brindarte nuevas novedades].

    Examples:
      | Botón[Notificaciones] |  | Mensaje                                                                                   |
      | Clic();               |  | [Revise la configuración de notificaciones de su celular para brindarte nuevas novedades] |

  Scenario Outline: E03 - El usuario ya no desea recibir más notificaciones en el celular
    Given que el usuario ya no quiere recibir notificaciones sobre novedades de la app
    When deshabilite la opción [Desabilitar Notificaciones]
    Then ya no le llega notificaciones de la app al celular.

    Examples:
      | Botón[Desabilitar Notificaciones] |  | Mensaje                                         |
      | Clic();                           |  | No le llega notificaciones de la app al celular |
