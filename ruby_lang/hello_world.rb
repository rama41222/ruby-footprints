puts "Hello World"

hello = "hi"
puts hello

# Function
def hey
	puts "Hey Function"
end

# Method call
hey

def greet(name)
 puts "Welcome #{name}"
end

greet "abc"

# Strings

puts "abc" + "def"
puts "abc #{hello}"

# Shifted to irb console for strings

# Input from CLI
puts "No 1: "
num_one = gets.chomp
puts "#{num_one} + No 2:"
num_two = gets.chomp
puts "#{num_one} + #{num_two} = #{ num_one.to_i + num_two.to_i }"

# times
20.times { puts "20 times"}


# .eql? Checks for equality and type of the operands
# equal?  Checks for the object ID