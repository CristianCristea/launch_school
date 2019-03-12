# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.
# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=begin
- input string
- output boolean value - true if the string contains both values from a block, false otherwise

# array of blocks - strings
# iterate over the blocks
# if the string.count(block) > 2 return false
# return true
=end
# def block_word?(string)
#   blocks = %w(bo gt vi xk re ly dq fs zm cp jw na hu)

#   blocks.each do |block|
#     return false if string.downcase.count(block) >= 2
#   end # the each method returns the collection which evaluates to true

#   true
# end

# refactor
def block_word?(string)
  blocks = %w(bo gt vi xk re ly dq fs zm cp jw na hu)
  blocks.none? { |block| string.downcase.count(block) >= 2 }
end

# Examples:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

