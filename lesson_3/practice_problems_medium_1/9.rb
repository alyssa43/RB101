# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?
bar(foo)
# => "no"
# This is because foo() returns "yes", which is then passed into bar() as an argument.
# Inside the method it is checking if the parameter("yes") is equal to "no"; which it is not.
# Which then returns the false section of the ternary operation, which is "no".
