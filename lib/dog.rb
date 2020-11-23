class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []

  def initialize (name, owner)
    @owner = owner
    @mood = "nervous"
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end