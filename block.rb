class Block
end

# Ruby 块
# 块由大量的代码组成。
# 您需要给块取个名称。
# 块中的代码总是包含在大括号 {} 内。
# 块总是从与其具有相同名称的函数调用。这意味着如果您的块名称为 test，那么您要使用函数 test 来调用这个块。
# 您可以使用 yield 语句来调用块。

def test
  puts "in test method"
  yield
  puts "go back test method"
  yield
end

test {puts "in block"}

def test1
  yield 5,10
  puts "int test1 method"
  yield 100,101
end

test1 {|i,j| puts "int block #{i} #{j} "}
#
# 如果方法的最后一个参数前带有 &，那么您可以向该方法传递一个块，
# 且这个块可被赋给最后一个参数。
# 如果 * 和 & 同时出现在参数列表中，& 应放在后面
#

def test2(&block)
  block.call
end

test2 {puts "Hello World"}

# 块, 在调用方法时,能与参数一起传递的多个处理的集合
#

alphabet = ["a", "b", "c", "d", "e"]

alphabet.each  {|a| puts a}

sum = 0
outcome = {"参加费"=>1000, "挂件费用"=>1000, "联欢会费用"=>4000}
outcome.each do |pair|
  sum += pair[1] # 指定值
end
puts "合计：#{sum}"

sum = 0
outcome = {"参加费"=>1000, "挂件费用"=>1000, "联欢会费用"=>4000}
outcome.each do |item, price|
  sum += price
end
puts "合计：#{sum}"

file = File.open("test.rb")
file.each_line do |line|
  print line
end
file.close

File.open("test.rb") do |file|
  file.each_line do |line|
    print line
  end
end

file = File.open("input.txt")
begin
  file.each_line do |line|
    print line
  end
ensure
  file.close
end

array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort
p sorted    #=> ["PHP", "Perl", "Python", "ruby"]


sorted = array.sort{|a, b| a <=> b}
p sorted


ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write
)
call_num = 0    # 块的调用次数
sorted = ary.sort do |a, b|
  call_num += 1 # 累加块的调用次数
  a.length <=> b.length
end
puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"
puts "调用块的次数 #{call_num}"

hello = Proc.new do |name|
  puts "hello, #{name}"
end

hello.call("word")

def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call num
    else
      result += num
    end
  end
  result
end

p total2(1, 10)
p total2(1, 10) {|num| num ** 2}

# 在变量名前添加&参数的被称为Proc参数
#
x = 1            # 初始化x
y = 1            # 初始化y
ary = [1, 2, 3]

ary.each do |x|  # 将x 作为块变量使用
  y = x          # 将x 赋值给y
end

p [x, y]         # 确认x 与y 的值

x = y = z = 0       # 初始化x、y、z
ary = [1, 2, 3]
ary.each do |x; y|  # 使用块变量x，块局部变量y
  y = x             # 代入块局部变量y
  z = x             # 代入不是块局部变量的变量z
  p [x, y, z]       # 确认块内的 x、y、z 的值
end
puts
p [x, y, z]         # 确认x、y、z 的值