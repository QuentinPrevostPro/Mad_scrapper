require_relative '../lib/trader.rb'

describe "The cryptocurrency scrapping method" do
    it "should return an array" do
       x = cryptocurrency_scrapping 
       expect(x).to be_instance_of Array
    end
 end

 describe "The cryptocurrency scrapping method" do
    it "should return a value for Bitcoin" do
       expect(bitcoin_value(cryptocurrency_scrapping)).to be === 1 
    end
    it "should return a value for Ethereum" do
        expect(ethereum_value(cryptocurrency_scrapping)).to be === 2 
    end
 end