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
      config[:steps].each do |step| # 4 40 400 4000
        config[:concurrency].each do |concurrency| # 1 2 4
          (results[step] ||= {})[concurrency] =
            ApacheBench.measure(step, concurrency, config)
        end
      end
      Report.print(results)
    end
  end
end
