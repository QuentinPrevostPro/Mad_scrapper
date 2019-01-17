require_relative '../lib/city_hall.rb'

describe "The city hall email scrapping method" do
    it "should return a hash" do
        x = get_city_hall_email("http://annuaire-des-mairies.com/95/avernes.html")
       expect(x).to be_instance_of Hash
    end
 end

 describe "The city contact contact method" do
    it "should return an array" do
        x = get_city_contact
       expect(get_city_contact).to be_instance_of Array
    end
 end