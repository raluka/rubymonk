=begin
Find the length of strings in an array

Problem Statement
Given an array containing some strings, return an array containing the length of those strings.

You are supposed to write a method named 'length_finder' to accomplish this task.

Example:
Given ['Ruby','Rails','C42'] the method should return [4,5,3]
=end

def length_finder(input_array)
  output_array = []
  input_array.each do |number|
    output_array << number.size
  end
  output_array
end