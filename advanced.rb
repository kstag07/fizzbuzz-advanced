fizz_hash = { }
array = []
print "What would number would you like to check?"
number = gets.chomp.to_i
print "Enter a number, name; or just ENTER to quit:"
input = gets.chomp

while input != "" do
  (key_num, name_val) = input.split(",")
  key_num = key_num.to_i
  fizz_hash[key_num] = name_val
  print "Enter number, name; or just ENTER to quit:"
  input = gets.chomp
end

fizz_hash.each do |k, v|
  array << v if number % k == 0
end

if array.empty?
  puts number
else
  x = array.join("")
  puts x
end



