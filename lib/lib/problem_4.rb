puts (100..1000).to_a.combination(2).collect { |cp| cp.reduce(:*) }.map { |n| n if n.to_s.eql?(n.to_s.reverse)}.compact!.max
