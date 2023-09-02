# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

greeting

=begin
I expect there to be no output. This is because greeting's value is nil. This happened because greeting was
initialized inside the if statement, but the if statement never got executed because it's condition is false.
When a variable gets initialized inside an if statement that doesn't get executed, it's value is nil.
=end
