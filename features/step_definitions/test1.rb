#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^passo11$/) do
   visit('http://www.walmart.com.br')
   fill_in 'ft', :with => 'tv'
   click_button('Procurar')
   page.has_text? 'tv'
   page.find(:xpath ,'//*[@id="category-products"]/div[1]/section/ul/li[2]/div/a/span').click
   page.has_text? 'Smart TV LED HD 32'
   click_button('Adicionar ao carrinho')
end

Quando(/^passo12$/) do
   click_button('Continuar')
end

E(/^passo13$/) do
   page.find(:xpath, '//*[@id="site-topbar"]/div[2]/div[1]/a/span[2]').click
end

Entao(/^passo14$/) do
   page.has_text? 'Meu carrinho'
end

