class ArrayTest
end

#create array
# names = Array.new
# names = Array.newr(20)


names = Array.new(20)
puts names.size
puts names.length


names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) {|e| e = e * 2}
puts "#{nums}"

nums = Array.[](1,2,3,4,5)

puts nums

puts "#{nums}"

nums = Array[1,2,3,4,5]
puts "#{nums}"


digits = Array(0..9)
puts "#{digits}"


digits = Array(0..9)

num = digits.at(6)

puts "#{num}"

puts names * 2

puts names & nums

puts names.clear


a = [ "a", "b", "c"]
n = [65, 66, 67]

puts a.pack("AAA")
puts a.pack("a3a3a3")
puts n.pack("ccc")