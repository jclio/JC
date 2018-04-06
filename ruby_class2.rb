# Greeting to many people at one time
class Greet
  attr_accessor :names # this attribute is visible
  # constructor
  def initialize(names = "Tanglong")
    @names = names
  end

  # Say hello to everybody
  def hello
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of all kinds of names
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye
  def bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the elements with commas
      puts "Goodbye #{@names.join(", ")}.Return soon!"
    else
      puts "Goodbye #{@names}.Return soon!"
    end
  end

end

# main file
if __FILE__ == $0
  g = Greet.new
  g.hello
  g.bye

  # Change 'names' to "Caocao"
  g.names = "Caocao"
  g.hello
  g.bye

  # Change the 'names' to an array of names
  g.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  g.hello
  g.bye

  # Change to nil
  g.names = nil
  g.hello
  g.bye
end