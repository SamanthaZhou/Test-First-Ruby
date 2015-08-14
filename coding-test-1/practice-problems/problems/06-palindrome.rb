# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

#What did I do wrong: 1. the true and false statements were in the wrong places 2. I didn't use a != initially

def palindrome?(string)
    i=0
    d=string.length
    while i<=d
        if (string[i]!=string[d])
            return true
        end
        i+=1
        d-=1
    end
    return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts('palindrome?("asdfghjklkjhgfdsa") == true: ' + (palindrome?('asdfghjklkjhgfdsa') == true).to_s)
