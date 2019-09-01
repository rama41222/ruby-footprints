# module
# If a class wants to use this module it should be included in the class
module Destructible
  def destroy(any)
    "I will destroy #{any}"
  end
end


class User
  include Destructible
  # Auto getters and setters
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def run
    "#{@name} is running"
  end

# class Method Can run without instantiation. Like static keyworkd in java
  def self.identity
    "Class method"
  end
end

class Buyer < User
  # Overriding
  def run
    "#{@name} is running like a overridden buyer"
  end
end

class Seller < User

end

class Admin < User

end

user = User.new "JK"
puts user.name

buyer = Buyer.new "Buyer"
seller = Seller.new "Seller"
admin  = Admin.new "Admin"
puts buyer.run
puts seller.run
puts admin.run

# Hierarchy
puts Buyer.ancestors
# Buyer
# User
# Object
# Kernel
# BasicObject

# Class methods
puts User.identity

# Modules
# Similar to a class but cannot be instantiated. It's a collection of behaviours which can be used by other classes using mixins
puts buyer.destroy "Buyer"
