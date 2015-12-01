# Look at the tests in `spec/social_security_numbers_spec.rb`
# to see a description of how these methods should behave.


# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
  return true if string.scan(/\d{3}-\d{2}-\d{4}/).length != 0
  false
end

# Find and return a Social Security Number.
def grab_ssn(string)
  if string.scan(/\d{3}-\d{2}-\d{4}/) == []
    return ''
  else
    string.scan(/\d{3}-\d{2}-\d{4}/).first
  end
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
  string.scan(/\d{3}-\d{2}-\d{4}/)
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
  # if string.scan(/\d{3}-\d{2}-\d{4}/).length != 0
  #   string.scan(/\d{3}-\d{2}-\d{4}/).map! { |ssn| ssn.gsub(/\d{3}-\d{2}/,"XXX-XX") }
  # end
  array = string.scan(/\d{3}-\d{2}-\d{4}/)
  p array
  array.each { |ssn| string = string.gsub(ssn, "XXX-XX".concat(ssn.slice(-5, 5))) }
  return string
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
  ssns = string.scan(/\d{3}\D*\d{2}\D*\d{4}/)
  format_array.map! { |ssn| ssn.gsub(/\D/, "") }
  format_array.map! { |ssn| ssn.slice(0,3).concat("-").concat(ssn.slice(3,2).concat("-").concat(ssn.slice(5,4)))}
  format_array.each { |ssn| string = string.gsub(/\d{3}\D*\d{2}\D*\d{4}/, ssn) }
  return string

end

# p has_ssn?('This is 232-56-1253')
# p hide_all_ssns('This is 232-56-1253 fyrnhgh 234-56-34')
p format_ssns('This is 232-...56-----1253 fyrnhgh 234----.56....,,-3433')
