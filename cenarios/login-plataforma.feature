Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

        Esquema do Cenário: Login com credenciais válidas
            Dado que estou na página de login
             Quando eu insiro usuário "<usuario>" e senha "<senha>"
              E clico no botão de login
             Então devo ser redirecionado para a página de pedidos

        Exemplos:
          | usuario  | senha    |
          | cliente1 | senha123 |
          | cliente2 | senhaABC |

        Esquema do Cenário: Login com credenciais inválidas
            Dado que estou na página de login
             Quando eu insiro usuário "<usuario>" e senha "<senha>"
              E clico no botão de login
             Então devo ver uma mensagem de erro

        Exemplos:
          | usuario         | senha       |
          | cliente1        | senhaErrada |
          | usuarioInvalido | senha123    |