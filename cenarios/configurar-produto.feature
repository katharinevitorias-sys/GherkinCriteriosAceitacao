Funcionalidade: Configurar Produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
              E escolher a quantidade
  Para depois inserir no carrinho

        Esquema do Cenário: Configurar produto com todas as opções obrigatórias selecionadas
            Dado que estou na página de um produto
             Quando eu seleciono a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
              E clico em adicionar ao carrinho
             Então o produto deve ser adicionado ao carrinho com as configurações escolhidas
              E o botão de compra deve aparecer

            Exemplos:
              | cor      | tamanho | quantidade |
              | Vermelho | P       | 1          |
              | Azul     | M       | 2          |
              | Preto    | G       | 5          |

        Esquema do Cenário: Tentar adicionar produto sem selecionar opções obrigatórias
            Dado que estou na página de um produto
             Quando eu não seleciono <opcoes>
              E tento clicar em adicionar ao carrinho
             Então devo ver uma mensagem de erro
              E o botão de compra não deve aparecer

            Exemplos:
              | opcoes                          |
              | cor                             |
              | tamanho                         |
              | quantidade                      |
              | cor, tamanho e quantidade       |

        Esquema do Cenário: Tentar adicionar mais de 10 produtos
            Dado que estou na página de um produto
             Quando eu seleciono quantidade maior que <quantidade>
              E tento adicionar ao carrinho
             Então devo ver uma mensagem de erro informando o limite de <limite> produtos

            Exemplos:
              | quantidade | limite |
              | 11         | 10     |
              | 12         | 10     |

        Esquema do Cenário: Usar o botão limpar
            Dado que estou na página de um produto com configurações selecionadas
             Quando eu clico no botão "<botao>"
             Então todas as seleções devem voltar ao estado original
              E o botão de compra não deve aparecer

            Exemplos:
              | botao  |
              | limpar |
  