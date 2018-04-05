7.times do
  puts 'a'
end

5.times do |i|
  puts i
end

i = 1

while i < 3
  puts i
  i += 1
end


sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end

puts sum

names = ["awk","Perl","Python","Ruby"]
names.each do |name|
  puts name
end

# loop do
#   print "ruby"
# end

i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
end


# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
# max_matches = 10
# matches = 0
# file = File.open(filename)
# file.each_line do |line|
#   if matches >= max_matches
#     break
#   end
#   if pattern =~ line
#     matches += 1
#     puts line
#   end
# end
# file.close


file = File.open(ARGV[0])
file.each_line do |line|
  next if /^\s*$/ =~ line
  next if /^#/ =~ line
  puts line
end
file.close

10.times{|i| puts i}