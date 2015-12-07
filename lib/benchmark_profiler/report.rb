module BenchmarkProfiler
  module Report
    class << self
      # results = {
      #   1 => {
      #     :total_test_time => 1.399,
      #     :response_time => 1399.103,
      #     :queries_per_second => 0.71,
      #     :complete_requests => 1.0,
      #     :failed_requests => 0.0 },
      #   5 => {
      #     :total_test_time => 5.097,
      #     :response_time => 1019.426,
      #     :queries_per_second => 0.98,
      #     :complete_requests => 5.0,
      #     :failed_requests => 0.0 },
      #   10 => {
      #     :total_test_time => 12.129,
      #     :response_time => 1212.947,
      #     :queries_per_second => 0.82,
      #     :complete_requests => 10.0,
      #     :failed_requests => 0.0 } }
      def print(step, concurrency, data)
        p "--- steps: #{step}, cuncurrency: #{concurrency}"
        p data
      end
    end
  end
end
