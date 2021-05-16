# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de logar na plataforma para
  realizar compras

   # Completar o cenário abaixo
 @login_com_falha
  Cenário: Login com falha
    Dado uma vez na página inicial
    Quando faço login com 'analoribarrettogmail.com'
    E a seguinte mensagem deve ser mostrada 'Invalid email address.'

  # Completar o cenário abaixo
  @login
  Cenário: Realizar login
    Dado que esteja na página de login
    Quando faço login com 'analoribarretto@gmail.com' e 'Fromhell666'
    Então devo ser autenticado com sucesso
    E a seguinte mensagem estará disponível 'Welcome to your account. Here you can manage all of your personal information and orders.'

 
