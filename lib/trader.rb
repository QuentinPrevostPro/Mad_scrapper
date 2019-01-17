require 'nokogiri'
require 'open-uri'
require 'PRY'

def cryptocurrency_scrapping
    array_of_hashes = []
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    currency = page.xpath('//*[@id="currencies-all"]//td[3]')
    value = page.xpath('//*[@id="currencies-all"]//td[5]')
    (0..currency.length-1).each do |index|
        temp_hash = {"#{currency[index].text}": "#{value[index].text.gsub(/[\s$]*/, "")}"}
        array_of_hashes << temp_hash
    end
     return array_of_hashes
end
