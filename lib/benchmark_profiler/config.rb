module BenchmarkProfiler
  module Config
    class << self
      attr_accessor :options

      def add(opts = {})
        @options.merge!(opts)
      end
    end

    @options = {
      steps: [4, 40, 400],
      concurrency: 1,
      url: 'http://localhost:5004/v1/74eb402b-e159-4027-9363-60772e6e8930/customers',
      username: 'secret',
      password: ''
    }
  end
end
