
=begin
  数据封装
  数据抽象
  多态性
  继承
=end
class Customer

  # 局部变量, 以小写字母或_开始
  # 实例变量, 变量名之前放置符号 (@)
  # 类变量, 变量名之前放置符号(@@)
  # 全局变量, 以美元符号($)开始
  # 常数, 大写字母开头

  @@no_of_customers=0
  #当您想要声明带参数的 new 方法时，您需要在创建类的同时声明方法 initialize。
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  # 类中的每个方法是以关键字def开始,后跟方法名, 方法名总是以小写字母开头
  def display_details()

    # 当您想要在一个单行上显示实例变量的文本和值时,需要在puts语句的变量名前放置
    # 符号 (#)
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end

  def total_no_of_customers()
    @@no_of_customers +=1
    puts "Total number of customers: #@@no_of_customers"
  end

  # 当调用一个未初始化的局部变量时，它被解释为调用一个不带参数的方法



end

# 使用类的方法 new 创建对象
cust1 = Customer. new("1", "John", "Haha")
cust2 = Customer. new("2", "Poul", "Hehe")


cust1.display_details
cust1.total_no_of_customers
cust2.display_details
cust2.total_no_of_customers


class Sample
  def hello
    puts "Hello Ruby!"
  end
end

object = Sample.new
object.hello

$global_variable = 10

class Class1
  def print_global
    puts "全局变量在Class1中输出 #$global_variable"
  end
end

class Class2
  def print_global
    puts "全局变量在Class2中输出 #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

# 定义在类或模块类的常量可以从类或模块的内部访问, 定义在类或模块外的常量可以被全局访问
# 常量不能定义在方法内, 引用一个未初始化的常量会产生错误, 对已经初始化的常量赋值会产生警告

class Example
  VAR1 = 100
  VAR2 = 200

  def show
    puts "第一个常量的值为 #{VAR1}"
    puts "第二个常量的值为 #{VAR2}"
  end
end

object = Example.new()
object.show


# Ruby伪变量
# self : 当前方法的接收器对象
# true : 代表true的值
# false: 代表false的值
# nil: 代表undefined 的值
# _FILE_: 当前源文件的名称
# _LINE_: 当前行在源文件中的编号
#

print __FILE__
print  __LINE__




