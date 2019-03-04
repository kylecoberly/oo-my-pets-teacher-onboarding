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
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat name
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog name
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
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
