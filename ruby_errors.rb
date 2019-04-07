# SyntaxError: dynamic constant assignement

# The problem is that each time you run the method you are assigning a new value to the constant. This is not allowed, as it makes the constant non-constant; even though the contents of the string are the same (for the moment, anyhow)
# The actual string object itself is different each time the method is called. 

# For example:
def foo
  p "bar".object_id
end

foo #=> 15779172
foo #=> 15779112

def count_smileys(arr)
  SMILEY_FACES = [':)', ':~)',  ':-)', ':D', ';-D', ':~D'].freeze
  count = 0

  SMILEY_FACES.each { |face| count += arr.count(face) }

  count
end