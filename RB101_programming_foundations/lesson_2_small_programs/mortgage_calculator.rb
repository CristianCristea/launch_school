# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator
# (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# Mortgage Calculator Formula

# Translated to Ruby, this is what the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# Finally, don't forget to run your code through Rubocop.

# Hints:

# Figure out what format your inputs need to be in.
# For example, should the interest rate be expressed as 5 or .05,
# if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR),
# you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration
# -- are you working with months or years?
# Choose variable names carefully to assist in remembering.

# input
# loan_amount - dollars - integer
# time_period - months - integer
# interest_rate - float

# output - float
# maybe format as a string to give exact feedback

# get input
# get loan_amout, time_period and interest_rate
# calculate monthly interest_rate  / 12
# calculate monthly payment
# output

# Enter loan amount: 1000
# Enter months: 12
# Enter interest_rate: 10

# => monthly payment 87.92

def calculate_monthy_payment(loan_amount, months, interest_rate)
  monthly_interest_rate = (interest_rate / 100) / months

  loan_amount * (monthly_interest_rate / (1 -
  (1 + monthly_interest_rate)**-months))
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt('Welcome to Mortgage Calculator!')
  prompt('-------------------------------')
  prompt('Enter loan amount: ')

  loan_amount = ''
  loop do
    loan_amount = gets.chomp.to_f

    if loan_amount < 0
      prompt('Must enter positive number.')
    else
      break
    end
  end

  prompt('Enter the interest rate(yearly):')

  interest_rate = ''
  loop do
    interest_rate = gets.chomp.to_f

    if interest_rate < 0
      prompt('Must enter positive number.')
    else
      break
    end
  end

  prompt('Enter the loan period in months:')
  months = ''
  loop do
    months = gets.chomp.to_i

    if months < 0
      prompt('Enter a valid number')
    else
      break
    end
  end

  monthly_payment = calculate_monthy_payment(loan_amount, months, interest_rate)
                    .round(2)

  prompt("You will have to pay a total of $#{monthly_payment * 12}.")
  prompt("Monthly payment of: $#{monthly_payment}.")

  prompt('Another calculation?')
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end

prompt('Bye Bye!')
