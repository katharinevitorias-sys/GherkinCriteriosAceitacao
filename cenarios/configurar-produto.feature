# language: pt

Funcionalidade: Configurar Produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Configurar produto com cor, tamanho e quantidade
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul", tamanho "M", quantidade "3" e clico em "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Cor é obrigatória
    Dado que estou na página de um produto
    Quando eu não seleciono a cor, seleciono o tamanho "M", seleciono a quantidade "3" e clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Tamanho é obrigatório
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul", não seleciono o tamanho, seleciono a quantidade "3" e clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Quantidade é obrigatória
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Azul", seleciono o tamanho "M", não seleciono a quantidade e clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro

  Cenário: Não permite mais de 10 produtos por venda
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Vermelho", seleciono o tamanho "G", seleciono a quantidade "11" e clico em "Adicionar ao Carrinho"
    Então devo ver mensagem de erro "Máximo de 10 produtos permitido"

  Cenário: Botão limpar restaura estado original
    Dado que estou na página de um produto
    Quando eu seleciono a cor "Preto", seleciono o tamanho "P" e seleciono a quantidade "5" e clico em "Limpar"
    Então as configurações voltam ao estado original
