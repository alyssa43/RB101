# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two   # Because reassignment is being used within the method, the original
  two = three # variables are not mutated.
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# =>  one is: one
puts "two is: #{two}"
# =>  two is: two
puts "three is: #{three}"
# =>  three is: three

# B)

def mess_with_vars(one, two, three)
  one = "two"   # Similarly to the first example, because reassignment is being used within
  two = "three" # the method, the original variables do not get mutated.
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# =>  one is: one
puts "two is: #{two}"
# =>  two is: two
puts "three is: #{three}"
# =>  three is: three


# C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")     # Because String#gsub! is being called on these parameters, that are
  two.gsub!("two","three")   # pointing to the same String objects as the parameters passed into
  three.gsub!("three","one") # the method, the original objects are being mutated.
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# =>  one is: two
puts "two is: #{two}"
# =>  two is: three
puts "three is: #{three}"
# =>  three is: one
