class Ruby_hashTable
  numbers = {1 => "one", 2 => "two", 3 => "three"}
  puts(numbers)
  puts(numbers[1])

  item = {:isstring => "Hello string", :isarray => [1, 2, 3]}
  puts(item[:isstring])
  puts(:string.object_id)
  puts('aaa'.object_id)
  puts('aaa'.object_id)
  puts(:string.object_id)
end