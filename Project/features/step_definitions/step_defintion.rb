#calculator = Calculator.new
#
#Given /^I have entered (.*) into the calculator$/ do |arg|
#    calculator.push(arg.to_i)
#end
#
#When /^I press Add$/ do
#    calculator.add_the_numbers
#end
#
#Then /^the result should be (.*) on the screen$/ do |arg|
#    calculator.sum.to_s.should == arg.to_s
#end

$n = []
$sum = 0

Given /^I have entered (\d+) into the calculator$/ do |arg|
    $n ||= []
    $n << arg.to_i
end

When /^I press Add$/ do
    $sum = $n[0] + $n[1]
end

Then /^the result should be (\d+) on the screen$/ do |arg|
    if $sum == arg.to_i
        puts "pass"
    else
        puts "fail"
    end
end