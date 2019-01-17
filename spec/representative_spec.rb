require_relative '../lib/representative.rb'

describe "The representative contact method" do
    it "should return an array" do
        x = get_representative_contact
       expect(x).to be_instance_of Array
    end
 end
