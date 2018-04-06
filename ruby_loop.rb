class Ruby_loop
  i = 0
  3.times {
    i += 1
    puts("print three times...#{i}")
  }
end

# self-defined times function
class Integer
  def my_times
    i = self
    while i > 0
      i -= 1
      yield
    end
  end
end

3.my_times{puts("aaa")}