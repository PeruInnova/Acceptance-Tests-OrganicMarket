Feature: US21 - Como usuario de la app quiero ver las opiniones de los demás usuarios sobre los distintos agricultores o mayoristas que venden o compran productos orgánicos para conocer la manera de negociación recibida.

  Scenario: E01 - El usuario visualiza los comentarios de otros usuarios sobre un agricultor o mayorista.
  Given que el usuario quiere visualizar los comentarios hacia otros agricultores o mayoristas
  When vaya al perfil del usuario
  Then se muestra los comentarios y la valoración que le han puesto otras personas.

  Scenario: E02 - El usuario no puede visualizar los comentarios de otros usuarios sobre un agricultor o mayorista.
  Given que el usuario quiere visualizar los comentarios hacia otros agricultores o mayoristas
  When vaya al perfil del usuario
  And no se le muestre ningún comentario.
  Then se muestra el mensaje [Este usuario aún no tiene valoración] junto con la opción [Valorar usuario].
