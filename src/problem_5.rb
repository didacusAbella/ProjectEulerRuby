#2520 is the smallest number that can be divided by each of the numbers from 1 
#to 10 without any remainder. 
#What is the smallest positive number that is evenly divisible by all 
#of the numbers from 1 to 20?

require './util'
include Util

time("Problem 5 ==>") do
  puts((1...20).inject(:lcm))
end