#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require 'prime'
require 'benchmark'

Benchmark.bm do |x|
  x.report do
    val = 600851475143.prime_division.collect { |couple| couple.reduce(:*) }.max
    puts "Problem 3: #{val}"
  end
end

