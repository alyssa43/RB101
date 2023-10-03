Study Session Interview Questions:

1. Explain variable shadowing. Code an example of variable shadowing.

   * Variable shadowing occurs when a block's parameter is initialized inside the block with the same name as a local variable in the programs main scope. Because the block can access outer scoped local variables, we may want to access a local variable within the block. However, if the local variable shares the same name as the parameter inside the block, Ruby is unable to access it because it prioritizes the blocks parameter before an outer scoped local variable. Essentially leaving the local variable inaccessbile. 

     ```ruby
     greet = "hello"
     
     5.times {|greet| puts greet}
     ```

2. Explain pass-by-reference and pass-by-value. Code an example of each.

   * Pass by reference and pass by value refer to Ruby's object passing strategy. Passing an object by its value, is when Ruby makes a copy of the object and then passes that copy. Which means we are essentially working with a new object and any changes we make to that copy will not affect the original object. Ruby *acts* like pass-by-value when working with immutable objects such as integers or booleans. Pass-by-references is when Ruby passes the reference to the original object. Meaning that if we modify that original reference, the object itself will be affected, and any other object that references the same object will see those modifications as well. Ruy *acts* like pass-by-reference when working with immutable objects such as strings. If we perform a mutating method call on a String object, that original object will be mutated and all variables referencing that String object will then be affected as well.  

     ```ruby
     # passing-by-value
     n = 0
     
     def a_method(n)
       n += 1
     end
     
     # passing-by-reference
     str = 'hello'
     
     def another_method(str)
       str << ' world'
     end
     ```

3. Explain string interpolation. Code an example of string interpolation.

   * String interpolation is used to combine Ruby expressions directly into a String. Ruby evaluates the expression enclosed in the curly braces and converts it into string form and then inserts it into where it is places within the strings quotations. It is a useful way to output a string to the console that contains a variable's value.

     ```ruby
     name = "Alyssa"
     
     puts "Hello #{name}!"
     ```

4. Explain the call stack. 

   * The call stack is how Ruby organizes the execution order of methods in our program. When we run our program and it reaches a method invocation, that methods location is placed on the stack and then execution continues until the next method invocation. Then that methods location is then pushed onto the to top of the stack. That continues until Ruby goes through the entire program and all method invocations have been pushed onto the stack. Then Ruby starts at the top of the stack and evaluates that method and then returns to the stack and pops that method of the stack, working down until it reaches the bottom.

5. What does this code output? Explain why. What concept is demonstrated.

   ```ruby
   def example(str)
     i = 3
     loop do
       puts str
       i -= 1
       break if i == 0
     end
   end
   
   example('hello')
   ```

   This code will output `hello` `hello` `hello`. On line 10 when we invoke the `example` method and pass the String object `'hello'` as the argument, the `str` parameter within the `example` method defintion will reference the String object `'hello'`. Then within the `example` method definition on line 2 we initialize a local variable called `i` that is referencing the Integer `3`. This local variable `i` will be used to eventually break out of the upcoming `loop`. On lines 3-7 we have a `loop` method invocation that has a `do..end` block as the argument. Within the block, on line 4, we invoke the `puts` method and pass the `str` variable as the argument, which then outputs the value of the `str` variable which is the String object `'hello'`. Next, on line 5, we reassign the value of the local variable `i` to the value of subtracting `1` from `i`'s current value, which now means local variable `i` is now referencing the Integer `2`. Then, on line 6, we use the `break` keyword to break out of the `loop` if local variable `i` is equal to the Integer `0`. Because of this we can deduct that the `loop` will be executed 2 more times before breaking out. Which is why we get the output of `hello` 3 times on separate lines. The concepts demonstrated here are local variable scoping and variables as pointers. When we invoke a method and pass in an argument, that argument and the parameter in the method definition will both point to the same object. Also, local variable scoping and how it pertains to blocks particularly refers to the fact that the we are able to access local variables initialized outside of the block, which is why we are able to access both the `str` and `i` variables inside the `loop`'s `do..end` block. Blocks create their own scope and are able to access variables initialized outside of its scope, however any local variables initialized inside the block are not accessible outside of the block.
