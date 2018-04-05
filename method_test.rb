p "10, 20, 30, 40".split(",")
p [1, 2, 3, 4].index(2)


# 调用类方法时,可以使用:: 代替. , 在Ruby语法中, 两者所代表的意思是一样的

p print("1:")

def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 100
  num *= 2
end



def foo(*args)
  args
end

p foo(1,2,3)

def area2(x:0, y:0, z:0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end

p area2(x:2, y:3, z:4)
p area2(x:2, z:3)

def meth(x:0, y:0, z:0, **args)
  [x, y, z, args]
end
p meth(z:4, y:3, v:4, w:5)

def area3(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end
args1 = {x: 2, y: 3, z: 4}
p area3(args1)            #=> 52
args2 = {x: 2, z: 3}      #=> 省略y
p area3(args2)            #=> 12

def foo(a, b, c)
  a + b + c
end

args1 = [2,3]
p foo(1, *args1)

def foo(arg)
  arg
end

p foo({"a"=>1, "b"=>2})    #=> {"a"=>1, "b"=>2}
p foo("a"=>1, "b"=>2)      #=> {"a"=>1, "b"=>2}
p foo(a: 1, b:2)           #=> {:a=>1, :b=>2}