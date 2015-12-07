require 'benchmark'

module BenchmarkProfiler
  module ApacheBench
    # ab -n 1 -c 1 -A secret: http://localhost:5004/v1/74eb402b-e159-4027-9363-60772e6e8930/customers
    class << self
      def measure(step, concurrency, config)
        log_data = run(step,
                       concurrency,
                       "#{config[:username]}:#{config[:password]}",
                       config[:url])
        parse(log_data)
      end

      def run(step, concurrency, credentials, url)
        `ab -n #{step} -c #{concurrency} -A #{credentials} #{url}`
      end

      def parse(ab_log)
        {
          # Time taken for tests:   1.119 seconds
          total_test_time: ab_log.match(/Time taken for tests:\s*([\d\.]+)\sseconds/)[1].to_f,
          # Time per request:       1119.086 [ms] (mean)
          response_time: ab_log.match(/Time per request:\s*([\d\.]+)\s\[ms\]\s\(mean\)/)[1].to_f,
          # Requests per second:    0.89 [#/sec] (mean)
          queries_per_second: ab_log.match(/Requests per second:\s*([\d\.]+)\s\[#\/sec\]\s\(mean\)/)[1].to_f,
          # Complete requests:      1
          complete_requests: ab_log.match(/Complete requests:\s*([\d\.]+)/)[1].to_f,
          # Failed requests:        0
          failed_requests: ab_log.match(/Failed requests:\s*([\d\.]+)/)[1].to_f
        }
      end
    end
  end
end
