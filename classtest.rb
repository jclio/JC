class HelloWorld
  attr_accessor :name

  def greet
    puts "Hi, I am #{self.name}"
  end
  def HelloWorld.hello

  end

  def self.hello

  end
end

h = HelloWorld.new
h.name="gao"
p h.name

h.greet

# class << 类名 ~ end ,以定义实例方法的形式来定义类方法

class << HelloWorld
  def hello(name)
    puts "#{name} sid hello"
  end


end

HelloWorld.hello"gao"

# 可以使用 class << self ~ end 这样的形式，在 class 上下文中定义类方法。
#
class HelloWorld
  VERSION = "1.0"
  class << self
    def hello(name)
      puts "#{name} said hello."
    end
  end
end

# class << 类名 ~ end这种写法的类定义成为单例类定义, 单例类定义中定义的方法成为单例方法
#
p HelloWorld::VERSION

class AccTest
  def pub
    puts ""
  end

  public :pub

  def priv

  end

  private :priv
end

acc = AccTest.new
acc.pub
# acc.priv
#

class AccTest
  public
  def pub
    puts ""
  end

  private
  def priv

  end

end

acc = AccTest.new
acc.pub

class Point
  attr_accessor :x, :y   # 定义存取器
  protected :x=, :y=     # 把x= 与y= 设定为protected

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)        # 交换x、y 值的方法
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y   # 在同一个类中
    # 可以被调用
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [ p0.x, p0.y ]         #=> [0.0, 0.0]
p [ p1.x, p1.y ]         #=> [1.0, 2.0]

p0.swap(p1)
p [ p0.x, p0.y ]         #=> [1.0, 2.0]
p [ p1.x, p1.y ]         #=> [0.0, 0.0]

# p0.x = 10.0              #=> 错误（NoMethodError）
#

class String
  def count_word
    ary = self.split(/\s+/)
    ary.size
  end
end

str = "Just Another Ruby Newbie"
p str.count_word

class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday[6]   #=> "土"
p wday[11]  #=> "木"
p wday[15]  #=> "月"
p wday[-1]  #=> "土"

# p Object.instance_methods

class C1                    # 定义C1
  def hello                 # 定义hello
    "Hello"
  end
end

class C2 < C1
  alias old_hello hello
  def hello
    "#{old_hello}, agin"
  end
end

obj = C2.new
p obj.old_hello
p obj.hello

str1 = "ruby"
str2 = "ruby"

class << str1
  def hello
    "hello, #{self}"
  end
end

p str1.hello
# p str2.hello

p Math::PI

include Math
p PI
p sqrt(2)

module MyModule

end

class MyClass1
  include MyModule
end

module HelloModule
  Version = "1.0"

  def hello(name)
    puts "hello, #{name}"
  end
  module_function :hello
end

p HelloModule::Version
HelloModule.hello "Alice"
# 。如果希望把方法作为模块函数公开给外部使用，
# 就需要用到 module_function 方法。
# module_function 的参数是表示方法名的符号。


include HelloModule
p Version
hello "Alice"

module FooModule
  def foo
    p self
  end
  module_function :foo
end

FooModule.foo   #=> FooModule


module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
p c.meth

p C.include?(M)

# 类 C 的实例在调用方法时，
# Ruby 会按类 C、模块 M、类 C 的父类 Object 这个顺序查找该方法
# ，并执行第一个找到的方法。
# 被包含的模块的作用就类似于虚拟的父类。
#
p C.superclass # 直接返回类C的父类
p C.ancestors # 取得继承关系

module M
  def meth
    "M#meth"
  end
end

class C
  include M
  def meth
    "C#meth"
  end
end

c = C.new
p c.meth

module M1
end

module M2
end

class C
  include M2        #=> 包含M1
  include M1        #=> 包含M2
end

p C.ancestors       #=> [C, M2, M1, Object, Kernel]

module M1
end

module M2
end

module M3
  include M2        #=> 包含M2
end

class BC
  include M1        #=> 包含M1
  include M3        #=> 包含M3
end

p BC.ancestors       #=> [C, M3, M2, M1, Object, Kernel]

module Edition
  def edition(n)
    "#{self} 第#{n} 版"
  end
end

str = "Ruby 基础教程"
str.extend(Edition)

p str.edition(4)

module ClassMethods    # 定义类方法的模块
  def cmethod
    "class method"
  end
end

module InstanceMethods # 定义实例方法的模块
  def imethod
    "instance method"
  end
end

class MyClass
  extend ClassMethods
  include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethod

# 对象就是指数据(或者说数据的集合)及操作该数据的方法的组合
#
#

# "鸭子类型" 对象的特征并不是由其种类(类及其继承关系)决定的,而是由对象本身
# 具有什么样的行为(拥有什么方法)决定的
#
def fetch_and_downcase(ary, index)
  if str = ary[index]
    str.downcase
  end
end

ary = ["Boo", "Foo", "Woo"]
p fetch_and_downcase(ary, 1)

hash = {0 => "Boo", 1 => "Foo", 2 => "Woo"}
p fetch_and_downcase(hash, 1)  #=> "foo"