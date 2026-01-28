def two_sum(nums, target)
  num_map = {}

  nums.each_with_index do |num, index|
    complement = target - num 
    if num_map.key?(complement)
      return [num_map[complement], index]
    else
      num_map[num] = index
    end
  end
  nil
end

# Example usage:
nums = [2, 7, 11, 15]
target = 22
puts two_sum(nums, target).inspect  # Output: [0, 1]