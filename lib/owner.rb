class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize species
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish name
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

end
