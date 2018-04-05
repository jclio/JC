# Ruby 提供了一整套 I/O 相关的方法，在内核（Kernel）模块中实现。所有的 I/O 方法派生自 IO 类。
#
# 类 IO 提供了所有基础的方法，比如 read、 write、 gets、 puts、 readline、 getc 和 printf。
#
# 本章节将讲解所有 Ruby 中可用的基础的 I/O 函数。如需了解更多的函数，请查看 Ruby 的 IO 类。
#


val1 = "This is variable one"

val2 = "This is variable two"

# puts 语句指示程序显示存储在变量中的值。这将在每行末尾添加一个新行。
puts val1
puts val2

#
#
# gets 语句
# gets 语句可用于获取来自名为 STDIN 的标准屏幕的用户输入。
#
# 实例
# 下面的代码演示了如何使用 gets 语句。该代码将提示用户输入一个值，
# 该值将被存储在变量 val 中，最后会被打印在 STDOUT 上。


# puts "Enter a value: "
#
# val = gets
#
# puts val


#
# putc 语句
# 与 puts 语句不同，puts 语句输出整个字符串到屏幕上，而 putc 语句可用于依次输出一个字符。
#
# 实例
# 下面代码的输出只是字符 H：
#

str = "Hello Ruby!"
putc str
putc str

# print 语句
# print 语句与 puts 语句类似。唯一的不同在于 puts 语句在输出内容后会跳到下一行，而使用 print 语句时，光标定位在同一行。

print "hello world"

# 打开和关闭文件
# 截至现在，您已经读取并写入标准输入和输出。现在，我们将看看如何操作实际的数据文件。
#
# File.new 方法
# 您可以使用 File.new 方法创建一个 File 对象用于读取、写入或者读写，读写权限取决于 mode 参数。最后，您可以使用 File.close 方法来关闭该文件。


# 语法
# aFile = File.new("filename", "mode")
# # ... 处理文件
# aFile.close
# File.open 方法
# 您可以使用 File.open 方法创建一个新的 file 对象，并把该 file 对象赋值给文件。但是，File.open 和 File.new 方法之间有一点不同。不同点是 File.open 方法可与块关联，而 File.new 方法不能。
#
#
# File.open("filename", "mode") do |aFile|
#   # ... process the file
# end
#

# 模式	描述
# r	只读模式。文件指针被放置在文件的开头。这是默认模式。
# r+	读写模式。文件指针被放置在文件的开头。
# w	只写模式。如果文件存在，则重写文件。如果文件不存在，则创建一个新文件用于写入。
# w+	读写模式。如果文件存在，则重写已存在的文件。如果文件不存在，则创建一个新文件用于读写。
# a	只写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于写入。
# a+	读写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于读写
#
#
# # 读取和写入文件
# 用于简单 I/O 的方法也可用于所有 file 对象。所以，gets 从标准输入读取一行，aFile.gets 从文件对象 aFile 读取一行。
#
# 但是，I/O 对象提供了访问方法的附加设置，为我们提供了便利。
#
# sysread 方法
# 您可以使用方法 sysread 来读取文件的内容。当使用方法 sysread 时，您可以使用任意一种模式打开文件。例如：
#
# 下面是输入文本文件：
#

aFile = File.new("input.txt", "r")
if aFile
  content = aFile.sysread(20)
  puts content
else
  puts "Unable to open file!"
end


aFile = File.new("input.txt", "r+")
if aFile
  aFile.syswrite("AC")
else
  puts "unable to open file!"
end
#
#
# each_byte 方法
# 该方法属于类 File。方法 each_byte 是个可以迭代字符串中每个字符。请看下面的代码实例：
#
#
#
# aFile = File.new("input.txt", "r+")
# if aFile
#   aFile.syswrite("ABCd")
#   aFile.rewind
#   aFile.each_byte{|ch| putc ch; putc ?.}
# else
#   puts "unable "
# end

# IO.readlines 方法
# 类 File 是类 IO 的一个子类。类 IO 也有一些用于操作文件的方法。
#
# IO.readlines 是 IO 类中的一个方法。该方法逐行返回文件的内容。下面的代码显示了方法 IO.readlines 的使用：


arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]
# IO.foreach 方法
# 该方法也逐行返回输出。方法 foreach 与方法 readlines 之间不同的是，方法 foreach 与块相关联。但是，不像方法 readlines，方法 foreach 不是返回一个数组。例如：
#
IO.foreach("input.txt"){|block| puts block}


# File.rename("test1.txt", "test2.txt")


# File.delete("test2.txt")

# 文件模式与所有权
# 使用带有掩码的 chmod 方法来改变文件的模式或权限/访问列表：
#
# 下面的实例改变一个已存在文件 test.txt 的模式为一个掩码值：
#

file = File.new("text.txt", "w")
file.chmod(0775)

File.open("file.rb") if File::exist?("file.rb")

puts File.file?("text.txt")

puts File::directory?("/usr/local/bin")

puts File.readable?("text.txt")

puts File.writable?("test.txt")

puts File.executable?("text.txt")


puts File.zero?("input.txt")


puts File.size?("input.txt")
puts File.size?("text.txt")

puts File::ftype("text.txt")
puts File::ftype("iotest.rb")

puts File::ctime("input.txt")
puts File::mtime("input.txt")
puts File::atime("input.txt")


puts Dir.chdir("/usr/bin")


puts Dir.pwd

puts Dir.entries("/usr/bin").join(' ')

Dir.foreach("/usr/bin") do |entry|
  puts entry
end

# Dir.mkdir("mynewdir")
#

# Dir.mkdir("mynewdir", 755)
#
# Dir.delete("testdir")
# 临时文件是那些在程序执行过程中被简单地创建，但不会永久性存储的信息。
#
# Dir.tmpdir 提供了当前系统上临时目录的路径，但是该方法默认情况下是不可用的。为了让 Dir.tmpdir 可用，使用必需的 'tmpdir' 是必要的。
#
# 您可以把 Dir.tmpdir 和 File.join 一起使用，来创建一个独立于平台的临时文件



require 'tmpdir'

tempfilename = File.join(Dir.tmpdir, "tingtong")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is a temporary file"
tempfile.close

File.delete(tempfilename)

require 'tempfile'

f = Tempfile.new('tingtong')
f.puts "Hello"
puts f.path
f.close

