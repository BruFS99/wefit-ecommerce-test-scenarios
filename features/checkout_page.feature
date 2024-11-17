Feature: Finalização do pedido
  Como usuário do e-commerce
  Quero confirmar minha compra com sucesso
  Para finalizar minha experiência de compra

  Scenario: Finalizar compra com sucesso
    Given que o usuário tem itens no carrinho
    When o usuário clica no botão "Finalizar pedido"
    Then o usuário deve ser redirecionado para a tela detalhes de pagamento
    And confirmar as opções de pagamento
    And a mensagem "Compra realizada com sucesso" deve ser exibida
    And o botão "Voltar" deve ser exibido

  Scenario: Retornar à tela inicial
    Given que o usuário está na tela de compra realizada
    When o usuário clica no botão "Voltar"
    Then o usuário deve ser redirecionado para a tela inicial
