puts (1...100).map {|number| number ** 2 }.reduce(:+) - (1...100).reduce(:+) ** 2
