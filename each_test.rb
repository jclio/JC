# each 迭代器返回数组或哈希的所有元素。
#
# 语法
# collection.each do |variable|
#   code
# end
#

ary = [1,2,3,4,5]
ary.each do |i|
  puts i
end


# each 迭代器总是与一个块关联。
# 它向块返回数组的每个值，一个接着一个。值被存储在变量 i 中，然后显示在屏幕上。


# collect 迭代器返回集合的所有元素。
#
# 语法
# collection = collection.collect
#

a = [1,2,3,4,5]
b = Array.new

b = a.collect{ |x|x}
puts b


# 注意：collect 方法不是数组间进行复制的正确方式。这里有另一个称为 clone 的方法，
# 用于复制一个数组到另一个数组。
#
# 当您想要对每个值进行一些操作以便获得新的数组时，您通常使用 collect 方法。
# 例如，下面的代码会生成一个数组，其值是 a 中每个值的 10 倍。
#

a = [1,2,3,4,5]
b = a.collect{|x| 10 * x}

puts b

sum = 0

cutcome = {"block1" => 1000, "book2" => 1000, "book3" => 4000}

cutcome.each{|item, price| sum += price}
puts "sum = " + sum.to_s

sum = 0
cutcome = {"block1" => 1000, "book2" => 1000, "book3" => 4000}

cutcome.each{|pair| sum += pair[1]}

puts "sum=" + sum.to_s

