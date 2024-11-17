# E-commerce Test Scenarios

Este repositório contém os cenários de teste para um e-commerce simplificado com três telas: **Home**, **Carrinho** e **Compra realizada**.

## Estrutura
- `features/`: Contém os arquivos `.feature` organizados por funcionalidade.
  - `home_page.feature`: Cenários relacionados à tela inicial.
  - `cart_page.feature`: Cenários relacionados à gestão do carrinho.
  - `checkout_page.feature`: Cenários relacionados à finalização do pedido.

## Como navegar
1. Acesse a pasta `features/`.
2. Abra o arquivo `.feature` correspondente à funcionalidade desejada.
3. Cada arquivo está escrito no formato Gherkin para facilitar a leitura e compreensão.

## Observação: 
Como o Figma e a atividade **não incluíram o módulo de pagamento**, os cenários de teste relacionados a essa funcionalidade não foram contemplados. No entanto, o ideal seria que, ao clicar no botão **Finalizar pedido** na tela do carrinho, o comprador fosse redirecionado para uma tela de configuração das opções de pagamento.