# # CSCE 606: Software Engineering Homework 1: Ruby on Rails 
#Part 1 
def sum(array)
  array.inject(0, :+)
end

def max_2_sum(array)
  array.sort.last(2).inject(0, :+)
end


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
  return "$" + "%0.2f" % [@price.to_f]
end
end
