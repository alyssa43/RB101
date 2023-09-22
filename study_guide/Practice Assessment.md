### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "hi there"
b = a
a = "not here"
```

What are a and b?

 Local variable `a` has the return value of the String `"not here"`. Local variable `b` has the return value of the String `"hi there"`. There is no output.

On lines 1 and 2 we initialize two local variables called `a` and `b`, both are assigned to the String "hi there". Meaning we have two local variables pointing to the same String objecct. Then on line 3, we reassign local variable `a` to the String, `"not here"`. Now `a` and `b` are referencing two different String objects.

The concepts demonstrated here are local variables as pointers, as well as local variable reassignment does not mutate the original object. 



### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = [1, 2, 3]
b = a
c = a.uniq
```

What are a, b, and c? What if the last line was `c = a.uniq!`?

Local variables `a`, `b`, and `c` all have the return value `[1, 2, 3]`. If the last line was `c = a uniq!`, then `a` and `b` would be `[1, 2, 3]` and `c` would be `nil`. Because invoking the `uniq!` method on an array that doesn't contain any duplicates, it will return `nil` instead of self, which means it does not end up mutating the origin object. 



### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```

The output would be `Written Assessment` and the return value would be `nil`. The `test_str` variable does not get mutated when we invoke the `test` method and pass `test_str` as the argument, because the first line within the `test` method definition, immediately reassigns the value of the `str` parameter. Once it is reassigned it is now pointing to a different object. Which is why on the next line the `downcase!` method invocation doesn't affect the `test_str` variable. The return value of this code is `nil` because the last line of the code is a `puts` method invocation, and that will always return `nil`. The concept here is that reassignment does not mutate the original object, rather it creates a new object. 

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def a_method(string)
  string << 'world'
end

a = 'hello'
a_method(a)

p a
```

The output **and** the return value will both be `"helloworld"`. When we invoke the `a_method` and pass local variable `a` as the argument, `a` gets mutated within the method. Because in the method definition we invoke the `<<` method on the `string` parameter and the `<<` method will mutate the caller. So when we invoke the `p` method on local variable `a` we will output and return the string `"helloworld"`. The concept demonstrated here is that the `<<` method is a destructive call, meaning it will mutate the caller. And also that invoking the `p` method will return and output the arguments value.

### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y)

puts y
```

The output will be `ab` and the return value will be `nil`. When we invoke the `increment` method and pass the local variable `y`  as the argument, it gets mutated within the `increment` method. On lines 1-3 we have defined the increment method that has one parameter called `x` , within the method definition on line 2 we call the `<<` method on `x`, which mutates that object. When we invoke the `puts` method on line 8, we output the mutated object of the string `ab`, and because the return value for invoking the `puts` method is always `nil`, `nil` is the return value. The concept demonstrated here is that invoking the `<<` method will mutate the caller.

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def change_name(name)
  name = 'bob' # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)

puts name
```



### Example 7

What is `arr`? Why? What concept does it demonstrate?

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr[1] = 5
arr
```



### Example 8

What is `arr`? Why? What concept does it demonstrate?

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.map! do |char|
  char.upcase
end

puts arr1
puts arr2
```



### Example 9

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = %w(a b c)
a[1] = '-'

p a
```



### Example 10

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat"}.all? do |key, value|
  value.length >= 3
end
```





### Example 11

Explain why `a` outputs `3` instead of `4` on line 10. What structure is defined on lines 4-8? How does this structure affect `a`'s final output and what is the underlying concept here?

```ruby
1		a = 4
2		b = 2
3
4		loop do
5			c = 3
6			a = c
7			break
8		end
9
10 	puts a
11 	puts b
```

Local variable `a` outputs `3` because it is initialized in the outer scope on line 1, then reassigned in the `loop` `do..end` block on line 6. The structure defined on lines 4-8 is a `Kernel#loop` method invocation that has a `do..end` block as an argument. Because of the `do..end` block, and because blocks are able to access local variables in the outer scope, that is why we are able to reassign `a`  within the block. The underlying concept demonstrated here is block scoping rules, if a local variable is initialized in the outer scope (outside of the block), it can be accessed by the inner scope (inside the block). However, if a local variable is initialized in the inner scope, it is not accessible to the outer scope. So for instances, if on line 12 we tried to invoke the `puts` method on local variable `c`,  we would get a `NameError` exception because it is not available in the outer scope since it was initialized inside of the block. 
