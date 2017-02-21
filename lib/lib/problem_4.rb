#A palindromic number reads the same both ways. The largest palindrome made from 
#the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

require 'benchmark'

Benchmark.bm do |x|
  x.report do
    pal = Array(100..1000).combination(2){ |cp| cp.reduce(:*)}.select { |n| n if n.to_s.eql?(n.to_s.reverse)}.max
    puts "Problem 4: #{pal}"
  end
end


