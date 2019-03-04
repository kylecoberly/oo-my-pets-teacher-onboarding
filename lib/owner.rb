class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name
  attr_accessor

  def initialize species
    @species = species
    @@all << self
  end

  def say_species
    puts "I am a #{@species}"

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
