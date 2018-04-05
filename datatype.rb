
# Ruby 支持的数据类型包括基本的Number, String, Ranges, Symbols, 以及 true,false和nil这几个特殊值, 同时还有两种重要的数据结构 -- Array 和 Hash



# 整形 (Integer)

# 在31位以内(四字节) -> Fixnum实例
# 超过 -> Bignum 实例
#

#
# print 123
# print 1_234
# print -500
# print 0377      # 八进制
# print 0xff      # 十六进制
# print 0b1011    # 二进制
# print "a".ord   # "a"的字符编码
# print ?\n       # 换行符(0x0a)的编码
# print 1234567890123456780 #大数


a1 = 0

a2 = 1_000_000

print a1
print a2


a3 = 0xa
# puts print 都是向控制台打印字符, 其中puts带回车换行符

puts a1, a2
puts a3

=begin
这是注释, 称作:嵌入式文档注释
=end


123.4   #浮点数
1.0e6   #科学计数法
4E20    #不是必须的
4e+20   # 指数前的符号


f1=0.0
f2=2.1
f3=1000000.1

puts f3

# 算术操作 +-*/ 指数操作符为**
# 指数不必是整数
#

puts 2**(1/4)
puts 16**(1/4.0)
puts 1/4
puts 1/4.0

puts 'escape using "\\"'
puts 'That\'s right'

# 可以使用序列 #{expr}替换任意Ruby表达式的值为一个字符串

puts "相乘: #{24*2}"

name="Ruby"
puts name
puts "#{name+",ok"}"


# 数组 字面量通过[]中以逗号分隔定义, 且支持range定义
# （1）数组通过[]索引访问
# （2）通过赋值操作插入、删除、替换元素
# （3）通过+，－号进行合并和删除元素，且集合做为新集合出现
# （4）通过<<号向原数据追加元素
# （5）通过*号重复数组元素
# （6）通过｜和&符号做并集和交集操作（注意顺序）
#

ary = ['fied', 10, 3.14, "This is a String", "last element"]
ary.each do |i|
  puts i
end


# Ruby 哈希是在大括号内放置一系列键/值对, 键和值之间使用逗号和序列 => 分隔,尾部的逗号会被忽略

hsh = colors = {:red => 0xf00, :green => 0x0f0, :blud => 0x00f}

hsh.each do |key, value|
  print key, " is ", value, "\n"
end

colors.each do |key, value|
  print key, " is ", value, "\n"
end


=begin
范围是通过设置一个开始值和一个结束值来表示。范围可使用 s..e 和 s...e 来构造，或者通过 Range.new 来构造。
使用 .. 构造的范围从开始值运行到结束值（包含结束值）。使用 ... 构造的范围从开始值运行到结束值（不包含结束值）
=end

(10..15).each do |n|
  print n, ' '
end

print "\n"

(10...15).each do |n|
  print n, ' '
end