puts 'foobar'

puts 'foo','bar'

FooError = Class.new(StandardError)

def some_method
  body
end

def no_op; end

sum = 1 + 2
a, b = 1, 2
1 > 2 ? true : false; puts "Hi"
[1, 2, 3].each { |e| puts e }

M = 2
c = 1
e = M * c**2

{one: 1, two: 2}

{ one: 1, two: 2 }
expr = "expr"
puts "string#{expr}"

[1, 2, 3].length

def some_method(arg1 = :default, arg2 = nil, arg3 = [])

end

# def send_mail(source)
#   Mailer.deliver(
#     to: "bob@example.com",
#     from: "us@example.com",
#     subject: "Important message",
#     body: source.txt
#   )
# end
#
menu_item = [
    'spam', 'spam', 'spam',
    'spam', 'Baked beans'
]

num = 100_000_000

# good
# comment line
# another comment line

# SomeModule::SomeClass::SOME_CONST
# SomeModule::SomeClass()

def some_method_with_arguments(arg1, arg2)

end

def some_method

end

arr = [1, 2, 3]

arr.each { |elem| puts elem }

# result = some_condition ? something : something_else

# result =
#     if condition
#       x
#     else
#       y
#     end

something = false
x = !something

# do_something if some_condition
x = 0
if x > 10

end

while x > 5

end

# do_something while some_condition
# do_something util some_condition

val = -100
loop do
  puts val
  val += 1
  break unless val < 0
end

class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

temprerance = Person.new('Temperance', 30)
p temprerance.name

names = ['Bozhidar', 'Steve', 'Sarah']

names.each { |name| puts name }

names.select { |name| name.start_with?('S') }.map { |name| name.upcase }

require 'tempfile'

def with_tmp_dir(&block)
  Dir.mktmpdir do |tmp_dir|
    Dir.chdir(tmp_dir, &block)
  end
end

with_tmp_dir do |dir|
  puts "dir is accessible as parameter and pwd is set : #{dir}"
end

def com_method(some_arr)
  some_arr.size
end

a = %w(a, b, c)

p a

a = %i(a, b c)
p a

gao ||= 'Bozhidar'

p gao

enalbed = true if enalbed.nil?

somthing = something &&= something.downcase

something.is_a?(Array)

(1..100).include?(7)

require 'English'

$LOAD_PATH.unshift File.dirname(__FILE__)

a = [ "b", "c", "d" ]

a.unshift("a")

p a

l = ->(a, b) { a + b }

puts l.call(1, 2)

l = lambda do |a, b|
  tmp = a * 7
  tmp * b / 50
end

p = proc { |n| puts n }
p.call("hello gao")


l = -> (v) { puts v }
l.call(1)
hash = {:a => 1}
reuslt = hash.map { |_k,v| v + 1}

sprintf('%d %d', 20, 10)


sprintf('%{first} %{second}', first: 20, second: 10)

puts %w(one two three).join(', ')

puts x if (1000..2000).include?(x)

puts x if x.between?(1000, 2000)

if x.even?

end

if x.odd?

end

if x.zero?

end

if x.nil?
end

if x == 0

end

at_exit { puts 'Goodbye!' }

puts (5..10).reduce(:+)

puts (5..10).inject { |sum, n| sum + n }

puts (5..10).reduce(1, :*)

a = []
a.reverse.each { }
a.reverse_each { }

class Person
  SOME_CONSTANT = 20

  attr_reader :name

  # validates :name

  def self.some_method

  end

  protected
  def some_protected_method

  end

  private
  def some_private_method

  end
end

module SomeClass
  module_function

  def some_method

  end

  def some_other_method

  end
end

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    "#@first_name #@last_name"
  end
end

# class Person < Struct.new(:first_name, :last_name)
#
# end

class Animal
  def speak

  end
end
class Duck < Animal
  def speak
    puts 'Quack! Quack'
  end
end

class Parent
  @@class_var = 'parent'

  def self.print_class_var
    puts @@class_var
  end
end

class Child < Parent
  @@class_var = 'child'
end

Parent.print_class_var

class TestClass
  def TestClass.some_method

  end

  def self.some_other_method

  end

  class << self
    def first_method

    end

    def second_method_etc

    end
  end
end

TestClass.first_method


begin
  fail 'Oops'
rescue => error
  raise if error.message != 'Oops'
end

# fail 'message'
#

# fail SomeException, 'message'

def foo
end

# def with_io_error_handling
#   yield
# rescue
#
# end

# def foo
#   read_file
# rescue Errno::ENOENT => ex
#   handle_error(ex)
# end

# if d.zero?
#   puts "Cannot divide by 0!"
# else
#   n / d
# end

f = File.open('test.rb')

begin
rescue
  p f.path
ensure
  f.close unless f.nil?
end

arr = []
bash = {}

STATES = %w(draft open closed)

STATES = %i(draft open close)

hash = { one: 1, two: 2, three: 3 }

{ :a => 1, 'b' => 2}

hash.key?(:test)
hash.value?(1)

heroes = { batman: 'Bruce Wayne', superman: 'Clark Kent' }

puts heroes.fetch(:superman, true)

data = { email: "email", username: "nickname"}
email, username = data.values_at(:email, 'nickname')
puts email, username

# email_with_name = format('%s <%s>', user.name, user.email)

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # good
  def to_s
    "#{@first_name} #{@last_name}"
  end
end

$global = 0

# good
puts "$global = #{$global}"

html = ''
html << '<h1>Page title</h1>'
name = "goa"
puts %(<tr><td class="name">#{name}</td>)

%r(^/blog/2011/(.*)$)

%x(echo `date`)

puts  'def use_relative_model_naming?; true; end', __FILE__, __LINE__

def method_missing?(meth, *args, &block)

end




