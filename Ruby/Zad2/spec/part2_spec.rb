require 'simplecov'
SimpleCov.start
require_relative '../lib/part2'

describe "#to_hist" do 
	it "should return " do
	 	expect([1,2,3,4,1,2,4,8,1,4,9,16].to_hist.to_s).to eq("{1=>3, 2=>2, 3=>1, 4=>3, 8=>1, 9=>1, 16=>1}")
	 end
end


