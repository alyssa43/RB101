# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value
# "Few things in life are as important as ". But leave the advice variable as
# "house training your pet dinosaur.".

advice.slice!("Few things in life are as important as ")

# As a bonus, what happens if you use the String#slice method instead?
# Using String#slice will return "Few things in life are as important as " but it will
# not mutate the advice variable.
