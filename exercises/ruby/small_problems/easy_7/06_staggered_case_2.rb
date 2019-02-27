# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  uppercase = true

  string.downcase.chars.each do |char|
    if char =~ /[a-z]/ && uppercase
      result << char.upcase!
      uppercase = !uppercase
    elsif char =~ /[a-z]/ && !uppercase
      result << char
      uppercase = !uppercase
    else
      result << char
    end
  end

  result
end

# Example:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'