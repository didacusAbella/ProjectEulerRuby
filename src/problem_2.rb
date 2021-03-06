#Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
#By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
#find the sum of the even-valued terms.

require_relative "./util"
include Util

time("Problem 2 ==>") do
  fib = Enumerator.new { |sequence| a=b=1; loop { sequence << a; a, b = b, a + b} }
  sum = fib.take_while { |i| i <= 4E6 }.select { |i| i.even? }.reduce(0, :+)
  puts " #{sum}"
end
