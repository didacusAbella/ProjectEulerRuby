#somma della sequueza di finonacci dei numeri pari. Massimo 4 milioni

fib = Enumerator.new do |yielder|
  a = b = 1
  loop do
    yielder << a
    a, b = b, a + b
  end
end

puts fib.take_while { |i| i < 4000000 }.select { |i| i.even?}.reduce(0, :+)