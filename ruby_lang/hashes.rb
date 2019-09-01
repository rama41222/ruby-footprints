# Hashes are key value pairs

details = {
    "name" => 'abc',
    "age" => 20,
    "color" => 'red',
}

puts "name #{details["name"]}"

# Iteration for a hash
details.collect { |k, v| puts "#{k} => #{v}" }
details.map { |k, v| puts "#{k} => #{v}" }
details.each { |k, v| puts "#{k} => #{v}" }

my_status = {
    a: 1, b: 2, c: 3
}

# C here is a symbol, we access symbol by : operation
puts my_status[:c]

# Adding item to a has
my_status[:d] = 83
puts my_status

# Delete from hash
my_status.delete(:d)
puts my_status

# .eql? Checks for equality and type of the operands
# equal?  Checks for the object ID
# The (..) creates a range including the last term and (...) creates a range excluding the last term.

another_hash = {
    :name => 'abc',
    :age => 20,
    :color => 'red',
}

puts another_hash
puts another_hash[:name]
another_hash[:number] = 23
puts another_hash

score_hash = {
    :one => 1,
    :two => 2,
    :three => 3,
    :four => 4,
    :six => 6,
    :no_ball => 1,
    :wide => 1,
}

puts score_hash.select { | k, v | v.odd? }