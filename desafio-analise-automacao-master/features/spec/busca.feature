# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras


  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Dado que esteja na página inicial
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  # Completar o cenário abaixo
  @busca_sem_resultados
  Cenário: Busca sem resultados
    Dado que estou na página inicial
    Quando buscar por 'notebook'
    Então nenhum produto deve ser retornado
    E a seguinte mensagem deve aparecer 'No results were found for your search "Notebook"'

    
