=begin
Number shuffle

Problem Statement
Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.

Example:
Given: 123
Return: [123, 132, 213, 231, 312, 321]
=end

def number_shuffle(number)
  n = number.to_s.size
  nr_combinations = (1..n).inject(1){|product, x| product*x}
  digits = number.to_s.split(//)
  array = []
  while array.uniq.size != nr_combinations
    array << digits.shuffle.join.to_i
  end
  array.uniq.sort
end


# testing, testing
puts "Give me a positive number."
number = gets.chomp.to_i
if number < 0
 puts "Give me a positive number!"
else
   puts "The number #{number} has the following possible combinations:\n#{number_shuffle(number)}"
end

