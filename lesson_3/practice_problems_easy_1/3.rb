# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

word_to_be_replaced = "important"
replacement = "urgent"

advice = advice.gsub(word_to_be_replaced, replacement)
