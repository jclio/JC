line1 = "Cats are smarter than dogs"
line2 = "Dogs also like meat"

if line1 =~ /Cats.(.*)/
  puts "Line1 contains Cats"
end

if line2 =~ /Cats(.*)/
  puts "Line2 contains Dogs"
end

# /pattern/
# /pattern/im  可以指定选项
# %r!usr/local! #使用分隔符的正则表达式


# * 零次或多次
#  + 一次或多次
#  ? 零次或一次
#

if "ruby" =~ /[Rr]uby/
  puts true
end

if "a" =~ /[^0-9]/
  puts true
end

# 非贪婪匹配 匹配最小次数的重复
#

phone = "138-3453-1111 #这是一个电话号码"

phone = phone.sub!(/#.*$/, "")
puts "#{phone}"

phone = phone.gsub!(/\D/, "")
puts  "#{phone}"

text = "rails 是 rails,  Ruby on Rails 非常好的 Ruby 框架"

# 把所有的 "rails" 改为 "Rails"
text.gsub!("rails", "Rails")

# 把所有的单词 "Rails" 都改成首字母大写
text.gsub!(/\brails\b/, "Rails")

puts "#{text}"

# 若匹配成功则返回匹配部分的位置
puts /Ruby/i =~ "ruby"

puts /Ruby/ =~ "Yet Another Ruby Hacker,"