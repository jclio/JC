#!/usr/bin/ruby -w
# -*- coding:UTF-8 -*-
#


time1 = Time.new

puts "now: " + time1.inspect

time2 = Time.now

puts "now: " + time2.inspect


time = Time.new

puts time.inspect

puts time.year

puts time.month

puts time.day

puts time.wday

puts time.yday

puts time.hour

puts time.min

puts time.min

puts time.sec

puts time.usec

puts time.zone

puts Time.local(2008, 7, 8)

puts Time.local(2008, 7, 8, 9, 10)

puts Time.utc(2008, 7, 8, 9, 10)

puts Time.gm(2008, 7, 8, 9, 10, 11)


puts Time.now.zone

puts time.isdst


values = time.to_a

puts time.to_a

puts Time.utc(*values)

time = Time.now.to_i

puts time

puts Time.at(time)

time = Time.now.to_f

time = Time.now

puts time

puts time.zone

puts time.utc_offset

puts time.isdst

puts time.utc?

puts time.localtime

puts time.gmtime

puts time.getlocal

puts  time.getutc

time = Time.now

puts time.to_s

puts time.ctime

puts time.localtime

puts time.strftime("%Y-%m-%d %H:%M:%S")

puts time.strftime"%a"
puts time.strftime"%A"
puts time.strftime"%b"
puts time.strftime"%B"
puts time.strftime"%Z"
puts time.strftime"%%"


now = Time.now


puts now

past = now - 10

puts past

future = now + 10

puts future

diff = future - now
puts diff

