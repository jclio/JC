# Ruby 提供了一个完美的处理异常的机制。
# 我们可以在 begin/end 块中附上可能抛出异常的代码，并使用 rescue 子句告诉
# Ruby 完美要处理的异常类型。
#
#
# begin
#   raise ..
#   rescue [ExceptionType = StandardException] # 捕获指定类型的异常 缺省值是StandardException
#   $! #表示异常信息
#   $@ #表示异常出现的代码位置
# else #其余异常
# ..
# ensure #不管有没有异常 进入该代码块
# end
#


begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN

end

print file, "==", STDIN,"\n"

begin
  # 这段代码抛出的异常捕获 将被下面的rescue子句
rescue
  # 这个块将捕获所有类型的异常
  retry # 这将把控制转移到begin的开头
end

# begin
#   file = open("/unexistant_file")
#   if file
#     puts "File opened successfully"
#
#   end
# rescue
#   fname = "existant_file"
#   retry
# end


begin
  puts 'I am before the raise'
  raise 'An error has occurred'
  puts 'I am after the raise'
rescue
  puts 'I am rescued.'
end

puts 'I am after the begin block'

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

begin
  # .. process
  # .. raise error
rescue
  # .. handler error
ensure
  #.. final ensure process
  # .. always process
end

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

# 使用 else 语句
# 如果提供了 else 子句，它一般是放置在 rescue 子句之后，任意 ensure 之前。
#
# else 子句的主体只有在代码主体没有抛出异常时执行。
#


begin
  # .. process
  # .. raise error
rescue
  # .. handler error
else
  # .. if have no error
ensure
  # .. final ensure process
  # .. always process
end


begin
  puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations -- no errors!"
ensure
  puts "Ensuring execution"
end

# raise 和 rescue 的异常机制能在发生错误时放弃执行，有时候需要在正常处理时跳出一些深层嵌套的结构。此时 catch 和 throw 就派上用场了。
#
# catch 定义了一个使用给定的名称（可以是 Symbol 或 String）作为标签的块。块会正常执行直到遇到一个 throw。
#

# throw :lablename
# # .. 不会被执行
# catch :lablename do
#   # ..在遇到一个 throw 后匹配将被执行catch
# end
#
# throw :lablename condition
# # 这不会被执行
# catch :lablename do
#   # 在遇到一个throw 后匹配将被执行的catch
# end

def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex:")
end

promptAndGet("Name:")

class FileSaveError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason
  end
end


File.open("input.txt", "w") do |file|
  begin
    # 写出数据
  rescue
    # 发生错误
    raise FileSaveEror.new($!)
  end
end





