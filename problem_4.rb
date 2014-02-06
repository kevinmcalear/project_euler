# A fun way to do this
results = []

(100..999).to_a.repeated_combination(2) {|num1, num2|  results << (num1 * num2) }

puts results.keep_if {|num| num.to_s == num.to_s.reverse }.max




# A more "traditional" way to do this

def is_palandrome?(number)
  return number.to_s == number.to_s.reverse
end

def has_2_3_dig_factors?(number)
  three_dig_numbers = (100..999).to_a
  products = []
  three_dig_numbers.each { | factor_one | 
    three_dig_numbers.each { |factor_two|
      product = factor_one * factor_two
      products << product
    }
  }
  return products.include?(number)
end


starting_number = 998001

while !is_palandrome?(starting_number) || !has_2_3_dig_factors?(starting_number)
  starting_number -= 1
end

puts starting_number