=begin

Describe the difference between '!' and '?' in Ruby.

=> '!' is often used after a method name to indicate that
the method is a mutating method. However, that is just naming
convention and not guaranteed. There are many mutating methods
without the '!' character at the end. '!' can also be placed in
front of an expresison and return the opposite boolean value of
that expression. If two '!!' are in front of an expression it
returns the boolean value for that expression.

=> '?' is used in ternary conditional operations. It is also commonly
uesd after methods that return a boolean value.

1. What is '!=' and where should you use it?

=> '!=' means 'not equal to'. It is a conditional operator that checks
to see if two conditions are not equal to each other. If the two conditions
are not equal it will return 'true'. If they are equal it will return 'false'.

2. Put '!' before something, like !user_name
 
=> Putting '!' before an expression returns the opposite boolean value for
that expression. If user_name is truthy(anything besides false or nil), calling
!user_name will always return 'false'.

3. Put '!' after something, like words.uniq!

=> Putting '!' after #uniq will call the mutating method of #uniq!. The words
variable will then be mutated after calling 'uniq!'.

4. Put '?' before something

=> Putting '?' before something will give you a syntax error.

5. Put '?' after something

=> Putting '?' directly after a method can be a way to indicate that the method
will return a boolean value, however that is just naming convention and not a
guarantee. If the '?' is after a condition and followed by "'something' : 'something'"
it is a ternary operation.

6. Put '!!' before something, like '!!user_name'

=> Putting '!!' before 'user_name' will return the boolean value of that variable.
If user_name is truthy (anything besides false or nil), calling !!user_name will
always return 'true'.

=end
