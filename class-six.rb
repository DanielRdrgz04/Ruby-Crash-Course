=begin
1. Write a function that receives a integer number as a parameter and
    writes in the screen if its an even or an odd number.
=end

def even_or_odd(number)
  if number % 2 == 0
    puts "#{number} is an even number."
  else
    puts "#{number} is an odd number."
  end
end

even_or_odd(4)
even_or_odd(7)

=begin
2. Write a function that returns the factorial of a given number, using
    iteration.
    raise is Exception // Example: ZeroDivisionError or ArgumentError or
=end

def factorial_iterative(n)
  if n < 0
    raise ArgumentError, "Factorial is undefined for negative numbers."
  end

  result = 1
  while n > 0
    result *= n
    n -= 1
  end

  result
end

puts "Factorial iterative: #{factorial_iterative(5)}"

=begin
3. Write a function that returns the factorial of a given number, using
    recursion.
=end

def factorial_recursive(n)
  if n < 0
    raise ArgumentError, "Factorial is undefined for negative numbers."
  elsif n == 0
    return 1
  else
    return n * factorial_recursive(n - 1)
  end
end

puts "Factorial recursive: #{factorial_recursive(5)}"

=begin
  4. Write a function that returns true if a given number is prime, and false
    otherwise.
=end

def is_prime(number)
  if number <= 1
    return false
  end

  (2..Math.sqrt(number)).each do |divisor|
    if number % divisor == 0
      return false
    end
  end

  return true
end

puts "Is number prime: #{is_prime(4)}"

=begin
  5. Write a function that receives a string and an integer number,
    returning an array which contains the words of that string whose size is
    greater that the received number

    << Append a string
=end

def words_greater_than(string, number)
  words = string.split(" ")
  result = []

  words.each do |word|
    if word.length > number
      result << word
    end
  end

  result
end

sentence = "Nadie silva como Silvio silva, porque si alguien silvara como Silvio silva, sería un gran silvador"
result = words_greater_than(sentence, 5)
puts "#{result.inspect}"





