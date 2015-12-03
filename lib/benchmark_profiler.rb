require 'benchmark'

require 'benchmark_profiler/version'
require 'benchmark_profiler/config'
require 'benchmark_profiler/apache_bench'
require 'benchmark_profiler/report'

# BenchmarkProfiler.run(options)
module BenchmarkProfiler
  class << self
    def run(options = {})
      config = Config.add(options)
      results = {}
      config[:steps].each do |step|
        results[step] = ApacheBench.measure(step, config)
      end
      Report.print(results)
    end
  end
end
