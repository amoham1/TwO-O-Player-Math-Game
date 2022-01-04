class Player 
  #create player, give lives, lose life, death (zero life)
  attr_accessor :name, :lives
  def initialize (name)
    @lives = 3
    @name = name
  end 

  def lose_life
    @lives -= 1 
  end 

  def is_alive
    @lives > 0
  end 

end 