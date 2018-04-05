require 'pp'

v = [{
    key00: "1",
    key01: "2",
    key02: "3"
     }]

p v
pp v

ary1 = []
ary2 = []
p ary1.object_id
p ary2.object_id

str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"
p str1.equal?(str2)    #=> true
p str1.equal?(str3)    #=> false

p str1 == str3

p 1.0.eql?(1)