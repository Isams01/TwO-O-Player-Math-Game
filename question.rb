# This handles the math logic where the equations are generated and answers are handled
# it will contain two RNG numbers and a response.
class Question
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def ask(current_player)
    puts "Player#{current_player}: What does #{@num1} + #{@num2} equal?"
  end

  def check(answer)
    @num1 + @num2 == answer
  end
end
