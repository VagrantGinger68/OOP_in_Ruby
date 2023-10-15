class GoodDog
  attr_accessor :name, :height, :weight
  @@number_of_dogs = 0

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
    @@number_of_dogs += 1
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  def self.number_of_dogs
    @@number_of_dogs
  end

  puts self
end

class MyAwesomeClass
  def self.this_is_a_class_method
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self

puts sparky.info

puts GoodDog.number_of_dogs