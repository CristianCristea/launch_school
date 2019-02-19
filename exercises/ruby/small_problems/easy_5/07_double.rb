
# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(string)
  result = []
  chars = string.split('')

  chars.each do |char|
    result.push(char) if char != result.last
  end

  result.join('')
end

# refactor
def crunch(string)
  chars = string.split('').each_with_object([]) do |char, result|
    result << char if result.last != char
  end

  chars.join('')
end

# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
