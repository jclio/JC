class Algorithm
end

print (1...10)===5

print 1.eql?(1.0)

print 1000.equal?(1000)

a, b, c = 1, 2, 3


a, b = b, c

print a
print b

a = 60
b = 13

print "\n"

print a&b

print a|b

print a^b

print ~a

print a and b

print "\n"

print a or b

print "\n"



print a && b

print "\n"

print a || b

print !(a && b)

print 1 < 0 ? 10:20

print "\n"

print defined? variable

foot = 42

print defined? foo
print defined? $_
print defined? bar


print defined? puts
print defined? puts(bar)
print defined? unpack


print defined? super
print defined? super

print defined? yield

# 可以通过在方法名称前加上类或模块名称和 . 来调用类或模块中的方法
# 可以使用类或模块名称和两个冒号:: 来引用类或模块中的常量
# :: 是一元运算符, 允许在类或模块内定义常量, 实例方法和类方法, 可以从类或模块外的任何地方
# 进行访问
#
#在 Ruby 中，类和方法也可以被当作常量
#
# 只需要在表达式的常量名前加上 :: 前缀，即可返回适当的类或模块对象
#

MR_COUNT = 0
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1
  MR_COUNT = 2
end

puts MR_COUNT
puts Foo::MR_COUNT


CONST = ' out there'
class Inside_one
  CONST = proc {' in there'}
  def where_is_my_CONST
    ::CONST + ' inside one'
  end
end

class Inside_two
  CONST = ' inside two'
  def where_is_my_CONST
    CONST
  end
end

puts Inside_one.new.where_is_my_CONST # out there inside one
puts Inside_two.new.where_is_my_CONST # inside two

puts Object::CONST + Inside_two::CONST # out there inside two
puts Inside_two::CONST + CONST # inside two out there
puts Inside_one::CONST #
puts Inside_one::CONST.call + Inside_two::CONST

# 运算符优先级
#  最高: 常量解析运算符 ::
#       元素引用,元素集合 [][]=
#       ** 指数
#
#