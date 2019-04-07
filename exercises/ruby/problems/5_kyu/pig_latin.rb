# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# split the string into words
# map the words array mutating the current word
# join the array

def pig_it(string)
  words = string.split

  words.map do |word|
    if word.match(/[a-z]/i)
      word[1..word.size] << word[0] << 'ay'
    else
      word
    end
  end.join(' ')
end

# refactor
def pig_it text
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end

# Examples
pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !')   == 'elloHay orldway !'