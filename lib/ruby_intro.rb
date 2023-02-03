# frozen_string_literal: true

# Part 1
#0  # returns 0 when given an empty array otherwise adds the elements in the array
def sum(array)
  array.inject(0, :+)
end
#1  #sorts the array and adds the last two max items otherwise returns 0 when given empty array.
def max_2_sum(array)
 
  array.sort.last(2).inject(0, :+)
end
#2 #Collects the combinations of 2 in the array and then sum the two numbers and checks if sum of two numbers== n
def sum_to_n?(array, n)
  arr = array.combination(2)
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
