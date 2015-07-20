#encoding: utf-8
#!/usr/bin/env ruby

Dado(/^passo21$/) do
   visit('http://cep.correiocontrol.com.br/01310000.json')
end

Quando(/^passo22$/) do
   page.has_text? 'Avenida Paulista' 
end

E(/^passo23$/) do
   page.has_text? 'Bela Vista'
end

Entao(/^passo24$/) do
   page.has_text? '01310000'
end

