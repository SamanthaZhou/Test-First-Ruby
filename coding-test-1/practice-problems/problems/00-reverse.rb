# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

#What did i do wrong: 1. it's a string, so it is a "" 2. return instead of puts() 3. idx reassignment

def reverse(string)
  idx = 0
  reversed_string = ""
  while idx < string.length
    reversed_string = string[idx] + reversed_string
    idx = idx + 1
  end
  return reversed_string
end

#def reverse(string)
#  reversed_string = ""

#  i = 0
#  while i < string.length
#    reversed_string = string[i] + reversed_string

#    i += 1
#  end

#  return reversed_string
#end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
