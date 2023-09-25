<h1>RB109 Study Guide: Part 1</h1>

<h3>Explain, talk about, or demonstrate the following:</h3>

* <b>Numbers</b>: Numbers are an immutable data type. Two forms of numbers are; an `integer`, which is a number without a decimal point. Or, a `float` which is a number with a decimal point.

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
  * <b>`Array#each`</b> - is a built-in array method that accepts a block as it's argument. It iterates over each element of the array that it is called on, setting each element to the parameter initialized in the block. Upon completion of iterations, it returns the original array that was iterated over. 
  * <b>`Array#[]`</b> - is a built-in array method that is used to retrieve elements. It can accept a single integer, and will return the element at that index. Or can accept a pair of integers, which will return the elements at the first numbers index through the second numbers index. Or it can accept a range, which will return all the elements at the indexes that correlate to the range passed in as an argument.
  * <b>Array Properties</b>: Arrays are mutable data structures. If you try accessing an index that doesn't exist, `nil` will be returned and there will not be an exception. `-1` refers to the last element in an array, `-2` refers to the second to last element, and so on. 

* <b>Operators</b>: A symbol(s) that represents an operation to be performed.
  * <b>Numeric Operators</b>: Used to perform mathematical operations.
  	
  	* `+` : Addition - Adds two operands.
  	
  	* `-` : Subtraction - Subtracts the second operand from the first operand.
  	
  	* `*` : Multiplication - Multiplies two operands.
  	
  	* `/` : Division - Divides the first operand by the second operand.
  	
  	* `%` : Modulus - The `Numeric#%` method is an alias for the `Numeric#modulo` method. It can be invoked two different ways:
    
  	  ```ruby
  	  x = dividend # Number being divided
  	  y = divisor	 # Number of times dividend gets divided
  	  
  	  x % y       
  	  x.modulo(y) 
  	  ```
  	
  	  Although we can say that the `Numeric#modulo` method will return the remainder of the dividend (`x`) divided by the divisor `(y`), it is different than the `Numeric#remainder` method. 
  	
  	  The `Numeric#modulus` method and the`Numeric#remainder` method are very similar, but they do have different operations and will sometimes return differing results. Both the `Numeric#modulo` method and the `Numeric#remainder` method evaluate the operation: 
  	
  	  `x - y * (x / y)`. However they then invoke different methods on those values:
  	
  	  ```ruby
  	  value = x - y * (x / y)
  	  modulo = value.floor
  	  remainder = value.truncate
  	  ```
  	
  	  The differences between the two methods is that `Numeric#modulo` takes that value and calls the `#floor` method on it, and the `Numeric#remainder` method takes that value and calls the `#truncate` method on it. For positive numbers, the return values of invoking the `Numeric#modulo` method and the `Numeric#remainder` method will be the same. You will start to see differing results when working with negative numbers. The `Numeric#modulo` return value will always have the same sign as the divisor (`y`), while the `Numeric#remainder` return value will always have the same sign as the dividend (`x`). Meaning that the return value of invoking the `Numeric#modulo`(`Numeric#%`) method, will return an `Integer` or `Float` that is the same sign as the argument passed to it. EX:
  	
  	  ```ruby
  	  10 % 3   # 10.modulo(3)   => 1		10.remainder(3)  => 1
  	  -10 % 3  # -10.modulo(3)  => 2		-10.remainder(3)  => -1
  	  -10 % -3 # -10.modulo(-3) => -1		-10.remainder(-3)  => -1
  	  10 % -3  # 10.modulo(-3)  => -2		10.remainder(-3)  => 1
  	  ```
  	
  	* `divmod` : Divmod - When invoked, the `Numeric#divmod` method takes one argument. The caller is the dividend, while the argument is the divisor. For instance, in the below example `x` (the dividend) will be divided by `y` (the divisor): 
  	
  	  ```ruby
  	  x = dividend # Number being divided
  	  y = divisor	 # Number of times dividend gets divided
  	  
  	  
  	  x.divmod(y)
  	  ```
  	
  	  Then returned will be an `Array` with two elements, the first element being the quotient. The quotient's value is the largest whole number when the dividend (`x`) is divided by the divisor (`y`). Meaning the element at the  `0` index within the returned `Array` will always be an `Integer`. The element at the `1` index within the returned `Array` will be the modulus, which is the value of invoking the `Numeric#modulo` method on the dividend and divisor; like so: 
  	
  	  ```ruby 
  	  x.modulo(y) || x % y
  	  ```
  	
  	  EXAMPLES:
  	
  	  ```ruby
  	  # x.divmod(y)    => [quotient, modulo]
  	  12.divmod(4)     => [3, 0]
  	  12.divmod(3)     => [4, 0]
  	  12.divmod(5)     => [2, 2]
  	  -11.5.divmod(4)  => [-3, 0.5]
  	  11.5.divmod(-4)  => [-3, -0.5]
  	  -11.5.divmod(-4) => [2, -3.5]
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
  
  - <b>Operator Precedence</b>: Precedence is used to determine the order of operations to be performed. Operators with higher precedence are evaluated before operators with lower precedence. Precedence is as follows, starting with highest precedence:
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

  * <b>Local Variable and Constant Names</b> - Naming convention for local variables is to use snake_case which is all lowercase letters, with underscores as the spaces. Naming convention for constant variables is to use all uppercase letters, with underscores as the spaces. EX:

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

    * <b>Method Definitions</b> - A method is a reusable piece of code in our program that performs a specific task, or outputs something. A method should only perform one function. In general, if a method outputs something (has side-effects) as well as returns a meaningful value, that is a red flag. A method can be used multiple times, so they are helpful to keep from being redundant. Method's should be relatively short (10 lines). To define a method you use the `def` keyword, followed by the method name, followed by any arguments (which is optional)(preferably in parentheses), then the `end` keyword on the next line. Inside those lines is where you will put your code that you wish for your method to execute. Unless explicitly stated, the method will <u>always</u> return the last line inside the method definition. EX: 

      ```ruby
      	def method_name(parameter)
      	  puts parameter 																		# Return Value => nil
      	end
      ```

    * <b>Variable Scope and Blocks</b> - During method invocation, you can pass an argument to the method called a block. Technically all method invocations can accept a block as an argument, however the block will only be executed if the method is defined to accept a block. Blocks have their own scope, inside the block is the <u>inner scope</u>, while outside of the block is the <u>outer scope</u>. Local variables have different scoping rules when it comes to blocks. If a local variable is initialized in the outer scope, it can be accessed by the inner scope. However, if the local variable is initialized in the inner scope, it is not accessible to the outer scope. Peer scopes do not conflict. 

    * <b>Variables as Pointers</b> - Variables as pointers refers to the concept that variables don't actually contain the value that they are assigned to, rather they *point* to an <u>address space</u> in memory. Some operations mutate the address space, while other reassign the variable to point to a different address space. 

    * <b>Variable Shadowing</b> - Variable shadowing occurs during method invocation, when the method accepts a block as an argument, and that block has a parameter that has the same name as an outer scoped local variable. Because blocks can access outer scoped local variables, if a local variable and the parameter that has been defined inside the block, share the same name, we essentially cannot access the local variable because the block will use the parameter and ignore the outer scoped variable. EX:

      ```ruby
      n = 10                   				# Output => 1	  
                                      #        	  2
      [1, 2, 3].each {|n| puts n}     #      			3    # Return value => [1, 2, 3]
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
      coutdown = 3											# Output => 3
      																	#						2
      while countdown > 0								#						1
        puts countdown
        countdown -= 1								
      end																# Return Value => nil
      ```

      ```ruby
      countdown = 3											# Output => 3
      																				
      while countdown > 0 do										
        puts countdown
        countdown -= 1
        break countdown
      end																# Return Value => 2
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

  * <b>Case Statement</b> - An alternative to writing an `if..else` statement with several conditions to check, is to write a `case` statement. Like the `if..elsif..else` statement, it will evaulate the condition, and if it evaluates as `true` it will then execute the following code, if it evaulates as `false` it will then continue to checking the next condition. It does accept a `else` keyword at the very bottom, if none of the conditions are evaluated as `true`, and it will execute the following code. Like the `if..else` statement, it needs the `end` keyword to signify the end of the `case` statement. EX:

    ```ruby
    case language
      when "English" then puts "Hello"
      when "Spanish" then puts "Hola"
      when "French" then puts "Bonjour"
      when "German" then puts "Hallo"
      else puts "I don't know"
    end
    ```

* <b>Puts</b>: `puts` is a method in the `Kernel Module` that stands for "put string". When we invoke `Kernel#puts` it accepts an argument. The argument essentially gets converted with the `.to_s` method, and then outputs that value to the console. `puts` will add a new blank line after the argument to be output. So, if the argument is a collection of multiple elements, those elements will be output on seperate lines. The return value for `Kernel#puts` is <b>always</b> `nil`. EX:

  ```ruby
  puts "hello"												# Output => hello					Return Value => nil
  puts 3															# Output => 3							Return Value => nil
  puts [1, 2, 3]											# Output => 1
  																		#						2
                                      #           3							Return Value => nil
  ```

* <b>Methods</b>: Methods are a piece of code that perform a specific function. Ruby has built-in methods, as well as allows you to create your own methods. When creating a method, we should aim to keep them short (around 10 lines), and to perform only one function (return a value, or have a side-effect (like output something)).

  * <b>Definition and invocation</b> - Method definition is when we create a method. We use the `def` keyword followed by the name of the method, then any optional parameters we would like our methods to have (preferably in parentheses). We then put the code we would like our method to perform, followed by the `end` keyword. A method will always return the last line of code inside the method definition, unless explicitly returned elsewhere. To invoke a method we created, we simply type the method's name immediately followed by the arguments we want to pass to it (if any), again preferably in parentheses. It is important to remember that a method is defined with *parameters* and is invoked with *arguments*. EX:

    ```ruby
    def greeting(paramater) # Method Definition									Return Value => nil		
      puts parameter
    end
    
    argument = "hello"
    
    greeting(argument)			# Method Invocation									Output => hello
    ```

  * <b>Default Parameters</b> - If a method is defined with a parameter, but invoked without an argument it will raise an error. There is a way around this. When we define a method, we can give it default parameters. Meaning that if the method is invoked without any argument, it will use the default parameter. To do this, we put `=` after the paramer, followed by the default value. EX:

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
      puts "The sum is #{sum}"		# This line never gets executed, causing no output
    end
    
    num1 = 1
    num2 = 2
    
    implicit_return(num1, num2)			# Output => The sum is 3. 	# Return Value => nil
    explicit_return(num1, num2)			# Output => 								# Return Value => 3
    ```

  * <b>Parameters vs. Arguments</b>: When we define a method we use parameters. When we invoke a method we use arguments. The parameter(s) will represent the variable or value we expect to use inside the method. The argument is the actual variable or value that gets passed into the method. EX:

    ```ruby
    def a_method(parameter)							# Method is defined with the parameter
      puts parameter
    end
    
    argument = "hello"
    
    a_method(argument)									# Method is invoked with the argument
    ```

  * <b>Output vs. Return Value & Side Effects</b>: When we define a method, we should aim to perform a singular task. This can be either outputing something or returning a value. But we need to make sure it is <b>only one</b> of these tasks. We also want our method's task reflected in the name, so that it is obvious what our method is doing without having to decipher the code inside.

    * Output - If we want our method to output something, that means that something will be print to the console for the user to see. When outputting is the goal, a good method name would be: `display_greeting` or `print_greeting`.

    * Return Value - When our method is used to return a value, we need to make sure that the correct value is being returned, either by explicitly returning the value, or making sure the last line in the method will return the value. When returning a value is the goal, a good method name would be: `total_points` ,`score`, or `sum`.

    * Side Effects - When we refer to a method having a side effect, we mean that the method is either displaying something to the output or it is mutating something outside of the method. 

      ```ruby
      def display_greeting(str)			# Side effect: displays something to the output
        puts str										# Return Value => nil
      end
      
      def append(arr, value)				# Side effect: mutates the local variable `arr`
        arr << value								# Return Value => updated `arr` array
      end
      
      def sum(num1, num2)						# Side effect: none
        num1 + num2									# Return Value => new integer
      end
      ```

  * <b>Pass-by-Reference & Pass-by-Value</b>: We know that Ruby variables are merely references to objects in memory; meaning that a variable is just a given name that points to an object. Passing by reference or passing by value refers to the way these objects are passed around inside our program. Ruby exhibits a combination of behaviors from both "pass-by-reference" as well as "pass-by-value". We can refer to Ruby as "<b>pass by value of the reference</b>". 

    * Pass-by-Value - If an object is passed by value, it means that the original object to be passed is made into a copy and then passed. So essentially we are working with a new object, that is a copy of the original object.  Meaning that anything we do to that copy of the object, does not affect the original object. 

    * Pass-by-Reference - If an object is passed by reference, it means that we are passing a reference to the original object. Meaning that modifying the reference will affect the orginal object. 

    * <b>Pass-by-Refernce-Value</b> - Because Ruby can do both pass-by-value and pass-by-reference, the most accurate way to describe Ruby's object passing strategy would be pass by reference value. Essentially Ruby <i>acts</i> like pass-by-value for immutable objects, and pass by reference for mutable objects. 

      ```ruby
      def passing_by_val(value)
        value = "new value"
      end
      
      def passing_by_ref(reference)
        reference << ", mutating original reference"
      end
      
      var = "hello"
      
      puts passing_by_val(var)		# Output => new value	
      puts var										# Output => hello
      
      puts passing_by_ref(var)		# Output => hello, mutating original reference
      puts var										# Output => hello, mutating orginial reference 
      ```

  * <b>The Call Stack</b>: The call stack, also known as just 'the stack', is how Ruby organizes and keeps track of the order of execution of methods (and blocks, procs, and lambdas) in a program. The call stack works like a stack of books; you can add stacks to the top, or remove the top book from the stack before continuing down the stack. The call stack puts information about the current method on the top of the stack, then removes that information when the method returns. 

    * Stack Frame - When a program starts running, the call stack initially has one item called a stack frame, which represents the global (top-level) portion of the program. The initial stack frame is sometimes called the "main" method. Ruby uses this frame to keep track of what part off the main program it is currently working on. When program execution reaches a method invocation, the "main" stack Frame is updated with the current program location. Then Ruby creates a new stack frame for the next method invocation and it is <b>pushed</b> onto the top of the stack. This continues on through the entire program until it has pushed on all methods that have been called. Ruby then evaluates and returns the top of the stack, that frame then gets <b>popped</b> from the call stack, then execution resumes immediately on the next frame, until it works it's way down the stack until it gets back to the "main" frame. Once back at the main frame, there is no more code to run and the "main" frame gets popped from the stack and the program ends. 

      <i>The call stack has a limited size that varies based on the Ruby implementation. That size is usually sufficient for more than 10,000 stack entries. If the stack runs out of room, you will see a "SystemStackError" exception.</i>

      ```ruby
      1		def first_method																										
      2	  	puts "first method"																								
      3		end																																
      4
      5		def second_method
      6	  	first_method
      7	  	puts "second method"
      8		end
      9
      10	second_method
      ```

      |      Call Stack       |
      | :-------------------: |
      |  puts "first method"  |
      | first_method: line 2  |
      | second_method: line 6 |
      |     main: line 10     |

* <b>Expressions & Return</b>: An expression is a piece of code to be evaluated. Pretty much any line of code you write in Ruby, is an expression. All expressions return a value, even if that is `nil` or an exception. It important to remember that expressions <b>do</b> something, but they also <b>return</b> something. And that value that is returned is not necessarily the action that was performed. EX:

  ```ruby
  puts "Hello World" 			#	Output => Hello World				# Return Value => nil				
  puts 2 + 2							# Output => 4									# Return Value => nil
  
  p "Hello World"					# Output => Hello World				# Return Value => "Hello World"
  p 2 + 2									# Output => 4									# Return Value => 4
  ```

* <b>Miscellaneous Coding Tips to Remember</b>: 

  * Index Assignment is Mutating - This looks exactly like assignment, which is non-mutating. But it is, in fact, mutating. `#[]=` modifies the original object (`String`, `Array`, or `Hash`). EX:

    ```ruby
    string = "hello"
    string[3] = "x"
    string 							# Return Value => "helxo"
    
    array = [1, 2, 3, 4, 5]
    array[3] = "x"
    array								# Return Value => [1, 2, 3, "x", 5]
    
    hash = {a: 1, b: 2, c: 3, d: 4, e: 5}
    hash[:c] = "x"
    hash								# Return Value => {:a=>1, :b=>2, :c=>"x", :d=>4, :e=>5}
    ```

    However, be careful to distinguish `String#[]=` from `String#[]`. `String#[]` does NOT mutate, it returns a new string or `nil`. EX:

    ```ruby
    string = "hello"
    string[3] << "x"					# This line has a return value of => "lx"
    string										# Return Value => "hello"
    ```

    

  * Do NOT mutate the caller during iteration - Do NOT mutate a collection while iterating through it. It will cause unexpected behavior:

    ```ruby
    words = %w(scooby doo on channel two)
    
    words.each {|str| words.delete(str)}
    
    p words									# Output => ["doo", "channel"]
    ```

    However, you can mutate the individual elements within the collection. EX:

    ```ruby
    words = %w(scooby doo on channel two)
    
    words.each {|str| str << "!"}
    
    p words						# Output => ["Scooby!", "doo!", "on!", "channel!", "two!"]
    ```

  * When a local variable is initialized within a conditional clause, and that clause doesn't get executed, that local variable will reference `nil`. EX:

    ```ruby
    name = "Alyssa"
    
    if name == "Alyssa"
      last_name = "Easter"
    else
      middle_name = "Kate"
    end
    
    p name										# Output => Alyssa
    p last_name								# Output => Easter
    p middle_name							# Output => nil
    ```