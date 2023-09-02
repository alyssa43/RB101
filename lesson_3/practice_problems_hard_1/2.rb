# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => {:a=>"hi there"}

=begin
What is happening here is that informal_greeting is initialized and set to the String object
'hi' that is located within the greetings Hash object. So greetings[:a] and informal_greeting
is pointing to the same object. When informal_greeting gets mutated with << it is affecting
the original object that it is pointing to, which is also what greetings[:a] is point to.
So when you call puts greetings it will output the mutated String "hi there", but it is also
located within a hash so it looks like this: {:a=>"hi there"}
=end
