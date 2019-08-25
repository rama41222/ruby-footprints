def multi(num_one, num_two)
	(num_one.to_f * num_two.to_f).round(2)
end

def add(num_one, num_two)
	(num_one.to_f + num_two.to_f).round(2)
end

def div(num_one, num_two)
	(num_one.to_f / num_two.to_f).round(2)
end

def sub(num_one, num_two)
	(num_one.to_f - num_two.to_f).round(2)
end

def mod(num_one, num_two)
	(num_one.to_f % num_two.to_f)
end

puts "No 1"
num_one = gets.chomp
puts "No 2"
num_two = gets.chomp
puts "Select Op 1-multi 2-add 3-div 4-sub 5-mod"
opt = gets.chomp

result = case opt
	when '1'
		multi num_one, num_two
	when '2'
		add num_one, num_two
	when '3'
	 	div num_one, num_two
	when '4'		
		sub num_one, num_two
	when '5'
		mod num_one, num_two
	else 
		"Invalid Opteration"
end

puts result