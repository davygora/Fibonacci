# Fibonacci F(n) = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...
class Fibonacci

  attr_reader :first,:second

  def initialize
    @first = 1
    @second = 1
    @next = @first + @second
  end

  def fib(n)
    if n == 1 || n == 0 then puts "F(#{n}) = #{n}"
    elsif n > 1 || n < 0
      print '0 1 1 '
      (3..n).each do
        @next = @first + @second
        @first = @second
        @second = @next
        print "#{@second} "
      end
      puts "\n" + "F(#{n}) = #{@second}"
    end
  end
end

=begin
obj = Fibonacci.new
obj.fib(7)
=>
  0 1 1 2 3 5 8 13 
  F(7) = 13
=end
