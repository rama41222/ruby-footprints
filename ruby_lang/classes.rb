class User
  # Automatically setting getters and setters
  attr_accessor :name, :age
  # initialize method will run first when an object is created (like constructor)
  # @ is an instance variable. Exists only when object exists
  def initialize(name, age)
    @name = name
    @age = age
  end

  # instance method
  def run
    print "#{@name} is Running"
  end

  # Manually setting the getters and setters
  # # getter methods
  # def get_name
  #   @name
  # end
  #
  # def get_age
  #   @age
  # end
  #
  # # setter methods
  # def set_name=(name)
  #   @name = name
  # end
  #
  # def set_age=(age)
  #   @age = age
  # end
end



user = User.new "abc", 23
user1 = User.new "john", 23
puts user
# Can't access instance variables as following without attr_accessor
# puts user.name
# puts user.age
puts User.ancestors
# User
# Object
# Kernel
# BasicObject
# Everything in Ruby is an object

puts user.run
puts user1.run
# For manual methods
# puts user.get_name
# puts user.get_age
# puts user1.get_name
# puts user.get_age
# user.set_age = 23
# user.set_name = "JW 1"
puts user.run

# Accessing with attr_accessor
puts user.name
puts user.age
user.age = 20
puts user.age
