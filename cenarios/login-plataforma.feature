Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos+

        Cenário: Login com dados válidos
            Dado que estou na página de login
             Quando eu insiro credenciais válidas
              E clico no botão de login
             Então devo ser redirecionado para a página de pedidos

        Cenário: Login com dados inválidos
            Dado que estou na página de login
             Quando eu insiro credenciais inválidas
              E clico no botão de login
             Então devo ver uma mensagem de erro