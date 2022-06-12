Feature: US19 - Como usuario de la app quiero valorar y escribir mis opiniones sobre otros usuarios con los que he negociado para dar a conocer el trato recibido por tal usuario.

  Scenario: E01 - El usuario valora y redacta comentarios a otros usuarios luego de haber realizado negocios con tal persona.
  Given que el usuario quiere valorar o comentar sobre negocios realizados con tal agricultor o mayorista.
  When presione la opción [Calificar] en el perfil de tal persona
  Then se muestra la bandeja de entrada para redactar su comentario
  And calificar mediante estrellas a tal usuario.

  Scenario: E02 - El usuario no puede valorar y redactar comentarios a otros usuarios luego de haber realizado negocios con tal persona.
  Given que el usuario quiere valorar o comentar sobre un agricultor o mayorista con el que no ha realizado ninguna compra o venta de productos orgánicos.
  When presione la opción [Calificar] en el perfil de tal persona
  And no le aparece la bandeja de entrada
  Then se muestra el mensaje [Debe de haber realizado alguna compra o venta con este usuario para poder calificarlo].
