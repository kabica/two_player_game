# player.rb

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def point
    self.lives -= 1
  end

end
