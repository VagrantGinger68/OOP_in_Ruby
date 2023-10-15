class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @currentSpeed = 0
  end

  def to_s
    "Your car is a #{year} #{color} #{model}!"
  end

  def speedUp(number)
    @currentSpeed += number
    puts "You push the gas and accelerate #{number} kmph."
  end

  def brake(number)
    @currentSpeed -= number
    puts "You push the brake and decelerate #{number} kmph."
  end

  def currentSpeed
    puts "You are now going #{@currentSpeed} kmph."
  end

  def shut_down
    @currentSpeed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(litres, kilometers)
    puts "#{kilometers / litres} kilometers per liter of gas"
  end

end

camaro = MyCar.new(2012, "Blue", "Camaro")
puts camaro
camaro.spray_paint("Red")
puts camaro.color
puts camaro.year
camaro.speedUp(20)
camaro.currentSpeed
camaro.brake(4)
camaro.currentSpeed
camaro.shut_down
camaro.currentSpeed
MyCar.gas_mileage(40, 650)