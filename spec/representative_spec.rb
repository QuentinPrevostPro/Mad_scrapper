require_relative '../lib/representative.rb'

describe "The representative contact method" do
    it "should return an array" do
        x = get_representative_contact
       expect(x).to be_instance_of Array
    end
    it "should have an array with 577 elements" do
        x = get_representative_contact
       expect(x).to have_attributes(length: 577)
    end
 end


