=begin
Compute sum of cubes for given range

Problem Statement
Compute the sum of cubes for a given range a through b.

Write a method called sum_of_cubes to accomplish this task

Example Given range 1 to 3 the method should return 36
=end

def sum_of_cubes(a, b)
  result = 0
  while a <= b do
    result += (a**3)
    a += 1
  end
  result
end

# After further studies, I found an easy way to do this:

def easy_sum_of_cubes(a, b)
  (a..b).inject(0){|sum,x| sum += (x**3)}
end

puts easy_sum_of_cubes(2, 6)
puts sum_of_cubes(2, 6)
