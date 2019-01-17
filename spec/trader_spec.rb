require_relative '../lib/trader.rb'

describe "The cryptocurrency scrapping method" do
    it "should return an array" do
       x = cryptocurrency_scrapping 
       expect(x).to be_instance_of Array
    end
    it "should have an array of min length 2109" do
        x = cryptocurrency_scrapping 
        expect(x.length).to be >= 2109
    end
    it "should return a value for Bitcoin" do
        x = cryptocurrency_scrapping 
        expect(x.detect { |hash| hash.has_key?(:BTC) }[:BTC].to_f).to be > 0 
     end
     it "should return a value for Ethereum" do
        x = cryptocurrency_scrapping 
        expect(x.detect { |hash| hash.has_key?(:ETH) }[:ETH].to_f).to be > 0 
     end
 end
