class Players

  attr_accessor :name, :lives

  def initialize(name, lives = 3)
    self.name = name
    self.lives = lives
  end

  def haveLives?
    if (lives > 0) 
      true
    else 
      false
    end
  end

end
