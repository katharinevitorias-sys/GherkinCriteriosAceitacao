Funcionalidade: Cadastro de Cliente

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

        Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Dado que estou na tela de cadastro
             Quando eu preencho todos os campos obrigatórios marcados com asterisco
              E clico em cadastrar
             Então devo ser cadastrado com sucesso

        Cenário: Cadastro com e-mail em formato inválido
            Dado que estou na tela de cadastro
             Quando eu preencho os campos obrigatórios com um e-mail inválido
              E clico em cadastrar
             Então devo ver uma mensagem de erro indicando que o e-mail está em formato inválido

        Cenário: Cadastro com campos obrigatórios vazios
            Dado que estou na tela de cadastro
             Quando eu tento cadastrar sem preencher os campos obrigatórios
             Então devo ver uma mensagem de alerta informando que os campos obrigatórios devem ser preenchidos