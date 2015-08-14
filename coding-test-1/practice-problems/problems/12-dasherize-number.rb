# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

# What did I do wrong: 1. too redundant and messy 2. % by 2 3. += current.to_s needs to go outside of the if idx > 0 condition
def dasherize_number(num)
  new_num = ""
  num_s = num.to_s
  idx = 0
  while idx < num_s.length
    current = num_s[idx].to_i
    previous = num_s[idx-1].to_i
      if idx > 0
        if (previous % 2 == 1) || (current % 2 == 1)
          new_num += "-"
        end
      end
      new_num += current.to_s
      idx += 1
  end
  puts(new_num)
  return new_num
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
