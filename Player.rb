class Player
  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrement_life
    @lives -= 1
  end

  def dead?
    @lives < 0
  end
end