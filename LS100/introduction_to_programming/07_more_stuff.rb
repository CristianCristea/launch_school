# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  puts word if /lab/.match(word)
end

# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# nothing because call method is not invoked
# => Proc object

# 3. What is exception handling and what problem does it solve?

# handle a the possibility of an error(exception) occurring in the program.
# the program does not brake(does not prematurely exit)

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

# 5. Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# & sign is missing in the method definition