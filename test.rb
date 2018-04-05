hsh = {:a => "b", :b => "c"}

puts hsh[:a]

puts hsh.inspect


(1..10).each do |item|
  puts "#{item}"
end

puts __FILE__

puts __LINE__


# ===用于测试case内when子句的相等


puts 1 | 0
puts 1 & 0

if 1 | 0
  puts "true"
end


puts defined? a
puts defined? $_


# :: 是一元运算符, 允许再类或模块内定义常量,实例方法,和类方法,可以从类或模块外的
# 任何地方进行访问


def test
  yield 5
  puts "在 test 方法内"
  yield 100,10
end

test {|i,j| puts "#{i}, #{j}"}

puts Dir.pwd


class Box
  BOX_COMPANY = "TATA Inc"

  attr_accessor :width, :height
  def initialize(w, h)
    @width, @height = w, h
  end

  def printWidth
    @width
  end

  def printHeight
    @height
  end

  def setWith=(value)
    @width = value
  end

  def setHeight=(value)
    @height = value
  end

  private :printWidth

  def printArea
    @area = @width + @height
    puts @area
  end

  protected :printArea


  def +(other) # 定义 + 来执行向量加法
    Box.new(@width + other.width, @height + other.height)
  end

  def -@ #定义一元运算符, - 来对 width 和 height 求反
    Box.new(-@width, -@height)
  end

  def *(scalar) # 执行标量乘法
    Box.new(@width*scalar, @height*scalar)
  end
end


box = Box.new(10, 20)
box.setWith = 30
box.setHeight = 30
x = box.printHeight
# y = box.printWidth

puts box.to_s



# puts "#{x}, #{y}"



# 扩展一个类, < 字符 和父类的名称

class BigBox < Box
  def printArea
    @area = @width * @height
    puts "Big box area is : #@area"
  end
end

box = BigBox.new(10, 20)

box.printArea


# 任何对象都可以通过调用Object.freeze进行冻结,冻结对象不能被修改


box.freeze

if (box.frozen?)
  puts "Box object is frozen object"
else
  puts "Box object is normal object"
end

# box.setWith=30
# box.setHeight = 50
#

puts Box::BOX_COMPANY

class Box2
  attr_accessor :width, :height

  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end

  # 实例方法
  def getArea
    @width * @height
  end

  # protected getArea
end

box1 = Box2.new(10, 20)

box2 = Box2.allocate

a = box1.getArea

# a = box2.getArea

class A

  def getA
    1
  end

end

a = A.allocate
puts a.getA

class Box3
  puts "Class of self = #{self.class}"
  puts "Name of self = #{self.name}"
end


class Box4 < Box3
  # puts "#{self.__getobj__}"
end


abc ||= "abc"

puts abc


def abcd(name, opts=[])
  puts name
end

abcd "gao"

module Test
  TEXT = "abc"
end

puts Test::TEXT

connection_options = { sql_mode: [:strict_trans_tables, :strict_all_tables, :no_zero_in_date] }

puts connection_options[:sql_mode][0]

connection_options["abc"] = "abc"

puts connection_options

puts connection_options[:sql_model]

opts = {:max_connections => 1}
[:max_connections, :pool_timeout].each do |key|
  connection_options[key] = opts[key] if opts[key]
end

puts connection_options


str = "May Ruby be with you!"

5.times {puts str}

class ABC
  class << self
    p self
    def hello
      p self
    end
  end
end

# A.hello

p ABC.singleton_class

module Foo
  def foo
    "Hello World"
  end
end


foobar = []
foobar.extend(Foo)
foobar.singleton_methods

foobar = []
puts foobar.singleton_methods
class << foobar
  def foo
    "Hello World"
  end
end

puts foobar.singleton_methods


class Boo
  class << self
    def abc
      puts "hello "
    end
  end
end

boo = Boo.new
Boo.abc


class StateMachineExample
  def process obj
    process_hook obj
    end
private
  def process_state_1 obj
    class << self
      alias process_hook process_state_2
    end
  end

  def process_state_2 obj
    class << self
      alias process_hook process_state_1
    end
  end

  alias process_hook process_state_1
end

a = 'foo'
class << a
  def inspect
    '"bar"'
  end
end

puts a.inspect

a = 'foo'
puts a.inspect

state_machine = StateMachineExample.new

state_machine.process state_machine


module Sequel
  class Plugins
    def hello
      puts "hello"
    end
  end
end


module Sequel::Plugins::UpdateOrCreate
  module ClassMethods
    def update_or_create
      puts "Hello World"
    end
  end
end



p "100"
p 100
p "Hello, \n\tRuby"

print "话说某个朝代，后宫妃嫔甚多，\n"

=begin
test
=end

#
# 循环次数 .times do
# 　希望循环的处理
# end
5.times do
  puts "呵呵"
end

sym = :foo
puts sym

puts sym.to_s

puts "foo".to_sym


puts /Ruby/ =~ "Ruby"

val = "a"
puts val.succ


class Point
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0           #=> (3, 6)
p point1           #=> (1, 8)
p point0 + point1  #=> (4, 14)
p point0 - point1  #=> (2, -2)

str = "Ruby 基础教程"

puts str
p str

class Point
  def +@
    dup
  end
end

point = Point.new(3, 6)
p +point  #=> (3, 6)


class Point
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect  # 用于显示
    "(#{x}, #{y})"
  end
  def [](index)
    case index
      when 0
        x
      when 1
        y
      else
        raise ArgumentError, "out of range `#{index}`"
    end
  end

  def []=(index, val)
    case index
      when 0
        self.x = val
      when 1
        self.y = val
      else
        raise ArgumentError, "out of range `#{index}'"
    end
  end
end

lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang #=> ["Ruby", "Perl", "Python", "Scheme", "Pike",
#    "REBOL"]
#
color_table = {black: "#000000", white: "#FFFFFF"}
p color_table.to_a  #=> [[:black, "#000000"],
#   [:white, "#FFFFFF"]]
#

lang[2, 0] = "Java"
p lang

a = [1, 2, 3, 4, 5]
p a.first    #=> 1
p a.last     #=> 5
p a          #=> [1, 2, 3, 4, 5]

a = [1, 2, 3, 4, 5]

a << 6
p a
b = [8]

p a + b

a = [1,9, 11, 8, 100]

p a.sort!

a.each {|x| p x}

a << {foo: :bar}

