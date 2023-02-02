# frozen_string_literal: true

# Part 1

def sum(array)
  # returns 0 when given an empty array otherwise adds the elements in the array
  array.inject(0, :+)
end

def max_2_sum(array)
  #sorts the array and adds the last two max items otherwise returns 0 when given empty array.
  array.sort.last(2).inject(0, :+)
end

def sum_to_n?(array, n)
  # Store combinations of 2
  arr = array.combination(2)
  # Find with a condition
  sumto_n = arr.find{|a,b| a+b==n}
  if(sumto_n) 
    return true
  else 
    return false
  end
end
# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
