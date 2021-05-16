Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Dado("que estou na página inicial") do
  @home_page.load
end

Quando("buscar por {string}") do |query|
  find('#search_query_top')
  fill_in('Search', with: 'Notebook')
  click_button('Search')
end

Então("nenhum produto deve ser retornado") do 
  expect(page).to have_content '0 results have been found.'
end

Então("a seguinte mensagem deve aparecer {string}") do |mensagem|
  expect(page).to have_content mensagem
end
