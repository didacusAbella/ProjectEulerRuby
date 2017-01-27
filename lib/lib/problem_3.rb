require 'prime'

puts 600851475143.prime_division.collect { |couple| couple.reduce(:*) }.max
