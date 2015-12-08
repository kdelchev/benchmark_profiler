module BenchmarkProfiler
  module Report
    class << self
      # For steps 4, 8, 12
      # and concurrency 1, 2, 4
      #
      # results = {
      #   4 =>
      #     { 1 => { :total_test_time => 0.29, :response_time => 72.511, :queries_per_second => 13.79, :complete_requests => 4.0, :failed_requests => 0.0 },
      #       2 => { :total_test_time => 0.275, :response_time => 137.676, :queries_per_second => 14.53, :complete_requests => 4.0, :failed_requests => 0.0 },
      #       4 => { :total_test_time => 0.277, :response_time => 276.523, :queries_per_second => 14.47, :complete_requests => 4.0, :failed_requests => 0.0 } },
      #   8 =>
      #     { 1 => { :total_test_time => 0.566, :response_time => 70.752, :queries_per_second => 14.13, :complete_requests => 8.0, :failed_requests => 0.0 },
      #       2 => { :total_test_time => 0.558, :response_time => 139.49, :queries_per_second => 14.34, :complete_requests => 8.0, :failed_requests => 0.0 },
      #       4 => { :total_test_time => 0.554, :response_time => 276.921, :queries_per_second => 14.44, :complete_requests => 8.0, :failed_requests => 0.0 } },
      #   12 =>
      #     { 1 => { :total_test_time => 0.834, :response_time => 69.466, :queries_per_second => 14.4, :complete_requests => 12.0, :failed_requests => 0.0 },
      #       2 => { :total_test_time => 0.825, :response_time => 137.533, :queries_per_second => 14.54, :complete_requests => 12.0, :failed_requests => 0.0 },
      #       4 => { :total_test_time => 0.877, :response_time => 292.488, :queries_per_second => 13.68, :complete_requests => 12.0, :failed_requests => 0.0 } } }
      def print(data)
        data
      end
    end
  end
end
