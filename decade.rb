
$LOAD_PATH << '.'
require "support"

class Decade
  no_of_yrs = 10
  def no_of_months
    puts Week::FIRST_DAY
    number = 10 * 12
    puts number
  end
end

d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year

d1.no_of_months

#
# 在阅读本节之前，您需要初步了解面向对象的概念。
#
# 当一个类可以从多个父类继承类的特性时，该类显示为多重继承。
#
# Ruby 不直接支持多重继承，但是 Ruby 的模块（Module）有另一个神奇的功能。它几乎消除了多重继承的需要，提供了一种名为 mixin 的装置。
#
# Ruby 没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。将模块include到类定义中，模块中的方法就mix进了类中。
#
# 让我们看看下面的示例代码，深入了解 mixin：
#
#

module A
  def a1

  end
  def a2

  end
end

module B
  def b1

  end
  def b2

  end
end


class Sample
  include A
  include B
  def s1

  end
end

samp = Sample.new

samp.a1
samp.a2
samp.b1
samp.b2
samp.s1