#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a^2 + b^2 = c^2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

require "./util"
include Util

n = 1000

time("Problem 9 ==>") do
  a = (1..n/2).to_a.find { |num| (n * (n/2 - num) % (n - num)).zero? }
  b = n * (n/2 - a) / (n - a)
  puts "a:#{a}, b:#{b}, c:#{n - b - a}"
end