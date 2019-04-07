# Description:
# Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.
# Rules for a smiling face:
# -Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
# -A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
# -Every smiling face must have a smiling mouth that should be marked with either ) or D.
# No additional characters are allowed except for those mentioned.
# Valid smiley face examples:
# :) :D ;-D :~)
# Invalid smiley faces:
# ;( :> :} :]

# declare all smiley faces - array smiley_faces
# input array, output integer
# count the smileys in the arrgument array

# iterate a counter
# iterate over smiley_faces array
# count the current smiley in the argument array
# add the number of smileys found to the counter
# return the counter
require 'pry'

def count_smileys(arr)
  smiley_faces = [':)', ';)', ':~)', ';~)',  ':-)', ';-)', ':D', ';D', ':-D', ';-D', ':~D', ';~D']
  count = 0

  smiley_faces.each do |face| 
    count += arr.count(face)
    # binding.pry
  end
  count
end

# refactor

def count_smileys(arr)
  smiley_faces = [':)', ';)', ':~)', ';~)',  ':-)', ';-)', ':D', ';D', ':-D', ';-D', ':~D', ';~D']

  smiley_faces.reduce(0) { |sum, face| sum += arr.count(face) }
end

# refactor reg-exp
def count_smileys(arr)
  arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
end

# Example cases:
p count_smileys([':)', ';(', ';}', ':-D']);       # should return 2;
p count_smileys([';D', ':-(', ':-)', ';~)']);     # should return 3;
p count_smileys([';]', ':[', ';*', ':$', ';-D']); # should return 1;
