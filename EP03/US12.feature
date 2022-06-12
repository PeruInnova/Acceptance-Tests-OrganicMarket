Feature: US12 - Como usuario de la app quiero poder cancelar los acuerdos de exclusividad con los agricultores o mayoristas para evitar pérdidas económicas o enfocarme en otros rubros.

  Scenario Outline: E01 - El usuario decide cancelar el acuerdo de exclusividad.
    When seleccione la opción [Mi acuerdo de exclusividad]
    And presione la opción [Cancelar acuerdo de exclusividad]
    Then el sistema verifica que se haya concretado la última operación de venta entre ambos usuarios y le aparecerá el mensaje [¿Desea cancelar el acuerdo?] junto con las opciones [Aceptar] y [Cancelar]
    And el acuerdo se cancela cuando presione la primera opción y le llega una notificación al otro usuario.

    Examples:
      | Botón[Mi acuerdo de exclusividad] |  | Botón[Cancelar acuerdo de exclusividad] |  | Mensaje                       |  | Botón[Aceptar] |  | Botón[Cancelar] |
      | Clic();                           |  | Clic();                                 |  | [¿Desea cancelar el acuerdo?] |  | Clic();        |  | Clic();         |

  Scenario Outline: E02 - Escenario 2: El usuario decide cancelar el acuerdo de exclusividad, pero no se concreta.
    Given que el usuario decide cancelar el acuerdo de exclusividad
    When seleccione la opción [Mi acuerdo de exclusividad]
    And no le aparece el mensaje de confirmación, debido a que el sistema verifica que no se concretó el último acuerdo
    Then se mostrará el mensaje [Debe concretar la última operación de venta con el otro usuario para poder cancelar el acuerdo de exclusividad con ese usuario].

    Examples:
      | Botón[Mi acuerdo de exclusividad] |  | Mensaje                                                                                                                          |
      | Clic();                           |  | [Debe concretar la última operación de venta con el otro usuario para poder cancelar el acuerdo de exclusividad con ese usuario] |