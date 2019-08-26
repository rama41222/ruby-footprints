$codes = { lk: 94, ind: 91, ger: 49, us: 1 }
$ops = { y: 1, n: 0 }

def select_code(country)
  $codes[country.to_sym] ? $codes[country.to_sym] : 'Invalid Country'
end

def start(command)
  $ops[command.to_sym] == 1 ? select_code(command) : false 
end

loop do
  puts "Input a country code: "
  $codes.each { |k, v| print k.to_s + " " }
  puts
  code = gets.chomp
  puts select_code(code)
  puts "continue ? "
  cmd = gets.chomp
  break if $ops[cmd.to_sym] != 1
end
