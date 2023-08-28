# What do the following method calls do (assume we resent 'numbers' to the original array
# between method calls)?

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# will delete the value at index 1 which is '2'. Returning an array containing [1, 3, 4, 5].
# Because #delete_at is a mutating method, the new value of numbers is that returned array
# [1, 3, 4, 5].

numbers.delete(1)
# will delete the value '1'. Returning an array containing [2, 3, 4, 5]. Because the #delete
# method is a mutating method, the new value of numbers is that returned array [2, 3, 4, 5].

