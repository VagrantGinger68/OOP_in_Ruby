module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.gas_mileage(liters, kilometers)
    puts "#{kilometers / liters} kilometers per liter of gas"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}! It has #{NUMBER_OF_DOORS} doors."
  end
end

truck1 = MyTruck.new(2020, "Maverick", "Blue")
truck2 = MyTruck.new(2020, "Maverick", "Blue")
truck3 = MyTruck.new(2020, "Maverick", "Blue")
car = MyCar.new(2015, "Focus", "Red")
MyTruck.gas_mileage(40, 650)
Vehicle.number_of_vehicles
p truck2.can_tow?(1999)
p truck1.can_tow?(2001)

puts "-----------MyCar Ancestors"
puts MyCar.ancestors
puts "-----------MyTruck Ancestors"
puts MyTruck.ancestors
puts "-----------Vehicle Ancestors"
puts Vehicle.ancestors

puts truck1

puts truck1.age