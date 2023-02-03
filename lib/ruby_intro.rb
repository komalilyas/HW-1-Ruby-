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
# Concatenate strings using (+)  Hello with name
def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  regex = /^[^aeiouAEIOU\W]/i
  if regex.match(string) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(string)
  if !string.empty? and string.chars.all? {|x| x =~ /[01]/} and (string.to_i(2) % 4 == 0)
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
    def initialize(isbn, price)
      if price<=0
        raise ArgumentError, "Price should not positive"
      end
      if isbn.empty?
        raise ArgumentError, "Price should not positive"
      end
      @isbn = isbn
      @price = price
end
attr_accessor :isbn
attr_accessor :price

def price_as_string()
  # Prefix price with $ and convert price to float number formatted with 2 decimal points
  return "$" + "%0.2f" % [@price.to_f]
end
end
