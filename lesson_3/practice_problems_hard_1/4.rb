def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  (dot_separated_words.size == 4) && (dot_separated_words.any? { |num| is_an_ip_number?(num)})
end
