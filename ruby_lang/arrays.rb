a = [1,3,4,5,"434",[2,34,'34']]
puts a # prints the whole array
puts a.nil?
puts a.empty?
puts a.include?([2,34,"34"])
puts a.reverse # Doesn't mutate the original array
puts a.reverse! # mutates the original arrya
puts a.reverse! 
puts a.shuffle # Randomize the array 
puts a.shuffle! # Randomize the arrangement permanently
puts (0..24).to_a
puts (1..25).to_a.shuffle! # Random 25 numbers
x = (0..10).to_a
x << 25
x.push(23) # Addes to end of array
x.unshift(222) # Adds element to front of array
puts x.pop() # Removes last item n return it
puts x.uniq
puts x.uniq!

# Iteration
# each 
x.each { |e| puts e + 0.1 }

# for in loop
for e in x
  puts "hi #{e}"
end

# each do
x.each do |e|
  puts "a"
end

# While loop
t = gets.chomp.to_i
while t >= 0
  puts t
  t -=1
end

# do while Loop
# loop do
#   code to be executed
#   break if booleanExpression
# end

# do until Loop
i = 1
until i == 10
    print i*10, "\n"
    i += 1
end

# selecting returns array. If you want to seelct something
x.select { |e| puts e.odd? }

# 'print' doesn't add new line
x.each { |e| print "#{e} " if e.even? }
puts
name_parts = ["I", "YOU", "WE"]
puts name_parts.join(' ')

# Ruby uses next statement to skip the loops next iterration
# Similar to continue in js
# Redo repeats the current iteration of loop
# Retry will again loop the same iteration

