class Owner
  @@all = []
  attr_reader :species

  def initialize species
    @species = species
    @@all < self
  end

  def self.all
    @@all
  end
  
  def reset_all
    @@all = []
  end
end
