<h1>RB109 Study Guide: Part 1</h1>


<h3>Explain, talk about, or demonstrate the following:</h3>

* <b>Numbers</b>: Numbers are an immutable data type and can either be an `integer`, which is a number without a decimal point. Or, a `float` which is a number with a decimal point.

  ```ruby
  34   #integer
  2.2  #float
  ```

* <b>Strings</b>: Strings are a mutable data type. They are any sequence of characters enclosed in single or double quotation marks.

  ```ruby
  "This is a string!!"
  'This is also a string!'
  ```

* <b>Interpolation in Strings</b>: To use string interpolation you must use double quotations. Enclosed within the quotations you are able to combine strings together. You can combine any characters inside the quotes along with a Ruby expression. You simply put the Ruby expression inside curly braces and in front of the first curly brace put a number symbol, like so: `#{variable_name}` Here is an example of string interpolation: 

  ```ruby
  "Hello my name is, #{name}."
  ```

* <b>Boolean vs. Truthiness</b>: A boolean is a data type. The two values of booleans are either `true` or `false`.  They are immutable, meaning they cannot be changed, only reassigned. Truthiness is different than the boolean value `true`. In Ruby, everything besides `false` and `nil` are truthy, meaning a variable set to a number, such as `num = 2`, is truthy. But `num` does NOT equal true. This allows us to use variables that are not a boolean in conditional statements, such as: 

  ```ruby
  if num 
    puts "valid number"
  end
  ```

* <b>Nil</b>: `nil` is a Ruby object that is a way to show a value simply does not exist. It is not equal to `false` but has a falsy value. It essentially means "nothing". It is an immutable object that will always have an `object_id` of `4`.

* <b>Array and Hash Syntax</b>: 

  * <b>Array</b> - An array is an ordered list. Each spot in an array has an index, starting with `0` for the first spot, `1` for the second spot, and so on. This allows us to access the value at a specific index. Arrays can contain any type of data, even other arrays or hashes. Array syntax is created by placing elements inside brackets with commas between each element, such as: `array = [1, 2, 3]`. This is an example of an array with `3` elements. However, if you follow naming conventions, to create an array of strings, you put a percentage sign `%`, followed by a lowercase `w`, then parentheses `()`. Inside the parentheses you put the strings separated by a space, such as: `word_array = %w(this is an array)`. 
  * <b>Hash</b> - Hashes are a data structure that consist of key-value pairs. Hash keys are typically symbols (which are basically immutable strings), which can be defined by placing a colon before a word, like so: `:this_is_a_symbol`. However, inside a hash, the syntax is that the colon goes after the word or "key", then followed by the value. That all goes inside curly braces, and is separated by commas, like so: `my_hash = {name: 'Alyssa', age: 34}`. OR, older hash syntax is: `my_hash = {:name => 'Alyssa', :age => 34}`. Although this older syntax will still work, it is no longer the recommended syntax.

* <b>Array Properties and Methods</b>:
  * <b>`Array#size`</b> -  is a built-in array method that returns the number of elements inside the array. It is also an alias for `Array#length`. It does not accept any arguments. 
  * <b>`Array#push`</b> - is a built-in array method that takes an unlimited amount of arguments and adds those arguments to the end of the array. It is an alias for `Array#append`.
  * <b>`Array#pop`</b> - is a built-in array method that can either take no argument, which will remove the last element of the array, and return that element. It can also have a positive integer as it's argument and it will remove that number of elements and returns those elements in a new array (counting from the end of the array). If the number passed in as an argument is greater than the number of elements in the array, it will remove all elements and returns those in a new array. 
  * <b>`Array#map`</b> - is a built-in array method that accepts a block as it's argument. It returns a new array based on the block's *return value*. Each element is transformed based on the return value. It is an alias for `Array#collect`.
  * <b>`Array#select`</b> - is a built-in array method that accepts a block as it's argument. It returns a new array containing only the elements that the block evaluates as truthy. It is an alias for `Array#filter`.
  * <b>`Array#[]`</b> - is a built-in array method that is used to retrieve elements. It can accept a single integer, and will return the element at that index. Or can accept a pair of integers, which will return the elements at the first numbers index through the second numbers index. Or it can accept a range, which will return all the elements at the indexes that correlate to the range passed in as an argument.
  * <b>Array Properties</b>: Arrays are mutable data structures. If you try accessing an index that doesn't exist, `nil` will be returned and there will not be an exception. `-1` refers to the last element in an array, `-2` refers to the second to last element, and so on. 

* <b>Operators</b>: A symbol(s) that represents an operation to be performed.
  * <b>Numeric Operators</b>: Used to perform mathematical operations.
  	
  	* `+` : Addition - Adds two operands.
  	
  	* `-` : Subtraction - Subtracts the second operand from the first operand.
  	
  	* `*` : Multiplication - Multiplies two operands.
  	
  	* `/` : Division - Divides the first operand by the second operand.
  	
  	* `%` : Modulus - Returns the remainder, when the first operand is divided by the second operand.
    
  	* `divmod` : Divmod - returns a 2 element array where the first element is the quotient and the second element is the remainder. EX: 
  	
  	  ```ruby
  	  12.divmod(4) # => [3, 0] 
  	  11.divmod(4) # => [2, 3]
  	  ```
  	
  	* `**` : Exponentiation - Raises the first operand to the power of the second operand. EX:
  	
  	  ```ruby
  	  2 ** 3 # => 8
  	  ```

  - <b>String Operators</b>: Used to combine strings.

    * `+` : Used to concatenate strings. EX: 

      ```ruby
      'hello' + ' ' + 'world' # => "hello world"	
      ```

    * `*` : Used to return a new string that consists of the first operand, which is the string. (THE STRING MUST GO BEFORE `*` ). Which will then be returned the number of times that is equal to the second operand. EX: 

      ```ruby
      "hi" * 3 # => "hihihi"
      ```

  - <b>Conditional Operators</b>: Used to compare two values. All of these operators are methods, and they <u>return a boolean value</u>.

    * `==` : Equal to - Returns `true` if both operands are equal to each other. Returns `false` if operands are not equal to each other.
    * `!=` : Not Equal to - Returns `true` if operands are NOT equal to each other. Returns `false` if operands are equal to each other. 
    * `<` : Less Than - Returns `true` if first operand is less than the second operand. Returns `false` if first operand is greater than the second operand. 
    * `>` : Greater Than - Returns `true` if first operand is greater than the second operand. Returns `false` if first operand is less than the second operand.
    * `<=` : Less Than OR Equal To - Returns `true` if first operand is less than OR equal to the second operand. Returns `false` if first operand is greater than the second operand. 
    * `>=` : Greater Than OR Equal To - Returns `true` if first operand is greater than OR equal to the second operand. Returns `false` if first operand is less than the second operand. 
    * `condition ? true : false` : Ternary Operator - A single line `if/else` statement. Ruby first evaluates the condition to the left of the `?`. If the condition <u>evaluates as</u> `true`, the code to the right of the `?`, but to the left of the `:`, gets executed. If the condition <u>evaluates as</u> `false`, the code directly to the right of the `:` gets executed. Ternary expressions are typically used to select between two values, not to choose between two actions (like printing something).

  - <b>Logical Operators and Short-Circuit Evaluations</b>: Evaluates operands to check for truthiness, then executes code respectively.
    * `!` :  The "Not" Operator - Placing `!` before a boolean expression, changes that value to the opposite boolean value. EX: 
      ```ruby
      !(4 == 4) # => false

    * `&&` : The Logical "And" Operator - BOTH operands must evaluate to `true`, for the entire expression to be evaluated as `true`. EX:

      ```ruby
      (4 == 4) && (5 == 5)  # => true
      (4 == 5) && (5 == 6)  # => false
      ```

    * `||` :  The Logical "Or" Operator - Only one operand must evaluate to `true`, for the entire expression to be evaluated as `true`. EX :

      ```ruby
      (4 == 4) || (5 == 6)  # => true
      (4 == 5) || (5 == 6)  # => false
      ```

  - <b>Operator Precendence</b>: Precedence is used to determine the order of operations to be performed. Operators with higher precedence are evaluated before operators with lower precedence. Precedence is as follows, starting with highest precedence:
    		* `**` --  Exponentiation
      		* `!` -- The 'not' operator
      		* `* / %` --  Multiplication, Division, Modulo
      		
      		* `+ -` -- Addition (or concatenation), Subtraction
      		
      		* `< <= > >=` -- (Comparison) Less Than, Less Than or Equal To, Greater Than, Greater Than or Equal to
      		
      		* `== !=` -- (Equality) Equal to, Not Equal To
      		
      		* `&&` -- Logical 'AND' Operator
      		
      		* `||` -- Logical 'OR' Operator

    		  

* <b>Type Conversion</b>: Built-in methods used to convert a value from one data type to another data type.

  * `#to_s` - Converts an object to it's string representation. Data types that can call `#to_s` are (but not limited to): 

    ```ruby
    34.to_s                     # Integer => "34"
    2.2.to_s                    # Float => "2.2"
    "hello".to_s                # String => "hello" (returns a copy)
    [0, 1, 2].to_s              # Array => "[0, 1, 2]"
    {a: 0, b: 1}.to_s           # Hash => "{:a=>0, :b=>1}"
    :hello.to_s                 # Symbol => "hello"
    true.to_s                   # Boolean => "true"
    nil.to_s                    # NilClass => "nil"
    ```

  * `#to_i` - Converts a value to an `Integer`. Data types that can call `#to_i` are: 

    ```ruby
    "34".to_i                   # String => 34
    2.2.to_i                    # Float => 2
    true.to_i                   # Boolean => 1
    false.to_i                  # Boolean => 0
    nil.to_i                    # NilClass => 0

  * `#to_f` - Converts a value to a `Float`, which is a decimal number. Data types that can call `#to_f` are:

    ```ruby
    "2.2".to_f                  # String => 2.2
    34.to_f                     # Integer => 34.0
    true.to_f                   # Boolean => 1.0
    false.to_f                  # Boolean => 0.0
    nil.to_f                    # Nilclass => 0.0
    ```

  * `#to_a` -  Converts an object into an `Array`. Data types that can call `#to_a` are (but not limited to): 

    ```ruby
    (1..5).to_a                 # Range => [1, 2, 3, 4, 5]
    "hello".to_a                # String => ["h", "e", "l", "l", "o"]
    {a: 1, b: 2}.to_a           # Hash => [[:a, 1], [:b, 2]]
    ```

  * `#to_h` - Converts an object into a `Hash`. Data types that call `#to_h` are (but not limited to): 

    ```ruby
    [[:a, 1], [:b, 2]].to_h     # Array with k|v pairs => {:a=>1, :b=>2}
    [:a, 1, :b, 2].to_h         # Array with even length => {:a=>1, :b=>2}
    {a: 1, b: 2}.to_h           # Hash => {:a=>1, :b=>2}    (returns copy)
    (1..5).to_h {|i| [i, i*2]}  # Enumberable => {1=>2, 2=>4, 3=>6, 4=>8, 5=>10}
    ```

* <b>Mutability, Immutability, and Constants</b>: 
  * <b>Mutability</b> - Objects in Ruby can either be "Mutable" or "Immutable". Mutable objects (such as `String`(s)) can be mutated, or changed. Immutable objects (such as a `Boolean`, `Integer`, or `nil`), cannot be changed. To change the value of a variable that references an immutable object, must be reassigned. 
  * <b>Constants</b> - Constants are a type of variable. They are declared with all capital letters and must be initialized in the main program (at the top). Constants have different scope than local variables, they are available throughout the entire program. Constants should be considered immutable, however Ruby allows them to be changed (but it will issue a warning). However, you should never change a constant. They are used to store data that should never have to be changed. 

* <b>Variables</b>:
  * <b>Local Variable and Constant Names</b> - Naming convention for local variables is to use all lowercase letters, with underscores as the spaces. Naming convention for constant variables is to use all uppercase letters, with underscores as the spaces. EX:

    ```ruby
    local_variable_name
    CONSTANT_VARIABLE_NAME 
    ```
  * <b>Initialization and Reassignment</b> - To initialize a local variable, you simply type the local variables name, followed by `=`, and then the value for that object. To initialize a constant variable, it should be initialized at the top and most outer scope of the program. You simply type the variable's name (all uppercase), followed by `=`, and then the value for that object. EX: 

    ```ruby
    CONSTANT_VARIABLE_NAME = "Hello World!!!"
    local_variable_name = "hello world"
    ```

     Although constants are able to be changed, they should not be reassigned or changed.  Constants should be used to store data that does NOT change. To reassign a local variable you simply type the local variables name, followed by `=`, and then the new value for that object. It looks just like initialization. EX: 

     ```ruby
     local_variable_name = "hello universe"
     ```

  * <b>Variable Scope and Method Definitions</b>: 

    * <b>Variable Scope</b> - A variables scope refers to where in the program that variable is accessible. Local variables obey all scope boundaries, meaning they are only accessible in the scope where it was initialized (except for blocks). The only way to access a local variable initialized outside of a method definition, is to pass it as an argument during method invocation.  Constant variables are said to have lexical scope. They can be accessed throughout the entire program. (Global variables - available throughout entire app, overriding all scope boundaries. Class variables - accessible by instances of your class. Instance variables - available throughout the current instance of the parent class.)

    * <b>Method Definitions</b> - A method is a piece of code that either returns a value, or has side-effects (meaning it displays something, or mutates an object). A method should only have one of these functions. In general, if a method has side-effects as well as returns a meaningful value, that is a red flag. A method can be used multiple times, so are helpful to keep from being redundant. Method's should be relatively short (10 lines). To define a method you use the `def` keyword, followed by the method name, followed by any arguments (which is optional)(preferably in parentheses), then the `end` keyword on the next line. Inside those lines is where you will put your code that you wish for your method to execute. Unless explicitly stated, the method will <u>always</u> return the last line inside the method definition. EX: 

      ```ruby
      	def method_name(parameter)
      	  puts parameter 																		# Return Value => nil
      	end
      ```

    * <b>Variable Scope and Blocks</b> - During method invocation, you can pass an argument to the method called a block. Technically all method invocations can accept a block as an argument, however the block will only be executed if the method is defined to accept a block. Blocks have their own scope, inside the block is the <u>inner scope</u>, while outside of the block is the <u>outer scope</u>. Local variables have different scoping rules when it comes to blocks. If a local variable is initialized in the outer scope, it can be accessed by the inner scope. However, if the local variable is initialized in the inner scope, it is not accessible to the outer scope. Peer scopes do not conflict. 

    * <b>Variables as Pointers</b> - Variables as pointers refers to the concept that variables don't actually contain the value that they are assigned to, rather they *point* to an <u>address space</u> in memory. Some operations mutate the address space, while other reassign the variable to point to a different address space. 

    * <b>Variable Shadowing</b> - Variable shadowing occurs during method invocation, when the method accepts a block as an argument, and that block has an argument that has the same name as an outer scoped local variable. Because blocks can access outer scoped local variables, if a local variable and the parameter that has been defined inside the block, share the same name, we essentially cannot access the local variable because the block will use the parameter and ignore the outer scoped variable. EX:

      ```ruby
      n = 10                   				# Output => 1	  
                                      #        	  2
      [1, 2, 3].each {|n| puts n}     #      			3       # Return value => [1, 2, 3]
      ```

* <b>Conditionals and Loops</b>: 

  * <b>Conditionals</b> - A conditional is a piece of code in our program that allows us to decide between two or more choices of code to execute, based on a certain condition. The structure of a conditional is defined with the keywords `if`, `else`, `elsif`, and `end`. The `if` and `elsif`  keywords are combined with an expression to be evaluated, if the expression evaluates as `true`, the code immediately following is then executed. If there is not a condition that evaluates as `true` , then the code will execute the code following the `else` keyword, it then exits the conditional with the `end` keyword and returns back to the program. If there is only an `if` keyword, and the condition doesn't evaluate as `true`, then no code get's executed and the program continues on. The conditions to be evaluated oftenly include conditional and/or logical operators ( <, >, <=, >=, ==, !=, &&, ||) . The return value for `if/else` conditionals are the value of the code that is executed. EX:

    ```ruby
    if 1 < 2
      puts "One is less than two"					# Output => One is less than two
    else
      puts "One is more than two"
    end                                   # Return Value => nil
    ```

  * <b>Loops</b> - A `loop` is when we instruct a piece of our code to run multiple times; either a specificied number of times, or until a specified condition has been met. There are several different `loop` formats:

    * `Kernel#loop` - The simplest way to loop would be to invoke the `Kernel#loop` method. It is invoked by typing `loop` and then passing a `do..end` block as the argument. Within the block, we give the instruction(s) for the `loop` to execute. Within the block, we must add the `break` keyword to instruct our code to `break` out of the `loop` at some point, or we will have an infinite `loop`, which prevents the rest of our program from executing. The return value of a `Kernel#loop` is `nil`, unless `break` is used to supply a value. EX:

      ```ruby
      countdown = 3
      
      loop do														#	Output => 3
        puts countdown									# 					2
        countdown -= 1									#						1
        break if countdown == 0					
      end																# Return Value => nil
      ```

      ```ruby
      countdown = 3
      
      loop do														# Output => 3
        puts countdown 
        countdown -= 1
        break countdown
      end																# Return Value => 2
      ```

    * `While` - Using the `while` keyword will create a `loop` that executes <i>while</i> a condition is evaluated as `true`. It can accept a `do`, but it is optional. The return value of a `while` `loop` is `nil`, unless `break` is used to supply a value. EX:

      ```ruby
      coutdown = 3										# Output => 3
      																#						2
      while countdown > 0							#						1
        puts countdown
        countdown -= 1								
      end															# Return Value => nil
      ```

      ```ruby
      countdown = 3									# Output => 3
      																				
      while countdown > 0 do										
        puts countdown
        countdown -= 1
        break countdown
      end														# Return Value => 2
      ```

    * `Do/While` - A `do/while` `loop` is similar to the `while` loop, the major difference being that the condtional check is at the end of the `loop`. Meaning that the `loop` gets executed once before checking that the condition evaluates as `true`. An important distinction to remember is that Ruby doesn't have a built in `do..while` `loop`, it is essentially just a simple `Kernel#loop` method, with a `while` condition inside the `loop`, that tells the code when to `break` out of the `loop`. The return value of an `do/while` `loop` is `nil`, unless `break` is used to supply a value. EX:

      ```ruby
      loop do
        puts "Do you want to go again?"
        answer = gets.chomp
        break if answer == 'no'
      end													# Return Value => nil
      ```

    * `Until` - Essesntially the oppostie of the `while` `loop`. We can use the `until` keyword to create a `loop` that will execute <i>until</i> a condition evaluates as `true`. Like the `while` `loop`, it accepts an optional `do` keyword.The return value of an `until` `loop` is `nil`, unless `break` is used to supply a value. Using the same example from our `while` `loop`, we will rephrase it to accomplish the same function using an `until` `loop`:

      ```ruby
      countdown = 3								# Output => 3
      														#						2
      until countdown == 0				#						1
        puts countdown
        countdown -= 1
      end													# Return Value => nil
      ```

      ```ruby
      countdown = 3								# Output => 3
      														#					
      until countdown == 0 do								
        puts countdown
        countdown -= 1
        break countdown
      end													# Return Value => nil
      ```

      

    * `For` - The `for` `loop` works similarly to using the `Array#each` method. It consists of the keyword <u>`for`</u>, followed by a <u>variable</u> to contain the element being iterated, followed by the keyword <u>`in`</u>, and then the <u>collection</u> to be iterated through. The `for` `loop` also accepts an optional `do` keyword. The result value of a `for` loop is the value of the collection being iterated over, unless the `break` keyword is used (then it is `nil`). EX:

      ```ruby
      for i in [1, 2, 3] do 			# Output => 1
        puts i										#						2
      end													#						3					# return value => [1, 2, 3]
      ```

      ```ruby
      for i in [1, 2, 3]					# Output => hello
        puts "hello"							# 					hello
      end													# 					hello		  # return value => [1,2, 3]
      ```

      ```ruby
      for i in [1, 2, 3]					# Output => hello
        puts "hello"
        break i
      end													# Return Value => 1
      ```

    * `Break` and `Next` Keywords - 

      * `break`- is used to leave a block early, or terminate from a loop. `break` accepts a value. EX:

        ```ruby
        break if value > 10
        ```

      * `next` - is used to skip the rest of the current iteration. `next` accepts a block as an argument. 

        <i>"When `next` is used in a `loop`, any values following `next` are ignored. In a block however, the expression or expresssions becomes the return value".</i> 

        <i>"The Ruby Programming Language"</i> - David Flanagan & Yukihiro Matsumoto (page 150) 

        ```ruby
        next if value.even?
        ```

* <b>Puts</b>: `puts` is a method in the `Kernel Module` that stands for "put string". When we invoke `Kernel#puts` it accepts an argument. The argument essentially gets converted with the `.to_s` method, and then outputs that value to the console. `puts` will add a new blank line after the argument to be output. So, if the argument is a collection of multiple elements, those elements will be output on seperate lines. The return value for `Kernel#puts` is <b>always</b> `nil`. EX:

  ```ruby
  puts "hello"												# Output => hello					Return Value => nil
  puts 3															# Output => 3							Return Value => nil
  puts [1, 2, 3]											# Output => 1
  																								2
                                                  3							Return Value => nil
  ```

* <b>Methods</b>: Methods are a piece of code that perform a specific function. Ruby has built-in methods, as well as allows you to create your own methods. When creating a method, we should aim to keep them short (around 10 lines), and to perform only one function (return a value, or have a side-effect (like output something)).

  * <b>Definition and invocation</b> - Method definition is when we create a method. We use the `def` keyword followed by the name of the method, then any optional parameters we would like our methods to have (preferably in parentheses). We then put the code we would like our method to perform, followed by the `end` keyword. A method will always return the last line of code inside the method definition, unless explicitly returned elsewhere. To invoke a method we created, we simply type the method's name immediately followed by the arguments we want to pass to it (if any), again preferably in parentheses. It is important to remember that a method is defined with *parameters* and is invoked with *arguments*. EX:

    ```ruby
    def greeting(paramater) # Method Definition										Return Value => nil		
      puts parameter
    end
    
    argument = "hello"
    
    greeting(argument)			# Method Invocation										Output => hello
    ```

    

  *  <b>Default Parameters</b> - If a method is defined with a parameter, but invoked without an argument it will raise an error. There is a way around this. When we define a method, we can give it default parameters. Meaning that if the method is invoked without any argument, it will use the default parameter. To do this, we put `=` after the paramer, followed by the default value. EX:

    ```ruby
    def greeting(parameter="hello")
      puts parameter
    end
    
    greeting("hi")															# Output => hi
    greeting("hey")															# Output => hey
    greeting																		# Output => hello
    ```

  * <b>Implicit vs. Explicit Return Values</b> - Implicit return refers to the fact that a method's return value will be the last line of code within the method definition, unless explicitly stated otherwise. Explicit return happens when we use the `return` keyword. The expression mmediately following the `return` keyword will be returned and the method will be immediately exited. That expression following the `return` keyword is the value returned. EX:

    ```ruby
    def implicit_return(num1, num2)
      sum = num1 + num2
      puts "The sum is #{sum}."
    end
    
    def explicit_return(num1, num2)
      sum = num1 + num2
      return sum
      puts "The sum is #{sum}"				# This line never gets executed, causing no output
    end
    
    num1 = 1
    num2 = 2
    
    implicit_return(num1, num2)				# Output => The sum is 3. 		# Return Value => nil
    explicit_return(num1, num2)				# Output => 									# Return Value => 3
    ```

    