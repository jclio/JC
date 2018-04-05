class Judge
end
#
# if conditional [then]
# code...
#     [elsif conditional [then]
# code...]...
#     [else
#        code...]
# end
#
# false 和 nil 为假
#

# if a == 4 then a = 7 end

x = 1
if x > 2
  puts "x > 2"
elsif x <= 2 and x != 0
  puts "x = 1"
else
  puts "cant know"
end

# if 修饰词组表示当if右边之条件成立时才执行if左边的式子,
$debug = 1
print "debug\n" if $debug

# Ruby unless 语句
#

x = 1
unless x > 2
  puts "x < 2"
else
  puts "x > 2"
end


$var = 1
print "1 -- print\n" if $var
print "2 -- not print\n" unless $var

$var = false
print "3 -- print\n" unless $var

#Ruby case
#
# case expression
# [when expression [, expression ...] [then]
# code ]...
#     [else
# code ]
# end
# case先对一个 expression 进行匹配判断，然后根据匹配结果进行分支选择。
#
# 它使用 ===运算符比较 when 指定的 expression，若一致的话就执行 when 部分的内容。
#
# 通常我们省略保留字 then 。若想在一行内写出完整的 when 式，则必须以 then 隔开条件式和程式区块。如下所示:
# when a==4 then a =7 end
#


$age = 5
case $age
  when 0..2
    puts "baby"
  when 3..6
    puts "little body"
  when 7..12
    puts "child"
  when 13..18
    puts "teenager"
  else
    puts "other"
end


foo = false
bar = true
quu = false

case
  when foo then puts "foo is true"
  when bar then puts "bar is true"
  when quu then puts "quu is true"
end
