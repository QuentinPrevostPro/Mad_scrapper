require 'nokogiri'
require 'open-uri'
require 'PRY'

test = "http://annuaire-des-mairies.com/95/avernes.html"

def get_city_hall_email(url)
    page = Nokogiri::HTML(open(url))
    city_name = page.xpath('/html/body/div/main/section[1]/div/div/div/h1')
    city_hall_email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    city_hash = {"#{city_name.text[0..city_name.length-10]}": "#{city_hall_email.text}"}
    return city_hash
end

def get_city_hall_url
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    city_name = page.xpath('//p/a')
    test = city_name[0]
    binding.pry
end

get_city_hall_url

