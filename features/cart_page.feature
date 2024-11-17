Feature: Gerenciamento de itens no carrinho
  Como usuário do e-commerce
  Quero gerenciar os itens no meu carrinho
  Para revisar e ajustar minha compra antes de finalizar

  Scenario: Exibir itens adicionados ao carrinho
    Given que o usuário adiciona itens ao carrinho
    When o usuário acessa a tela do carrinho
    Then todos os itens adicionados devem ser listados com título, quantidade, valor unitário e subtotal
    And o total geral da compra deve ser exibido abaixo da lista

  Scenario: Alterar quantidade de itens no carrinho
    Given que o usuário acessou a tela do carrinho
    When o usuário clica no botão "+" de um item
    Then a quantidade do item deve aumentar em 1
    And o subtotal do item deve ser atualizado
    And o total geral da compra deve ser atualizado

  Scenario: Remover itens do carrinho
    Given que o usuário acessou a tela do carrinho
    When o usuário clica no botão "Lixeira" de um item
    Then o item deve ser removido da lista
    And o total geral da compra deve ser atualizado

  Scenario: Carrinho vazio
    Given que o carrinho está vazio
    When o usuário acessa a tela do carrinho
    Then a mensagem "Seu carrinho está vazio" deve ser exibida
    And o botão "Finalizar pedido" deve estar desabilitado
