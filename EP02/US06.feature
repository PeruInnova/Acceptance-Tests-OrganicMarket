Feature: US06 - Como agricultor usuario de la app quiero filtrar a las personas interesadas en tal producto que estoy ofreciendo para escoger al comprador que quiera

  Scenario Outline: E01 - El usuario observa a las personas interesadas en su producto
    Given que el usuario desea ver a las personas interesadas en sus productos
    When seleccione la opción [Mayoristas interesados]
    Then le aparece el listado de las personas interesadas en sus productos agrícolas.

    Examples:
      | Botón[Mayoristas Interesados] |  | Ventana                       |
      | Clic();                       |  | Lista de personas interesadas |

  Scenario Outline: E02 - El usuario no observa a las personas interesadas en su producto
    Given que el usuario desea ver a las personas interesadas en sus productos
    When seleccione la opción [Mayoristas interesados]
    And no le aparece ningún usuario interesado
    Then le aparece el mensaje en mitad de la pantalla [Aún no hay personas interesadas en este producto].

    Examples:
      | Botón[Mayoristas Interesados] |  | Mensaje                                            |
      | Clic();                       |  | [Aún no hay personas interesadas en este producto] |
