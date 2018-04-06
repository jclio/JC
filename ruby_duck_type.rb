class Ruby_duck_type
  a = ["AAa", 10]
  s = 0
  len = a.length
  while(len>0)
    s += a[len-1].to_i
    len -= 1
  end
  puts(s)
end