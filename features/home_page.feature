Feature: Tela inicial do e-commerce
  Como usuário do e-commerce
  Quero visualizar a lista de filmes disponíveis
  Para poder adicionar itens ao carrinho

  Scenario: Exibição inicial da tela de listagem de filmes
    Given que o usuário acessa a tela inicial do e-commerce
    When a página é carregada
    Then todos os cards de filmes devem apresentar imagem, título e preço
    And o botão "Adicionar ao carrinho" deve estar azul em todos os cards
    And o botão "Meu carrinho" deve exibir "0" itens

  Scenario: Adicionar um item ao carrinho
    Given que o usuário está na tela inicial
    When o usuário clica no botão "Adicionar ao carrinho" de um card
    Then o botão deve ficar verde
    And a numeração no botão deve exibir "1"
    And o botão "Meu carrinho" deve exibir "1" item

  Scenario: Adicionar múltiplos itens do mesmo filme ao carrinho
    Given que o botão "Adicionar ao carrinho" de um card está verde
    When o usuário clica novamente no botão "Adicionar ao carrinho"
    Then a numeração no botão deve ser incrementada
    And o botão "Meu carrinho" deve exibir o total de itens no carrinho

  Scenario: Acessar o carrinho
    Given que o usuário adiciona itens ao carrinho
    When o usuário clica no botão "Meu carrinho"
    Then o usuário deve ser redirecionado para a tela do carrinho

  Scenario: Tela inicial sem produtos disponíveis
    Given que a base de dados está vazia
    When o usuário acessa a tela inicial
    Then a mensagem "Nenhum filme disponível no momento" deve ser exibida
    And os elementos dos cards não devem ser exibidos
