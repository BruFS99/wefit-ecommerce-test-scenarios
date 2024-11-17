Feature: Finalização do pedido
  Como usuário do e-commerce
  Quero confirmar minha compra com sucesso
  Para finalizar minha experiência de compra

  Scenario: Finalizar compra com sucesso
    Given que o usuário tem itens no carrinho
    When o usuário clica no botão "Finalizar pedido"
    Then o usuário deve ser redirecionado para a tela de compra realizada
    And a mensagem "Compra realizada com sucesso" deve ser exibida
    And o botão "Voltar" deve ser exibido

  Scenario: Retornar à tela inicial
    Given que o usuário está na tela de compra realizada
    When o usuário clica no botão "Voltar"
    Then o usuário deve ser redirecionado para a tela inicial

  Scenario: Tentativa de finalizar compra sem itens no carrinho
    Given que o carrinho está vazio
    When o usuário tenta finalizar a compra
    Then o botão "Finalizar pedido" deve estar desabilitado
    And a mensagem de erro "Adicione itens ao carrinho antes de finalizar a compra" deve ser exibida
