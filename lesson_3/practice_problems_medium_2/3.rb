# Study the following code and state what will be displayed and why:

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
# pumpkins

puts "String_arg_two looks like this now: #{string_arg_two}"
# pumpkinsrutabaga

=begin
When tricky_method() is called with string_arg_one and string_arg_two as it's arguments
they are then assigned to parameters string_param_one and string_param_two respectively.
Meaning string_arg_one and string_param_one are pointing to the same object and have the
same object id. The same goes for string_arg_two and string_param_two.

Calling += on string_param_one does not mutate the string_arg_one variable because
reassignment is a non-mutating method. Rather the reassignment creates a new object id
for the string_param_one variable inside the method. So it is no longer pointing at the
same object as string_arg_one.

However on the next line where << is called on string_param_two, it does, in fact, mutate
the string_arg_two variable. Because << is a mutating method, it mutates the object that
string_param_two is pointng to, which is string_arg_two. So string_arg_two and string_param_two
both still point to the same object and have a value of "pumpkinsrutabaga".
=end
