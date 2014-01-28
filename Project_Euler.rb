# THE PROBLEM:
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# MY ANSWER:
puts "Tell me the numbers you want to check"

print "Number 1: "
num1 = gets.chomp.to_i

print "Number 2: "
num2 = gets.chomp.to_i

puts "Tell me the max number you want"

print "Max Limit Number: "
limit = gets.chomp.to_i

total = 0

(1...limit).each do | multiple | 
 
  if (multiple % num1 == 0) || (multiple % num2 == 0)
    total += multiple 
  end
end

puts total