require "rspec"
require_relative '../fibonacci'

describe Fibonacci do
  it 'fib should calculate correctly' do
    fibonacci = Fibonacci.new
  (fibonacci.fib(10)).to eq(nil)
  end
end
