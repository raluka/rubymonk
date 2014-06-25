=begin
A not-so-gentle workout
Write for me three methods - calculate, add and subtract. The tests should all pass.
=end

def calculate(*numbers)
  options = numbers[-1].is_a?(Hash) ? numbers.pop : {}
  options[:add] = true if options.empty?
  return add(*numbers) if options[:add]
  return subtract(*numbers) if options[:subtract]
end

def add(*numbers)
  sum = numbers.inject(0){|sum, num| sum += num }
end

def subtract(first_number, *numbers)
  first_number - add(*numbers)
end
