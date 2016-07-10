require "rspec"
require_relative '../fibonacci'

describe Fibonacci do
  it 'fib should calculate correctly' do
    fibonacci = Fibonacci.new
    fibonacci.fib(1)
    expect(fibonacci.first).to eq 1
    fibonacci.fib(5)
    expect(fibonacci.second).to eq 5
  end
end
