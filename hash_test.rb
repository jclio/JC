# "key" => "value"
#

months = Hash.new

months = Hash.new("month")

# months = Hash.new "month"

puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"


test = Hash [1, "jan"] => "January"

puts "#{test[[1, "jan"]]}"


$, = ","

months = Hash.new("month")

months = {"1" => "January", "2" => "February"}

keys = months.keys

puts "#{keys}"


# Hash.new {|hash, key| block|}
#

puts test == months

puts H == months

a = H["a"]

puts a

puts H.inspect

puts H.value?(100)

