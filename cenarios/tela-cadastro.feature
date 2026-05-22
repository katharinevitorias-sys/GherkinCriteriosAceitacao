Funcionalidade: Cadastro de Cliente

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

        Esquema do Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Dado que estou na tela de cadastro
             Quando eu preencho nome "<nome>", e-mail "<email>" e senha "<senha>"
              E clico em cadastrar
             Então devo ser cadastrado com sucesso

        Exemplos:
              | nome       | email             | senha       |
              | João Silva | joao@exemplo.com  | senha123    |
              | Maria Lima | maria@exemplo.com | MinhaSenha1 |

        Esquema do Cenário: Cadastro com e-mail em formato inválido
            Dado que estou na tela de cadastro
             Quando eu preencho nome "<nome>", e-mail "<email>" e senha "<senha>"
              E clico em cadastrar
             Então devo ver uma mensagem de erro indicando que o e-mail está em formato inválido

        Exemplos:
              | nome       | email            | senha       |
              | João Silva | joao.exemplo.com | senha123    |
              | Maria Lima | maria@exemplo    | MinhaSenha1 |

        Esquema do Cenário: Cadastro com campos obrigatórios vazios
            Dado que estou na tela de cadastro
             Quando eu tento cadastrar sem preencher <campos>
             Então devo ver uma mensagem de alerta informando que os campos obrigatórios devem ser preenchidos

        Exemplos:
              | campos         |
              | nome           |
              | e-mail         |
              | senha          |
              | nome e e-mail  |
              | nome e senha   |
              | e-mail e senha |