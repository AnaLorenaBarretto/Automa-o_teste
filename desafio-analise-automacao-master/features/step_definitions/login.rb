Dado("que esteja na página de login") do
    visit('http://automationpractice.com/index.php?controller=authentication&back=my-account')
  end

 Quando('faço login com {string} e {string}') do |email, senha|
    find('#email').set email
    find('#passwd').set senha
    find('#SubmitLogin > span').click
  end

  Então('devo ser autenticado com sucesso') do
    expect(page).to have_content 'Ana Brandão'
  end

  Então('a seguinte mensagem estará disponível {string}') do |mensagem|
    expect(page).to have_content mensagem
  end

  Dado("uma vez na página inicial") do
    @home_page.load
    find('#header > div.nav > div > div > nav > div.header_user_info > a').click

  end

 Quando('faço login com {string}') do |email1|
    find('#email').set email1
    find('#SubmitLogin > span').click
  end

  Então('a seguinte mensagem deve ser mostrada {string}') do |mensagem1|
    expect(page).to have_content mensagem1
  end