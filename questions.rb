class Questions

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @sum1 + @sum2
  end

  def asking_question(name)
    puts "#{name}: What does #{num1} plus #{@num2} equal"
  end

  def is_correct?(input)
    input == @sum
  end

end
