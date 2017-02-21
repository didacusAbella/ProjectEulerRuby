#The sum of the squares of the first ten natural numbers is,
#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)^2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and 
#the square of the sum is 3025 − 385 = 2640. Find the difference between the sum of the squares of 
#the first one hundred natural numbers and the square of the sum.
require 'benchmark'

Benchmark.bm do |x|
  x.report do
    puts (1...100).map {|number| number ** 2 }.reduce(:+) - (1...100).reduce(:+) ** 2
  end
end

