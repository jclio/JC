class Ruby_everythin_is_object
  puts(3.class)
  puts("".class)
  puts(3.14.class)
  puts(true.class)
  puts(false.class)
  puts((0..1).class)
  puts([].class)

  puts("---------object tree-------------")
  # BasicObject-Object-Numeric-Integer
  puts(3.class)
  puts(3.class.superclass)
  puts(3.class.superclass.superclass)
  puts(3.class.superclass.superclass.superclass)
end
