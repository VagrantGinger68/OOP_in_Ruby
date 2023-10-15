module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

module Name
  def name(name)
    puts name
  end
end

class GoodDog
  include Speak
  include Name
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")
sparky.name("Sparky")




#############This is how objects are created and called
class MyClass
end

my_obj = MyClass.new