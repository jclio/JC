# array in ruby and some syntactic sugar
class Ruby_array
  fruits = ["Apple", "Banana", "pear"]
  puts(fruits)
  puts(fruits[0])
  puts(fruits[fruits.length-1])
  puts(fruits.last())
  puts(fruits[0..1])
  puts(fruits[-1])
  puts(0..10)
  puts([1].methods.include?(:[]))
  # puts([1].methods.include?('[]')) outdate

  # modefy
  fruits[0] = "First-Apple"
  puts(fruits[0])
  # add
  fruits.push("new Apple")
  puts(fruits[-1])
  # delete
  fruits.pop()
  puts(fruits[-1])
  # two-dimension array
  complex = [666, [12, "aa"],[true, 'a'], "last"]
  puts(complex)
  puts(complex[1])
  puts(complex[1][1])

  # traverse
  complex.each {|e| puts "E: #{e}"}

  a = [41, 6, 122,45,]
  # sort
  puts a.sort
  # any
  puts a.any? {|i| i>45}
  puts a.any? {|i| i>121}
  # all
  puts a.all? {|i| i>45}
  puts a.all? {|i| i>6}
  # operate
  puts(a.collect{|e| e * 2})
  # filter
  puts(a.select {|e| e % 2 == 0})
  # max, min
  puts(a.max)
  puts(a.min)
  # member
  puts(a.member?(6))
  # inject
  a = [1, 2, 3, 4, 5]
  puts(a.inject(10) {|s, e| s + e }) # add
  puts(a.inject {|s, e| s + e }) # s's default value is 0
  puts(a.inject{|m, e| m * e }) # multiply
  puts(a.inject{|d, e| d / e }) # divid
  puts(a.inject{|m, e| m - e }) # minus

  # multiple statement
  a.inject(0) do |s, e|
          puts"s:#{s}, e:#{e}, s + e:#{s + e}"
          s += e
  end
end