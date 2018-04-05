class Module
end


# 模块（Module）是一种把方法、类和常量组合在一起的方式。
# 模块（Module）为您提供了两大好处。
#
# 模块提供了一个命名空间和避免名字冲突。
# 模块实现了 mixin 装置。
# 模块（Module）定义了一个命名空间，
# 相当于一个沙盒，在里边您的方法和常量不会与其他地方的方法常量冲突。
#
# 模块类似与类，但有一下不同：
#
# 模块不能实例化
# 模块没有子类
# 模块只能被另一个模块定义

module Trig
 PI = 3.1415926
  def Trig.sin(x)

  end
  def Trig.cos(x)

  end
end

module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)

  end
end

# require 语句类似于 C 和 C++ 中的 include 语句
# 以及 Java 中的 import 语句。如果一个第三方的程序想要使用任何已定义的模块
# ，则可以简单地使用 Ruby require 语句来加载模块文件：
#require filename
#
# 在这里，我们使用 $LOAD_PATH << '.'
# 让 Ruby 知道必须在当前目录中搜索被引用的文件。如果您不想使用 $LOAD_PATH，
# 那么您可以使用 require_relative 来从一个相对目录引用文件。
# # require 'trig.rb'
# require 'moral'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

# 您可以在类中嵌入模块。为了在类中嵌入模块，您可以在类中使用 include 语句：
#
# 语法
# include modulename
# 如果模块是定义在一个单独的文件中，那么在嵌入模块之前就需要使用 require
# 语句引用该文件
#



