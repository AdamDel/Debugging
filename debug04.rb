
def char_count(list)
  letters = Hash.new(0)
  list.each do |word|
    word.split('').each { |letter| letters[letter.to_sym] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. The count of each letter has not been initialized to zero
# 2. This causes an error when trying to add to a nil class

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?
# letters = Hash.new(0) to initialize to 0
# Converting each letter to a symbol since they must be unique