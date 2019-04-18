# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n+m) ~= O(n) where n is the length of the larger array because the code iterates through each item in both of the arrays. Looking up items in a hash table is O(1) time complexity; therefore the linear time complexity is dependent on the size of the larger array.
# Space complexity: O(n) - a new array is created to store intersecting values so space complexity is (worst-case) dependent on the length, n, of the array
def intersection(array1, array2)
  if array1.nil? || array2.nil? || array1 == [] || array2 == []
    return []
  end

  new_hash = Hash.new
  common_values = []
  array1.each do |num|
    new_hash[num] = 1
  end

  array2.each do |num|
    if new_hash.include?(num)
      common_values << num
    end
  end

  return common_values
end
