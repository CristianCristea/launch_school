# 2. What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# returns the initial array

# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

puts "Please say STOP..."
user_input = ""

while user_input != "STOP" do
  user_input = gets.chomp
  puts "Please say STOP..."
end

# 3. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = [0, 1, 2, 3]

arr.each_with_index {|i, v| puts "#{i}: #{v}"}

# 4. Write a method that counts down to zero using recursion.
def countdown(n)
  puts n
  if n > 0
    countdown( n - 1)
  end
end
