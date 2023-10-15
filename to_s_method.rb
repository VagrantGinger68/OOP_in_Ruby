class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age             # => 28

puts sparky

p sparky

pp sparky

class Foo
  def to_s
    "42"
  end
end

foo = Foo.new
puts foo
puts "foo is #{foo}"

class Bar
  attr_reader :xyz
  def initialize
    @xyz = { a: 1, b: 2 }
  end

  def to_s
    "I am a Bar object!"
  end
end

bar = Bar.new
puts bar
puts bar.xyz