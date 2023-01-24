require 'open-uri'
require 'net/http'
require 'nokogiri'

html = URI.open("https://www.goest.us/kuroneko-sama-mr-black-cat-candle/")
doc = Nokogiri::HTML(html)

puts doc.css(".ProductDescriptionContainer").text.include?("temporarily sold out")
