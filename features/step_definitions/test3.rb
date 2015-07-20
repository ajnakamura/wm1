#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^passo31$/) do
    visit('http://www.walmart.com.br')
end

Quando(/^passo32$/) do
   fill_in 'ft', :with => 'tv'
end

E(/^passo33$/) do
   click_button('Procurar')
end

Entao(/^passo34$/) do
   page.has_text? 'tv'  
end

