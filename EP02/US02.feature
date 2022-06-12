Feature: US02 - Como mayorista usuario de la app quiero conocer toda la información acerca del producto que se está vendiendo para contactarme con el vendedor y comprarle los productos

  Scenario Outline: E01 - El usuario accede a la información de la oferta publicada
    Given que el usuario desea conocer la información detallada de tales productos ofertados
    When seleccione el recuadro de dicho producto
    Then le aparece la información detallada del producto orgánico ofrecido y de su proveedor.

    Examples:
      | Seleccionar |  | Ventana               |
      | Producto    |  | información detallada |

  Scenario Outline: E02 - El usuario no puede acceder a la información de la oferta publicada.
    Given que el usuario desea conocer la información detallada de tales productos ofertados
    When seleccione el recuadro de dicho producto
    And no le aparece su información detallada
    Then le aparece el mensaje [Revise su conexión e intente nuevamente].

    Examples:
      | Seleccionar |  | Mensaje                                   |
      | Producto    |  | [Revise su conexión e intente nuevamente] |

