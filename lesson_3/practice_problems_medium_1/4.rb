def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

=begin
Is there a difference between the two, other than what operator she chose to use to
concatenate an element to the buffer?

In rolling_buffer1() the "buffer" variable is passed into the method and then mutated. It
is then returned at the end of the method, meaning both the local variable "buffer" and
the method "rolling_buffer1" will point to the same object.

In rolling_buffer2() the buffer variable is initialized inside the method and assigned the
value of the input_array and the new_element. Then the buffer variable is returned at the
end of the method. So the only way to access that buffer variable is to use the rolling_buffer2()
method.
