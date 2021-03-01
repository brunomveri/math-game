class Player
  attr_accessor :life, :name

  def initialize(name)
    @life = 3
    @name = name
  end

  def is_alive?
    @life != 0
  end

  def is_dead?
    @life == 0
  end

  def answerd_wrong
    @life -= 1
  end
    
end
