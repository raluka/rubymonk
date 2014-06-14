=begin
Find non-duplicate values in an Array

Problem Statement
Given an Array, return the elements that are present exactly once in the array.

You need to write a method called non_duplicated_values to accomplish this task.

Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]
=end

def non_duplicated_values(values)
  arr = []
  values.each do |e|
    arr.push(e) if values.count(e)==1
  end
  arr
end

# More elegant way to do this is with #select

def non_duplicated_values_in_array(values)
  values.select{|x| values.count(x) == 1}
end

puts "#{non_duplicated_values([1,2,2,3,3,4,5])}"
puts "#{non_duplicated_values_in_array([1,2,2,3,3,4,5])}"