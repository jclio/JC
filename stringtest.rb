class Stringtest
end

#
# Ruby 中还支持一种采用 %q 和 %Q 来引导的字符串变量，
# %q 使用的是单引号引用规则，
# 而 %Q 是双引号引用规则，后面再接一个 (! [ { 等等的开始界定符和与 } ] )
# 等等的末尾界定符。
#
# 跟在 q 或 Q 后面的字符是分界符.
# 分界符可以是任意一个非字母数字的单字节字符
# .如:[,{,(,<,!等,字符串会一直读取到发现相匹配的结束符为止
#

desc1 = %Q{Ruby '' "" }
desc2 = %q<Ruby '' "" >

puts desc1
puts desc2

# 在一个双引号括起的字符串内，转义字符会被解析。
# 在一个单引号括起的字符串内，转义字符不会被解析，原样输出
#

print '\a'
print "\a"

# 在程序开头使用$KCODE改变字符集
$KCODE = 'u'

myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"

print "abc" * 3

print "abc" % "abc"


print "abc" + "def"


print "\n"

print "abc" << 1

print "\n"

print "abc" <=> "defg"

print "abc" == "abc"

print "\n"

print "abc" =~ 1

print "abc"[1]

print "abc"[0,1]
print "\n"


print "abc"[0..1]
print "\n"

print "abc"[0...1]

print "abc".concat("cde")

print "\n"

print "abc".crypt("ab")

