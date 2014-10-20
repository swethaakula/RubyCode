require 'spec_helper'

describe "Testing Multiply.rb" do

    before :each do
        @mul = Multiply.new
    end

    it "multiply two numbers - test case 1" do
        @mul.multiply(5,4).should == 20
    end

    it "multiply two numbers - test case 2" do
        @mul.multiply(5,-4).should == -20
    end

    it "returns an array method returns [1,2,3,4,5,6]" do
        @mul.returns_an_array.should == [1,2,3,4,5,6]
    end



end