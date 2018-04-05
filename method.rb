class Method
end

# def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
# expr..
# end
#
# def method_name
#   expr..
# end
#
# def method_name (var1=value1, var2=value2)
#   expr..
# end
#

def test(a1 = "ruby", a2 ="Perl")
  puts "#{a1}"
  puts "#{a2}"
end

test "c", "c++"
test

# Ruby 中的每个方法默认都会返回一个值。这个返回的值是最后一个语句的值。例如：
#

def test2
  i = 100
  j = 10
  k = 0
end

print test2

def test3
  i = 100
  j = 200
  k = 300
  return i, j, k
end

var = test3
puts var


# 可变参数
#

def sample (*test)
  puts "#{test.length}"
  for i in 0 ... test.length
    puts "#{test[i]}"
  end
end

sample "Zara", "6", "F"
sample "Zara", "6", "F", ""
hsh = {:abc => "abc"}


# 类方法
# 当方法定义在类的外部，方法默认标记为 private。另一方面，如果方法定义在类中的，则默认标记为 public。
#
# 方法默认的可见性和 private 标记可通过模块（Module）的 public 或 private 改变。


class Accounts
  def reading_charge

  end
  #Ruby 提供了一种不用实例化即可访问方法的方式
  def Accounts.return_date
    puts "类方法"
  end
end

Accounts.return_date
#
# Ruby alias 语句
# 这个语句用于为方法或全局变量起别名。别名不能在方法主体内定义。即使方法被重写，方法的别名也保持方法的当前定义。
#
# 为编号的全局变量（$1, $2,...）起别名是被禁止的。重写内置的全局变量可能会导致严重的问题。
#
# 语法
# alias 方法名 方法名
# alias 全局变量 全局变量
#

# Ruby undef 语句
# 这个语句用于取消方法定义。undef 不能出现在方法主体内。
#
# 通过使用 undef 和 alias，类的接口可以从父类独立修改，但请注意，在自身内部方法调用时，它可能会破坏程序。

# undef enum