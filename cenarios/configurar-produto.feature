Funcionalidade: Configurar Produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
              E escolher a quantidade
  Para depois inserir no carrinho

        Cenário: Configurar produto com todas as opções obrigatórias selecionadas
            Dado que estou na página de um produto
             Quando eu seleciono cor, tamanho e quantidade válidos
              E clico em adicionar ao carrinho
             Então o produto deve ser adicionado ao carrinho com as configurações escolhidas
              E o botão de compra deve aparecer

        Cenário: Tentar adicionar produto sem selecionar opções obrigatórias
            Dado que estou na página de um produto
             Quando eu não seleciono cor, tamanho ou quantidade
              E tento clicar em adicionar ao carrinho
             Então devo ver uma mensagem de erro
              E o botão de compra não deve aparecer

        Cenário: Tentar adicionar mais de 10 produtos
            Dado que estou na página de um produto
             Quando eu seleciono quantidade maior que 10
              E tento adicionar ao carrinho
             Então devo ver uma mensagem de erro informando o limite de 10 produtos

        Cenário: Usar o botão limpar
            Dado que estou na página de um produto com configurações selecionadas
             Quando eu clico no botão "limpar"
             Então todas as seleções devem voltar ao estado original
              E o botão de compra não deve aparecer

  