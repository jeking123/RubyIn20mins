#Test Ruby file

class MegaGreeter
  attr_accessor :names
  
  #Create The Object
  def initialize(names = "World")
    @names = names
  end

  #Say Hi to everybody
  def say_hi
    if @names.nil?
      puts ". . ."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, so we can iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts ". . . "
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}, Come back soon!"
    else 
      puts "Goodbye #{@names}, Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye
  
  mg.names = "Dennis"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Dennis", "Tom", "Laura", "Skooby", "Velma", "Shaggy"]
  mg.say_hi
  mg.say_bye
end
