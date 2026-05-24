# language: pt

Funcionalidade: Cadastro na Plataforma
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

        Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Dado que estou na página de cadastro
             Quando eu preencho o campo "Nome" com "ana maria"
              E preencho o campo "E-mail" com "kakaka@dominio.com"
              E preencho o campo "Telefone" com "17999999999"
              E preencho o campo "Endereço" com "av são fancisco 308, bairro eldorado"
              E preencho o campo "Cidade" com "s j rio pretp"
              E seleciono o "Estado" como "são paulo"
              E clico em "Cadastrar"
             Então meu cadastro deve ser realizado com sucesso
              E devo ser direcionado para a tela de finalização

        Esquema do Cenário: Validação de e-mail inválido
            Dado que estou na página de cadastro
             Quando eu preencho o campo "Nome" com "<nome>"
              E preencho o campo "E-mail" com "<email>"
              E preencho o campo "Telefone" com "<telefone>"
              E preencho o campo "Endereço" com "<endereco>"
              E preencho o campo "Cidade" com "<cidade>"
              E seleciono o "Estado" como "<estado>"
              E clico em "Cadastrar"
             Então devo ver mensagem de erro "E-mail com formato inválido"
              E o cadastro não deve ser realizado

        Exemplos:
                  | nome      | email                  | telefone    | endereco                             | cidade        | estado    |
                  | ana maria | emailsemarroba.com     | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | @dominio.com           | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | usuario@               | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |
                  | ana maria | usuario..nome@mail.com | 17999999999 | av são fancisco 308, bairro eldorado | s j rio pretp | são paulo |

        Esquema do Cenário: Campos obrigatórios vazios
            Dado que estou na página de cadastro
             Quando eu deixo o campo "<campo_vazio>" vazio
              E preencho o campo "Nome" com "ana maria"
              E preencho o campo "E-mail" com "kakaka@dominio.com"
              E preencho o campo "Telefone" com "17999999999"
              E preencho o campo "Endereço" com "av são fancisco 308, bairro eldorado"
              E preencho o campo "Cidade" com "s j rio pretp"
              E seleciono o "Estado" como "são paulo"
              E clico em "Cadastrar"
             Então devo ver mensagem de alerta "O campo <campo_vazio> é obrigatório"
              E o cadastro não deve ser realizado

        Exemplos:
                  | campo_vazio |
                  | Nome        |
                  | E-mail      |
                  | Telefone    |
                  | Endereço    |
                  | Cidade      |
                  | Estado      |
