require 'spec_helper'

describe "Testing Calculator.rb" do

    before :each do
        @cal = Calculator.new
    end

    it "add two numbers - test case 1" do
        @cal.add(2,3).should == 5
    end

    it "add two numbers - test case 2" do
        @cal.add(15,20).should == 35
    end

    it "add two numbers  must return FixNum" do
        @cal.add(15,20).should be_an_instance_of Fixnum
    end

    it "is @cal an object of Calculator class" do
        @cal.should be_an_instance_of Calculator
    end



end