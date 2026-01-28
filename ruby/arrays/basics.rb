# Array basics in Ruby
# Creating an array
fruits = ["apple", "banana", "cherry"]
# Accessing elements
first_fruit = fruits[0]  # "apple"
# Adding elements
fruits << "date"  # ["apple", "banana", "cherry", "date"]
puts fruits.inspect
# Removing elements
fruits.delete("banana")  # ["apple", "cherry", "date"]
puts fruits.inspect
# Iterating over an array
fruits.each do |fruit|
  puts fruit.upcase
end
# Finding the length of an array
length = fruits.length
puts "Number of fruits: #{length}"
# Slicing an array
subset = fruits[0..1]  # ["apple", "cherry"]
puts subset.inspect
# Checking if an array includes an element
includes_cherry = fruits.include?("cherry")
puts "Includes cherry: #{includes_cherry}"

# Sorting an array
sorted_fruits = fruits.sort
puts "Sorted fruits: #{sorted_fruits.inspect}"
# Reversing an array
reversed_fruits = fruits.reverse
puts "Reversed fruits: #{reversed_fruits.inspect}"
# Finding the index of an element
index_of_date = fruits.index("date")
puts "Index of date: #{index_of_date}"
# Joining array elements into a string
fruit_string = fruits.join(", ")
puts "Fruits: #{fruit_string}"
# Splitting a string into an array
new_fruits = "kiwi,mango,pineapple".split(",")
puts "New fruits: #{new_fruits.inspect}"
# Merging two arrays
all_fruits = fruits + new_fruits
puts "All fruits: #{all_fruits.inspect}"
# Removing duplicates
unique_fruits = all_fruits.uniq
puts "Unique fruits: #{unique_fruits.inspect}"
# Finding the maximum and minimum elements
max_fruit = all_fruits.max
min_fruit = all_fruits.min
puts "Max fruit: #{max_fruit}, Min fruit: #{min_fruit}"
# Clearing an array
fruits.clear 
puts "Cleared fruits: #{fruits.inspect}"
# Example usage:
fruits = ["apple", "banana", "cherry"]
puts "Initial fruits: #{fruits.inspect}"
# Output: Initial fruits: ["apple", "banana", "cherry"]
