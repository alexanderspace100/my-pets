class Owner
  # code goes here
  @@owners = []
  attr_accessor :name, :pets
  attr_reader :species

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def initialize(species)
  	@species = species
  	@@owners << self
  	@pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
  	pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
  	pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
  	pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
  	pets[:dogs].each do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	pets[:fishes].each do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	pets.each do |type, pets|
  		pets.each do |pet|
  			pet.mood = "nervous"
  		end
  		pets.clear
  	end
  end

  def list_pets
  	"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end