# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def prompt(message)
  puts("=> #{message}")
end

def messages(message, lang="en")
  MESSAGES[lang][message]
end

# assignment 1 - better number validation
# use regex to validate string, allow floats
def valid_number?(num)
  num =~ /^\d*\.?\d*$/
end

def calculate(num1, num2, operator)
  case operator
  when '1'
    num1 + num2
  when '2'
    num1 - num2
  when '3'
    num1 * num2
  when '4'
    num1.to_f / num2.to_f
  end
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(messages('welcome', LANGUAGE))
loop do
  num1 = ''
  loop do
    prompt('Fist number')
    num1 = gets.chomp.to_i

    if valid_number?(num1)
      break
    else
      prompt('Not a valid number')
    end
  end

  num2 = ''
  loop do
    prompt('Second number')
    num2 = gets.chomp.to_i
    if valid_number?(num2)
      break
    else
      prompt('Not a valid number')
    end
  end

  operatior_prompt = <<-MSG
    Operation:
    1) add
    2) subtract
    3) multiply
    4) divide'
  MSG

  prompt(operatior_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w[1 2 3 4].include?(operator)
      break
    else
      prompt('Not a valid operation, choose 1-4.')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  prompt("Result: #{calculate(num1, num2, operator)}")
  prompt('Do you want to perform another calcuation? (Y/N) ?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Goodbye!')
