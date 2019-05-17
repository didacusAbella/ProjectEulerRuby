require "benchmark"

# Util Module
module Util

  # calculate measure
  # @param [String] name
  # @param [Proc] function
  def time(name, &function)
    if function
      # @param [Benchmark::Report]
      Benchmark.bm do |to_bench|
        to_bench.report(name) do
          return function.call
        end
      end
    end
    throw RuntimeError.new("No block passed")
  end
end