class Questions

  attr_accessor :question, :answer

  def initialize()
    @number = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number + @number2
    @question = "What does #{@number} plus #{@number2} equal?"
  end
end
