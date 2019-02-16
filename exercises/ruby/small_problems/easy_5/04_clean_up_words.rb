# Clean up the words
# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# initialize an return array - letters_spaces
# convert to array
# iterate over array
# if current char is a letter push to letters_spaces
# else if the last char in the letters_spaces is not a space push a space to letters_spaces
# return joined letters_spaces

LETTERS = ('a'..'z').to_a

def cleanup(string)
  letters_spaces = []

  string.split('').each do |char|
    if LETTERS.include?(char.downcase)
      letters_spaces.push(char)
    elsif letters_spaces.last != ' '
      letters_spaces.push(' ')
    end
  end

  letters_spaces.join('')
end

#refactor with reg exp

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# Examples:
p cleanup("---what's my +*& line?") == ' what s my line '