# class in Ruby
# create a class
class Greet
  # constructor
  def initialize(name="Tanglong")
    @name = name
  end

  # say hello
  def hello()
    puts"--------\nHello #{@name}\n--------"
  end

  # say bye
  def bye()
    puts"--------\nBye #{@name}\n--------"
  end
end

# instantiate a object
obj = Greet.new("TomCat")
obj.hello
puts "All methods:\n#{Greet.instance_methods}"
puts "Self-defined methods:\n#{Greet.instance_methods(false)}"
obj.bye

# view attribute in a class
# In this case, we get 'name 'in 'Greet'
class Greet
  attr_accessor :name
end

puts"name: #{obj.name}"
# set 'name' of obj
obj.name = "Jerry"
obj.hello
