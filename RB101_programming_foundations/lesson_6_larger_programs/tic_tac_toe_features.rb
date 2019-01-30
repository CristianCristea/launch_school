# 1. Improved "join"

def joinor(arr, delimiter = ', ', last_delimiter = 'or')
  string = arr.join(delimiter)
  index = string.rindex(delimiter)
  string[index] = " #{last_delimiter}"

  string
end

puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# 2. Keep score

