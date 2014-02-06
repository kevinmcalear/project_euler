# require 'pry'

# nums = (100..999).to_a
# results = []

# nums.combination(2).any? {|a, b|  results << (a * b) }

# results.keep_if {|number| is_palandrome(number) }

# binding.pry

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