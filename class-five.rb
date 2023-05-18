=begin
  1. What are break and next instructions used for, and within which
  statements?
  break: This instruction is used to prematurely terminate the execution of a loop or iterator.
  next: This instruction is used to skip the current iteration of a loop or iterator and move to the next iteration
  Examples: with the array of numbers
=end
numbers = [1, 2, 3, 4, 5]

puts "Instruction for break in loops"
numbers.each do |num_break|
  break if num_break == 4
  puts num_break
end

puts "Instruction for next in loops"
numbers.each do |num_next|
  next if num_next == 2

  puts num_next
end

=begin
2. What are these iterators for? Write a simple example of each of them:
    a. Each iterator
      The each iterator is used to iterate over elements in a collection, such as an array, and perform a specific action for each element.
    b. Times iterator
      The times iterator allows you to execute a block of code a specific number of times.
    c. Collect iterator
      Is an iterator that is used to transform elements in an enumerable object (such as an array, hash, or range)
      new_collection = enumerable.collect { |element| block }
=end

puts "\n\n Instruction each iteration"
numbers.each do |num_each|
  puts num_each
end

puts "Instruction times iteration"
3.times do |num_times|
  puts "Number #{num_times}"
end

puts "Instruction collect iteration"
new_collection = numbers.collect do |num|
  num + num
end

puts new_collection.inspect

=begin
  3. Write a program that prints the numbers between 1 and 100.
    With the .. operator
=end

puts "\n\n Loop with .. operator"
string_num = ""
(1..100).each do |num_point|
  string_num += "Number: #{num_point} , "
end
puts string_num.chomp!(", ")

=begin
  4. Write a program that prints the factorial of a given number.
=end
puts "\n\nFactorial"
def factorial_numbers(numbers)
  factorial = numbers.map do |num|
    (1..num).reduce(1, :*)
  end
  return factorial
end

print "Tell me, the number to calculate its factorial: "
num_factorial = gets.chomp.to_i
factorials = factorial_numbers(1..num_factorial)
puts "Factorials: #{factorials.join(', ')}"

=begin
  5. Write a program that iterates over a string (paragraph) and prints:
    a. The shortest word.
      min_by(&:length)
    b. The longest work.
      max_by(&:length)
    c. The palindromes present in the paragraph.
=end

puts "\n\n Methods write "

def find_shortest_word(paragraph)
  words = paragraph.split(" ")
  shortest_word = words.min_by(&:length)
  puts "Shortest word: #{shortest_word}"
end

def find_longest_word(paragraph)
  words = paragraph.split(" ")
  longest_word = words.max_by(&:length)
  puts "Longest word: #{longest_word}"
end

def find_palindromes(paragraph)
  words = paragraph.split(" ")
  palindromes = words.select { |word| word.downcase == word.downcase.reverse }
  palindromes_joined = palindromes.join(" ")
  puts "Palindromes:\n#{palindromes_joined}"
end

puts "Write the paragraph"
paragraph = gets

find_shortest_word(paragraph)
find_longest_word(paragraph)
find_palindromes(paragraph)





