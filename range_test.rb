# # 作为序列的范围
# # 作为条件的范围
# # 作为间隔的范围
#
#
# puts (1..5)
# puts (1...5)
#
# puts ('a'..'d')
#
#
# range1 = (1..10).to_a
#
# range2 = ('bar'..'bat').to_a
#
# puts "#{range1}"
# puts "#{range2}"
#
#
# digits = 0..9
#
# puts digits.include?(5)
#
# ret = digits.min
#
# puts "#{ret}"
#
# ret = digits.max
#
# puts "#{ret}"
#
# ret = digits.reject {|i| i< 5}
#
# puts "不符合条件的有#{ret}"
#
# digits.each do |digit|
#   puts "#{digit}"
# end
#
#
#
# score = 70
#
# result = case score
#            when 0..40
#              "too bad"
#            when 41..60
#              "bad"
#            when 61..70
#              "just so so"
#            when 71..100
#              "normal"
#            else
#              "error"
#          end
#
# puts result

if (1..10) === 5
  puts " 5 in (1..10)"
end

if ('a'..'j') === 'c'
  puts "c in ('a'..'j')"
end

if ('a'..'j') === 'z'
  puts "z in ('a'..'j')"
end