class Question
  # Generate two random numbers between 1 and 20
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  # Generate the summation question
  def ask
    puts "What is #{@num1} + #{@num2}?"
  end

  # Establish correct answer to be compared
  def correct_answer
    @num1 + @num2
  end
end

