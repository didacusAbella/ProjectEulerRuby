#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

require 'prime'
require_relative "./util"
include Util

time("Problem 10 ==>") do
  sum = 0
  Prime.each(2E6) {|prime| sum+=prime}
  puts sum
end