# 1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

 (32 * 4) >= 129 # false
 false != !true # false
 true == 4  # false
 false == (847 == '847') # true
 (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

 # 2. Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)


 def long_word_caps(word)
  word.length > 10 ? word.upcase : word
 end

 # 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

 puts "A number greater than 0: "
 number = gets.chomp.to_i

 if number < 0
  puts "ERROR!!!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

# 4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

'4' == 4 ? puts("TRUE") : puts("FALSE") # "FALSE"

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# Did you get it right?

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# "Alright now!"

# 5. Rewrite your program from exercise 3 using a case statement. Wrap this new case statement in a method and make sure it still works.

puts "A number greater than 0: "
number = gets.chomp.to_i

def number_guess(n)
  case
  when number < 0
    puts "You can't enter a negative number!"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

puts number_guess(number)

# 6. When you run the following code...

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
# if statement is not closed - missing end keyword

#Why do you get this error and how can you fix it?


def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end