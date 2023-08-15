# frozen_string_literal: true

def repeat(str, num)
  until num.zero?
    puts str
    num -= 1
  end
end

repeat('Hello', 3)
