# Fibonacci F(n) = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...
class Fibonacci

  def initialize
    @first = 1
    @second = 1
    @next_ = @first + @second
  end

  def fib(n)
    if n == 1 || n == 0 then puts "F(#{n}) = #{n}"
    elsif n > 1 || n < 0
      print '0 1 1 '
      (3..n).each do
        @next_ = @first + @second
        @first = @second
        @second = @next_
        print "#{@second} "
      end
      puts "\n" + "F(#{n}) = #{@second}"
    end
  end
end
fibonaci = Fibonacci.new
fibonaci.fib(10)
