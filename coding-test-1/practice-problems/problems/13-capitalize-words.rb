# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

# What did I do wrong: 1. didn't put (" ") after split and join 2. didn't do an array inside of an array 3. .join wasn't in the very last line w/ the return

def capitalize_words(string)
  array_sentence = string.split(" ")
  idx = 0
  while idx < array_sentence.length
    current = array_sentence[idx]
    current[0] = current[0].upcase
    idx += 1
  end
  return array_sentence.join(" ")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
