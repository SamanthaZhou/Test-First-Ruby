
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  i=0
  e=1
  position = []
  while i != nums.length
    if ( nums[i].to_i + nums[e].to_i != 0 ) && ( e != nums.length )
      e += 1
      elsif ( nums[i].to_i + nums[e].to_i != 0 ) && ( e == nums.length )
        i += 1
        e = i + 1
      elsif ( nums[i].to_i + nums[e].to_i == 0 ) && ( e != nums.length )
        position.push(i)
        position.push(e)
        e += 1
      elsif ( nums[i].to_i + nums[e].to_i == 0 ) && ( e != nums.length )
        position.push(i)
        position.push(e)
        i += 1
        e = i + 1
      else
        puts("I have no freaking idea what other options there could be")
    end
  end
  if position.length != 0
    return position
  else
    return nil
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)

puts(
  'two_sum([-7, 1, 3, 5, 3, -3]) == [2,5,4,5]: ' + (two_sum([-7, 1, 3, 5, 3, -3]) == [2,5,4,5]).to_s
)
