# language: pt

Funcionalidade: Login na Plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que estou na página de login
    Quando eu preencho os campos "Usuário" com dados cadastrados e o campo "Senha" com dados cadastrados e clico em "Entrar"
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com usuário inválido
    Dado que estou na página de login
    Quando eu preencho o campo "Usuário" com dados não cadastrados e o campo "Senha" com dados cadastrados e clico em "Entrar"
    Então devo ver mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Login com senha inválida
    Dado que estou na página de login
    Quando eu preencho o campo "Usuário" com dados cadastrados e preencho o campo "Senha" com dados não cadastrados e clico em "Entrar"
    Então devo ver mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Login com usuário e senha inválidos
    Dado que estou na página de login
    Quando eu preencho o campo "Usuário" com dados não cadastrados e preencho o campo "Senha" com dados não cadastrados e clico em "Entrar"
    Então devo ver mensagem de alerta "Usuário ou senha inválidos"
