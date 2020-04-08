# frozen_string_literal: true

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.reduce(0, :+)
end

def multiply(arr)
  arr.reduce(1, :*)
end

def power(base, exponent)
  base**exponent
end

def factorial(n)
  if n.zero?
    1
  else
    result = 1
    n.times do |i|
      result *= (i + 1)
      puts "#{result} #{i + 1}"
    end
    result
  end
end
