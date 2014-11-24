require 'simplecov'
SimpleCov.start

require_relative '../lib/part1'

describe "#sort_by_freq" do
 it "should return for  " do 
 	expect([1,2,3,4,1,2,4,8,1,4,9,16].sort_by_freq.join(", ")).to eq("3, 8, 9, 16, 2, 2, 1, 1, 1, 4, 4, 4")
 end
end

describe "#sort_distinct_by_freq" do
 it "should return for  " do 
 	expect([1,2,3,4,1,2,4,8,1,4,9,16].sort_distinct_by_freq.join(", ")).to eq("3, 8, 9, 16, 2, 1, 4"
)
 end
end

# TODO (refactor): modify $LOAD_PATH
# $LOAD_PATH << File.expand_path('../../lib', __FILE__)
# require 'part1'

# tutaj wpisac testy
