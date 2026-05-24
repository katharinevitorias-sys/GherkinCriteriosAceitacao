# language: pt

Funcionalidade: Configurar Produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Configurar produto com cor, tamanho e quantidade
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E seleciono a quantidade "3"
    E clico em "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Cor é obrigatória
    Dado que estou na página de um produto
    Quando eu não seleciono a cor
    E seleciono o tamanho "M"
    E seleciono a quantidade "3"
    E clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Tamanho é obrigatório
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul"
    E não seleciono o tamanho
    E seleciono a quantidade "3"
    E clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Quantidade é obrigatória
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E não seleciono a quantidade
    E clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Não permite mais de 10 produtos por venda
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Vermelho"
    E seleciono o tamanho "G"
    E seleciono a quantidade "11"
    E clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro "Máximo de 10 produtos permitido"

  Cenário: Botão limpar restaura estado original
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Preto"
    E seleciono o tamanho "P"
    E seleciono a quantidade "5"
    E clico em "Limpar"
    Então a cor volta ao estado inicial
    E o tamanho volta ao estado inicial
    E a quantidade volta ao valor "1"
