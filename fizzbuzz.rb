#!/usr/bin/env ruby
class FizzBuzz
  def print(numbers)
    if numbers.respond_to?("each")    # responds_to?
      output = []
      numbers.each do |number|
        output << test(number)
      end
    else
      output = test numbers
    end
    output
  end

  private
  def test number
    raise ArgumentError unless number > 0
    raise ArgumentError, "Integers only" unless number.is_a? Integer

    if number%15 == 0
      "FizzBuzz"
    elsif number%3 == 0
   	  "Fizz"
	  elsif number%5 == 0
   	  "Buzz"
	  else
	    number.to_s
    end
  end
end
# https://www.youtube.com/watch?v=kRFH0U5tbt8