# When done, submit this entire file to the autograder.

#  Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length > 0
    sum = 0
    arr.each do |e|
      sum += e
    end
    return sum
  else
    return 0
  end

end

def max_2_sum arr
  # YOUR CODE HERE
  raise "No es arreglo" if !(arr.instance_of?(Array))
  return 0 if arr.empty?
  arr.each do |e|
    raise "Elemento no entero" if !(e.integer?)
  end
  arr.sort!
  suma = 0
  2.times do |i|
    e = arr.pop
    e = 0 if e == nil
    suma += e
  end
  return suma
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  raise "No es arreglo" if !(arr.instance_of?(Array))
  raise "No es entero"  if !n.integer?
  arr.combination(2).to_a.each do |par|
    return true if par[0] + par[1] == n
  end
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  raise "No es String" if !(name.instance_of?(String))
  "Hello, " + name

end

def starts_with_consonant? s
  # YOUR CODE HERE
  raise "No es String"  if !(s.instance_of?(String))
  return false          if s.empty? || !(s[0]=~/[a-z]/i)
  return true           unless  s[0]=~/[aeiou]/i

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  raise "No es String" if !(s.instance_of?(String))
  s_array = s.split("")
  es_bin = true
  s_array.each do |s_bit|
    es_bin = s_bit =~ /[10]/
    break if !(es_bin)
  end
  return false if !(es_bin)
  return true if (s_array[s.length - 1] == "0" && s_array[s.length - 2] == "0")
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE

attr_accessor :isbn
attr_accessor :price

def initialize(isbn,price)
    raise ArgumentError.new("No es String") if !(isbn.instance_of?(String))
    raise ArgumentError.new("Cadena vacía") if isbn.empty?
    raise ArgumentError.new("No numérico") unless price.is_a?(Numeric)
    raise ArgumentError.new("Precio incorrecto") if price <= 0

    @isbn= isbn
    @price= price
end

def price_as_string
  return "$%.2f" % self.price
end

end
