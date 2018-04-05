class Foreach
end


# while conditional [do]
# code
# end
#
# while conditional [:]
# code
# end
#
#


$i = 0
$num = 5

while $i < $num do
  puts("i = #$i")
  $i +=1
end

# code while condition
#
# 或者
#
# begin
#   code
# end while conditional
#

$i = 0
$num = 5
begin
  puts(" i=#$i")
  $i += 1
end while $i < $num

# until conditional [do]
# code
# end
#



$i = 0
$num = 5

until $i > $num do
  puts(" i = #$i")
  $i +=1;
end

# code until conditional
#
# 或者
#
# begin
#   code
# end until conditional
#

$i = 0
$num = 5

begin
  puts(" i = #$i")
  $i +=1;
end until $i > $num

# for variable [, variable ...] in expression [do]
# code
# end
#

for i in 0..5
  puts(i)
end


# (expression).each do |variable[, variable...]| code end

(0..5).each do |i|
  puts (i)
end

for i in 0..5
  if i > 2 then
    break
  end
  puts (i)
end

for i in 0..5
  if i < 2 then
    next
  end
  puts (i)
end


# redo
#重新开始最内部循环的该次迭代，
# 不检查循环条件。如果在块内调用，则重新开始 yield 或 call。

for i in 0..5
  if i < 2 then
    puts "#{i}"
    redo
  end
end


# retry

# begin
#   do_something   # 抛出的异常
# rescue
#   # 处理错误
#   retry          # 重新从 begin 开始
# end
#

# for i in 1..5
#   if i > 2
#     retry
#   end
#   puts "#{i}"
# end