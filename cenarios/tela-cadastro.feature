# language: pt

Funcionalidade: Cadastro na Plataforma
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

        Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Dado que estou na página de cadastro
             Quando eu preencho todos os campos obrigatórios e clico em "Cadastrar"
             Então meu cadastro deve ser realizado com sucesso e ser direcionado para a tela de finalização

        Esquema do Cenário: Validação de e-mail inválido
            Dado que estou na página de cadastro
             Quando eu preencho o campo todos os campos obrigatórios e preencho o campo "E-mail" com "<email_invalido>" e clico em "Cadastrar"
             Então o cadastro não deve ser realizado e devo ver mensagem de erro indicando que o e-mail está em formato inválido

        Exemplos:
                  | nome      | email                  | telefone    | endereco                             | cidade        | estado    |
                  | ana maria | emailsemarroba.com     | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | @dominio.com           | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | usuario@               | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | usuario..nome@mail.com | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |

        Esquema do Cenário: Campos obrigatórios vazios
            Dado que estou na página de cadastro
             Quando eu deixo um campo obrigatório "<campo_vazio>" vazio e clico em "Cadastrar"
             Então o cadastro não deve ser realizado e devo ver uma mensagem de alerta informando que os campos obrigatórios devem ser preenchidos
        Exemplos:
                  | campo_vazio |
                  | Nome        |
                  | E-mail      |
                  | Telefone    |
                  | Endereço    |
                  | Cidade      |
                  | Estado      |
