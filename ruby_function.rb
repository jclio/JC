# function  in Ruby
# define a function--no arguments
def fun1()
  puts"This is a function."
end

fun1
fun1()

# define a function--a argument
def fun2(name)
  puts"This is a function, created by #{name}."
end

fun2("Tanglong")

# define a function--default arguments
def fun3(name="Tanglong")
  puts"This is a function, created by #{name}."
end

fun3
fun3("Harry Blue")