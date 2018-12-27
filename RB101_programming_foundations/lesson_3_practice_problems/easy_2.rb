# 1.
# In this hash of people and their age, see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?('Spot')
ages.member?('Spot')
ages.include?('Spot')

# 2
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description.swapcase!
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description.capitalize!
"The munsters are creepy in a good way."

munsters_description.downcase!
"the munsters are creepy in a good way."

munsters_description.upcase!
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# 3.
# We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# 4.
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?('Dino')
advice.match?('Dino')

# 5.
#Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]

# 6.
# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push('Dino')
flintstones << 'Dino'

# 7.
# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push('Dino', 'Happy')

# 8.
# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

result = advice.slice!(0, advice.index('house'))

# the String#slice method will not mutate the caller
first_half = advice.slice(0, advice.index('house'))
second_half = advice.slice(advice.index('house'), advice.length - 1)
# advice value will not be changed

# 9.
# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
statement.count('t')

# 10.
# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

title.center(40)