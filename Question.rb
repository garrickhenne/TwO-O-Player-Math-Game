class Question
  attr_reader :answer, :first_number, :second_number

  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @answer = @first_number + @second_number
  end
end