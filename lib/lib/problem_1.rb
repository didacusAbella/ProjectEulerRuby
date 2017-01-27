puts (1..1000).each { |n| n if n % 3 == 0 || n % 5 == 0}.inject(0, :+)
