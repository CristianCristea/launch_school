# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

def print_line(number, char, start_char)
  string = "#{start_char}"
  number.times {string << char}
  puts "#{string}#{start_char}"
end

def print_in_box(string)
  print_line(string.size + 2, '-', '+')
  print_line(string.size + 2, ' ', '|')
  puts "| #{string} |"
  print_line(string.size + 2, ' ', '|')
  print_line(string.size + 2, '-', '+')
end

# Example:
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+