# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left = 0
    right = nums.length - 1
    while left <= right
        mid = (left+right)/2
        if nums[mid] == target
            return mid
        elsif nums[mid] > target
            right = mid - 1
        else
            left = mid+1
        end
    end
    return -1
end


def find_first_occurance(arr,num)
  left = 0
  right = arr.length - 1
  first_occ_idx = -1
  while left <= right
    mid = (left + right)/2
    if arr[mid] == num
      first_occ_idx = mid
      right = mid - 1
    elsif arr[mid] > num
      right = mid - 1
    else 
      left = mid + 1
    end
  end
  return first_occ_idx
end

arr = [1,2,3,3,3,3,4,5]
result = find_first_occurance(arr, 3)
puts result

def find_last_occurance(arr, num)
  left = 0
  right = arr.length
  right_idx = -1
  while left <= right
    mid = (left+right)/2
    if arr[mid] == num
      right_idx = mid
      left = mid+1
    elsif arr[mid] > num
      right = mid - 1
    else
      left = mid+1
    end
  end
  return right_idx
end

result = find_last_occurance(arr, 3)
puts result

def num_of_occurance(arr, num)
  left_occ = find_first_occurance(arr,num)
  right_occ = find_last_occurance(arr,num)
  return right_occ - left_occ + 1
end

result = num_of_occurance(arr, 3)
puts result