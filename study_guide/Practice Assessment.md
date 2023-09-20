### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "hi there"
b = a
a = "not here"
```

What are a and b?



### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = [1, 2, 3]
b = a
c = a.uniq
```

What are a, b, and c? What if the last line was `c = a.uniq!`?



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

