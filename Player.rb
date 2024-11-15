class Player
  attr_accessor :name, :lives

  # Initialize with a name argument
  def initialize(name)
    @name = name
    @lives = 3  # Initialize with 3 lives by default
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end