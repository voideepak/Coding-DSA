def calc_move_avg(size, vect, window_size)
  return [size, vect.clone] if window_size == 0
  return [0,[]] if window_size > size

  n = size - window_size + 1
  result = []
  # cal initial sum of first window
  window_sum = vect[0...window_size].sum.to_f
  result << (window_sum / window_size).round

  # sliding window for remaining averages
  (window_size...size).each do |i|
    window_sum = window_sum - vect[i-window_size] + vect[i]
    result << (window_sum / window_size).round
  end
  return [n, result]
end

size = 4
vect = [1,2,3,4]
window_size = 2
result = calc_move_avg(size, vect, window_size)
puts result.inspect

def is_prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  return true
end

# find the prime numbers between a range
def find_primes(start,last)
  (start..last).select { |num| is_prime?(num) }
end

# start = gets.chomp.to_i
# last = gets.chomp.to_i
# primes = find_primes(start, last)
# puts primes.length
# puts primes.inspect
# 

def decipher(ciphertext, know_word)
  (0..25).each do |shift|
    decoded = ''
    ciphertext.each_char do |char|
      if char >= 'a' && char <= 'z'
        decoded += ((char.ord - 'a'.ord - shift) % 26 + 'a'.ord).chr
      elsif char >= 'A' && char <= 'Z'
        decoded += ((char.ord - 'A'.ord - shift) % 26 + 'A'.ord).chr
      else
        decoded += char
      end
    end
    if decoded.include?(know_word)
      return decoded
    end
  end
  return "NOT FOUND"
end

# ciphertext = gets.chomp
# know_word = gets.chomp
# deciphered_text = decipher(ciphertext, know_word)
# puts deciphered_text

# array product except self
def array_products(arr,n)
  result = Array.new(n, 1)
  left_product = 1
  (0...n).each do |i|
    result[i] = left_product
    left_product *= arr[i]
  end
  right_product = 1
  (n-1).downto(0) do |i|
    result[i] *= right_product
    right_product *= arr[i]
  end
  return result
end

arr = [1,2,3,4]
n = arr.length
result = array_products(arr,n)
puts result.inspect

def maxProfit(prices)
  return prices.min if prices.length < 2
  min_price = prices[0]
  max_profit = 0
  prices.each do |price|
    if price < min_price
      min_price = price
    else
      profit = price - min_price
      max_profit = [max_profit, profit].max
    end
  end
  if max_profit == 0
    return min_price
  else
    return max_profit
  end
end

n = gets.to_i
prices = gets.split.map(&:to_i)

# Call maxProfit and display the result
result = maxProfit(prices)
puts result

# ALTER TABLE stu_data ADD ssn CHAR(10);
# Triggers
# PRIMARY KEY
# DROP INDEX product_name ON products;
# CREATE TABLE emp1 AS SELECT * FROM emp;
# LIKE
# DELETE FROM stu_data LIMIT 10;
# SELECT * FROM emp_data WHERE emp_name LIKE 'A%';
# SELECT * FROM emp_data WHERE dept_id = 10 AND salary > 10000;
# INSERT INTO books VALUES (1, 'Our Planet', 'ABC Company', true);
# SELECT stu_class, COUNT(*) FROM student GROUP BY stu_class;
# 
#DELIMITER //
# CREATE FUNCTION cur_date()
# RETURNS DATE
# BEGIN
#   DECLARE date1 DATE;
#   SELECT CURDATE() INTO date1;
#   RETURN date1;
# END //
# DELIMITER ;
# 
# SELECT book_name
# FROM books
# WHERE book_price = (
#   SELECT MIN(book_price)
#   FROM books
#   WHERE book_publisher = 'ABC PUBLISHERS'
# );
# Stored function
# 
# SELECT newspaper_name, MAX(newspaper_circulation)
# FROM newspaper_data
# WHERE newspaper_circulation < (
#     SELECT MAX(newspaper_circulation)
#     FROM newspaper_data
# );



