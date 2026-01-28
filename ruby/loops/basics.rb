# Basics of loops in Ruby
# Using a 'for' loop to iterate over a range
puts "For loop from 1 to 5:"
for i in 1..5
  puts i 
end
# Using 'each' method to iterate over an array
puts "Each method over an array:"
numbers = [10, 20, 30, 40, 50]
numbers.each do |num|
  puts num 
end
# Using 'while' loop
puts "While loop from 1 to 5:"
count = 1
while count <= 5
  puts count
  count += 1
end
# Using 'until' loop
puts "Until loop from 1 to 5:"
count = 1
until count > 5
  puts count
  count += 1
end
# Using 'loop' with break
puts "Loop with break from 1 to 5:"
count = 1
loop do
  puts count
  count += 1
  break if count > 5
end
# Using 'times' method
puts "Times method from 0 to 4:"
5.times do |i|
  puts i 
end
# Using 'step' method to iterate with a specific step
puts "Step method from 0 to 10 with step of 2:"
10.step(0,-3) do |i|
  puts i 
end
# Using 'each_with_index' to get index and value
puts "Each with index over an array:"
fruits = ["apple", "banana", "cherry"]
fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end
# Using 'map' to transform an array
puts "Map method to square numbers:"
squared_numbers = numbers.map do |num|
  num ** 2
end
puts squared_numbers.inspect

# Using 'select' to filter an array
puts "Select method to get even numbers:"
even_numbers = numbers.select do |num|
  num.even?
end
puts even_numbers.inspect
# Using 'reject' to filter out elements
puts "Reject method to get odd numbers:"
odd_numbers = numbers.reject do |num|
  num.even?
end
puts odd_numbers.inspect
# Using 'break' to exit a loop early
puts "Break example in a loop:"
(1..10).each do |i|
  break if i > 5
  puts i
end
# Using 'next' to skip an iteration
puts "Next example in a loop:"
(1..10).each do |i|
  next if i % 2 == 0
  puts i
end
# Using 'redo' to repeat an iteration
puts "Redo example in a loop:"
i = 0
while i < 5
  i += 1
  if i == 3
    puts "Redoing for i = #{i}"
    redo
  end
  puts i
end
# Example usage:
puts "Example usage of loops completed."