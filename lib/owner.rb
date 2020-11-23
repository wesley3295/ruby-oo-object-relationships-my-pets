class Owner
  
  attr_reader :name, :species
 @@all = []
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|c| c.owner == self}
  end

  def dogs
    Dog.all.select {|d| d.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    self.dogs.each {|d| d.mood = "happy"}
  end

  def feed_cats
    self.cats.each{|c| c.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
    pet.mood = "nervous"
    pet.owner = nil
end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end