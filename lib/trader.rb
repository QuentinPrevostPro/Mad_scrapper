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

# Méthode pour utiliser pour tester si le scrapping du Bitcoin et de l'Ethereum a marché
def bitcoin_value(array)
    test_btc = 0
    array.each do |hash|
        hash[:BTC] != nil ? (test_btc = 1) : nil
    end
    return test_btc
end

def ethereum_value(array)
    test_eth = 0
    array.each do |hash|
        hash[:ETH] != nil ? (test_eth = 2) : nil
    end
    return test_eth
end

cryptocurrency_scrapping