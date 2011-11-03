$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'Sexing'

Before do
	@sexing = Sexing.new
end

Given /^a number of (\d+)$/ do |bumps|
	@sexing.bumps = bumps.to_i
end

When /^guessing$/ do
  @result = @sexing.guess
end

Then /^return (\w+) and (\d+)$/ do |gender, factor|
  @result[:gender].should == gender
  @result[:factor].should == factor.to_i
end