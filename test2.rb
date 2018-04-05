a = {}
# a << {foo: :bar}



 module Other
   def three() end
 end

 class Single
   def Single.four() end
 end

 a = Single.new

 def a.one()
 end

 class << a
   include Other
   def two()
   end
 end

p Other.singleton_methods
p Single.singleton_methods    #=> [:four]
p a.singleton_methods(false)  #=> [:two, :one]
p a.singleton_methods         #=> [:two, :one, :three]


b = Single.new
p b.singleton_methods
def b.hello
  p "hello"
end
p b.singleton_methods

class << b
  self < Single
  def world
    p "word"
  end
end

p b.singleton_methods

# Ruby 中所有的类都是Class类的实例, 对Class 类添加实例方法,就等于给所有的类都添加了该类的方法,因此,只希望对某个实例方法
# 方法时, 就需要利用单例方法
#

str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "hello, #{self}"
  end
end

p str1.hello
# p str2.hello
#

2.times do |i|
  2.times do |j|
    print <<"EOB"
i : #{i}
j : #{j}
i*j = #{j*i}
EOB
  end
end


p str1 << str2

a = [1,2,3,4,5]
a << 6
p a

{ a => "abc" }

p  %w[thin mongrel webrick]