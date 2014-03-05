def is_pythagorean_triplet(a, b, c)
  ( a*a ) + ( b*b ) == (c*c)
end

def numbers_to_check(final_number)
  potential_numbers = (1...final_number/2).to_a
  return potential_numbers.repeated_combination(3).to_a
end

def find_pyth_trip(number)
  pythag_combo = numbers_to_check(number).select {|combos| is_pythagorean_triplet(combos[0],combos[1], combos[2]) && (combos[0] +combos[1] + combos[2] == number)}
  return pythag_combo.each { |combo| puts "#{combo[0]} + #{combo[1]} = #{combo[2]}"}
end


puts "Tell me a number to you want the Pythag Combo to."
number = gets.chomp.to_i

find_pyth_trip(number)

