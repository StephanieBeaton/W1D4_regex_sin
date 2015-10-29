
# An example of low-powered string matching is when you use your browser's search
# (⌘f on a Mac) for a specific word, say, your own name.
# What if you wanted to search your browser for
# anything that matches the pattern for a social insurance number?
# For that, you'd use Regular Expressions.

# As you work through the exercises of this challenge,
# it's recommended that you use http://rubular.com to help you code your regex.
# You can refer to / read the the following if you get stuck:

# Pickaxe Guide
# Using Regular Expressions in Ruby


# Objectives

# Use the driver code to guide you to a working solution.
# Add additional driver code where you want to feel more comfortable
# with your implementation.
# For instance, what happens when you pass a string with only a single SIN
# into the hide_all_sins or get_all_sins methods?
# Did adding driver code help you solve the challenge more effectively?
# How? (Answer in the gist as a comment)

# Search for anything that matches a Social Insurance Number
def get_all_sins(test_string)

  # return an array of all of the SINs in string
  # The SIN is formatted as three groups of three digits (e.g., 123-456-789).

  result = ""

  # String#scan

  # Both forms iterate through str, matching the pattern (which may be a Regexp or a String).
  # For each match, a result is generated and either added to the result array
  # or passed to the block.

  result = test_string.scan(/\d{3}-\d{3}-\d{3}/)

  result
end



# Replace anything that matches a Social Insurance Number with asterixes "*"
def hide_all_sins(test_string)

  result = ""

  # String#scan

  # Both forms iterate through str, matching the pattern (which may be a Regexp or a String).
  # For each match, a result is generated and either added to the result array
  # or passed to the block.

  # String#gsub

  # Returns a copy of str with the all occurrences of pattern substituted
  # for the second argument.
  result = test_string.gsub(/\d{3}-\d{3}-\d{3}/, '***-***-***')
end


# DRIVER
test_string = '123-456-789'

test_string_2 = 'The quick brown fox 987-654-321 jumped over the 123-456-789 lazy dog. 321-123-321'

# puts test_string

# result = get_all_sins(test_string)
# puts test_string
# puts result.inspect


# result = get_all_sins(test_string_2)
# puts test_string_2
# puts result.inspect


result = hide_all_sins(test_string)
puts result
puts ""

result = hide_all_sins(test_string_2)
puts result

