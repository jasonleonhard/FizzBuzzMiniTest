#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'fizzbuzz'

describe "FizzBuzz" do

  before do
  	@fb = FizzBuzz.new
  	@number = 15*rand(1..100)+1
  end

  it "returns Fizz for multiples of 3" do
  	@fb.print(3*@number).must_equal "Fizz"   		# must_equal
  end

  it "returns Buzz for multiples of 5" do
  	@fb.print(5*@number).must_equal "Buzz"
  end
  
  it "returns Fizz for multiples of 15" do
  	@fb.print(15*@number).must_equal "FizzBuzz"
  end
  
  it "returns the number as a string for all no FizzBuzz numbers" do
  	@fb.print(@number).must_equal @number.to_s
  end
  
  it "doesn't say FizzBuzz when it shouldn't" do
  	@fb.print(@number).wont_equal "FizzBuzz"     	# wont_equal
  end

  it "returns an Array object when a range is given as an argument" do
  	@fb.print(1..5).must_be_instance_of Array 		# must_be_instances_of
  end
  
  it "raises an error if the number is negative" do
  	proc {@fb.print(-2)}.must_raise ArgumentError 	# must_raise  or # wont_raise
  end
  
  it "raises an error if the number is zero" do
  	proc {@fb.print(0)}.must_raise ArgumentError 	# proc
  end

  it "raises an error if the number is not an Integer" do
  	proc {@fb.print(2.5)}.must_raise ArgumentError
  end

end
# ruby spec.rb  # to test