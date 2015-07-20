#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^passo11$/) do
    visit('http://www.walmart.com.br')
end

Quando(/^passo12$/) do
   fill_in 'ft', :with => 'tv'
end

E(/^passo13$/) do
   click_button('Procurar')
end

Entao(/^passo14$/) do
   page.has_text? 'tv'  
end

