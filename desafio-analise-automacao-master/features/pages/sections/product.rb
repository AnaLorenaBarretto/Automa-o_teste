module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, '#center_column > ul > li > div > div.right-block > div.content_price > span'
  end
end
