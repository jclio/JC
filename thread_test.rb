Thread.new {

}

def func1
  i = 0
  while i <= 2
    puts "func1 at: #{Time.now}"
    sleep(2)
    i = i + 1
  end
end

def func2
  j = 0
  while j <= 2
    puts "func2 at: #{Time.now}"
    sleep(1)
    j = j + 1
  end
end

# puts "Started At #{Time.now}"
#
# t1 = Thread.new {func1}
# t2 = Thread.new{func2}
#
# t1.join
# t2.join
#
# puts "End at #{Time.now}"
#
# begin
#   t = Thread.new do
#     Thread.pass
#     raise "unhandled exception"
#   end
#   t.join
# rescue
#   p $!
# end

# require "thread"
# puts "Synchronize Thread"
#
# @num = 200
# @mutex = Mutex.new
#
# def buyTicket(num)
#   @mutex.lock
#   if @num >= num
#     @num = @num - num
#     puts "you have successfully bought #{num} tickets"
#   else
#     puts "sorry,no enough tickets"
#   end
#   @mutex.unlock
# end
#
# ticket1 = Thread.new 10 do
#   10.times do |value|
#     ticket_num = 15
#     buyTicket(ticket_num)
#     sleep 0.01
#   end
# end
#
# ticket2=Thread.new 10 do
#   10.times do |value|
#     ticket_num=20
#     buyTicket(ticket_num)
#     sleep 0.01
#   end
# end
#
# sleep 1
# ticket1.join
# ticket2.join
#
#

# require "thread"
# puts "SizeQuee Test"
#
# queue = Queue.new
#
# producer = Thread.new do
#   10.times do |i|
#     sleep rand(i)
#     queue << i
#     puts "#{i} produced"
#   end
# end
#
# consumer = Thread.new do
#   10.times do |i|
#     value = queue.pop
#     sleep rand(i/2)
#     puts "consumed #{value}"
#   end
# end

# consumer.join
#

require "thread"

# count = 0
# arr = []
#
# 10.times do |i|
#   arr[i] = Thread.new {
#     sleep(rand(0)/10.0)
#     Thread.current["mycount"] = count
#     count += 1
#   }
# end
#
# arr.each {|t| t.join; print t["mycount"], ", "}
#
# puts "count = #{count}"
#
#
#
#

# athr = Thread.new {Thread.current["name"] = "Thread A"; Thread.stop}
# bthr = Thread.new {Thread.current["name"] = "Thread B"; Thread.stop}
# cthr = Thread.new {Thread.current["name"] = "Thread C"; Thread.stop}
# Thread.list.each {|x| puts "#{x.inspect}: #{x["name"]}"}

mutex = Mutex.new
# count1 = count2 = 0
# difference = 0
# counter = Thread.new do
#   loop do
#     mutex.synchronize do
#       count1 += 1
#       count2 += 1
#     end
#   end
# end
#
# spy = Thread.new do
#   loop do
#     mutex.synchronize do
#       difference += (count1 - count2).abs
#     end
#   end
# end
#
# sleep 1
# puts "count1: #{count1}"
# puts "count2: #{count2}"
# puts "difference : #{difference}"
#

cv = ConditionVariable.new
a = Thread.new {
  mutex.synchronize {
    puts "A: I have critical section, but will wait for cv"
    cv.wait(mutex)
    puts "A: I have critical section again! I rule!"
  }
}

puts "(Later, back at the ranch...)"

b = Thread.new {
  mutex.synchronize {
    puts "B: Now I am critical, but am done with cv"
    cv.signal
    puts "B: I am still critical, finishing up"
  }
}
a.join
b.join

thr = Thread.new do
  puts "In second thread"
  raise "Raise exception"
end

# thr.join # 调用实例化方法