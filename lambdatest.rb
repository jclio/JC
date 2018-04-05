prc1 = Proc.new do |a, b, c|
  p [a, b, c]
end

prc1.call(1, 2)

prc2 = lambda do |a, b, c|
  p [a, b, c]
end
prc2.call(1, 2, 3)


def power_of(n)
  lambda do |x|
    return x ** n
  end
end

cube = power_of(3)
p cube.call(5)

def power_of(n)
  Proc.new do |x|
    return x ** n
  end
end

cube = power_of(3)
# p cube.call(5)  #=> 错误（LocalJumpError）
#

def prefix(ary, obj)
  result = []
  ary.each do |item|
    result << item
    if item == obj
      return result
    end
  end
  return  result
end
p prefix([1, 2, 3, 4, 5], 3)  #=> [1, 2, 3]

[:a, :b, :c].collect do |item|
  break []
end

square = -> (n) {return n ** 2}

p square[5]

prc0 = proc{ nil }
prc1 = proc{|a| a }
prc2 = lambda{|a, b| [a, b] }
prc3 = lambda{|a, b=1, *c| [a, b, c] }
prc4 = lambda{|a, &block| [a, block] }
prc5 = lambda{|a: 1, **b| [a, b] }
p prc0.parameters    #=> []
p prc1.parameters    #=> [[:opt, :a]]
p prc2.parameters    #=> [[:req, :a], [:req, :b]]
p prc3.parameters    #=> [[:req, :a], [:opt, :b], [:rest, :c]]
p prc4.parameters    #=> [[:req, :a], [:block, :block]]
p prc5.parameters    #=> [[:key, :a], [:keyrest, :b]]

prc1 = Proc.new{|a, b| a + b}
p prc1.lambda?  #=> false
prc2 = lambda{|a, b| a + b}
p prc2.lambda?  #=> true