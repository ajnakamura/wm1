#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^passo21$/) do
   click_link('Smart TV LED HD 32" LG 32LF585B 3 HDMI 3 USB Wi-fi integrado') 
end

Quando(/^passo22/) do
   page.has_text? 'Smart TV LED HD 32" LG 32LF585B 3 HDMI 3 USB Wi-fi integrado'
end

E(/^passo23$/) do
   click_button('Adicionar ao carrinho')
end

Entao(/^passo24$/) do
   page.has_text? 'tv'  
end

