=begin
    What is the difference between 'chomp' and 'chop'?
    In most cases, chomp is preferable because it won't remove the final character unless
    it is the record separator which is usually a newline,
    whereas chop will remove the last character no matter what it is.
=end

# Example one
print "Ingrese su nombre: "
nom = gets.chomp
print "Ingrese su apellido: "
ape = gets.chop

puts "Su nombre es " + nom + " y su apellido es " + ape.chop + "!"


=begin
    Which are the different variables scopes and what are them used for?
    1. Global scope: variables defined at the top-level
        begin with a dollar sing '$' ($global_var)

    2. Local scope: have a limited scope and are accessible only within a
        specific block, method or module
        begin with a lowercase letter or an underscore (local_var)

    3. Instance scope: class by all methods
        begin with a single symbol '@' (@instance_var)

    4. Class scope: can be accessed by class methods
        begin with two '@' (@@class_var)

    5. Constant Scope
        declared with uppercase_letters (CONSTANT_NAME)
=end

=begin
    Write different programs that, based on user input, calculate the area of:
        - A Circle
        - A Triangle
        - A Square
        - A Rectagule
        - A Trapezium
=end

def display_menu
    puts "Menú"
    puts "1. A Circle"
    puts "2. A Triangle"
    puts "3. A Square"
    puts "4. A Rectangle"
    puts "5. A Trapezium"
    puts "6. Exit"
end

def get_user_choice
    print "Enter you choise for calculate area: "
    gets.chomp.to_i
end

def option_for_circle_area
    pi = 3.1416
    puts "You selected option for circle area"

    print "Tell me, what is the radio of circle: "
    r = gets.chomp.to_f

    equation_of_circle = pi * (r)**2

    puts "The area of circle is: #{equation_of_circle}"
end

def option_for_triangle_area
    puts "You selected option for triangle area\n"

    print "Tell me, what is the base of triangle: "
    b = gets.chomp.to_f

    print "And tell me, what is the height of the triangle: "
    h = gets.chomp.to_f

    equation_of_triangle = (b * h)/2

    puts "The area of the triangle is: #{equation_of_triangle}"
end

def option_for_square_area
    puts "You selected option for square area\n"

    print "Tell me, what is the side of the square: "
    l = gets.chomp.to_f

    equation_of_square = (l) ** 2

    puts "The area of the square is: #{equation_of_square}"
end

def option_for_rectangle_area
    puts "You selected option for rectangle area\n"

    print "Tell me, what is the base of the rectangle: "
    b = gets.chomp.to_f

    print "And tell me, what is the height of the rectangle: "
    h = gets.chomp.to_f

    equation_of_rectangle = (b * h)

    puts "The area of the square is: #{equation_of_rectangle}"
end

def option_for_trapezium_area
    puts "You selected option for the trapezium area\n"

    print "Tell me, what is the major base of the trapezium: "
    mb = gets.chomp.to_f

    print "Tell me, what is the base minor of the trapezium: "
    bm = gets.chomp.to_f

    print "And finally, tell me what is the height of the trapezium: "
    h = gets.chomp.to_f

    equation_of_trapezium = ((mb - bm)/2)*h

    puts "The area of the trapezium is: #{equation_of_trapezium}"
end

loop do
    display_menu
    choice = get_user_choice

    case choice
    when 1
      option_for_circle_area
    when 2
      option_for_triangle_area
    when 3
      option_for_square_area
    when 4
      option_for_rectangle_area
    when 5
      option_for_trapezium_area
    when 6
      puts "Good Bye!"
      break
    else
      puts "Invalid choice. Please try again."
    end

    puts "\n"
end

=begin
    A string is an object from the String class. What are the methods 'reverse' and 'capitalize', and 'length' for?
    Reverse:
        The reverse method is used to reverse the characters of a string.
        It returns a new string with the characters in reverse order
    Capitalize:
        The capitalize method is used to capitalize the first character of a string while making the remaining characters lowercase.
        It returns a new string with the modified capitalization
    Length:
        The length method is used to determine the number of characters in a string.
        It returns an integer representing the length of the string
=end

# Reverse
string = "Hello, world!"
reversed_string = string.reverse
puts "Reverse String: " + reversed_string

# Capitalize
string2 = "hello, world!"
capitalized_string = string2.capitalize
puts "Capitalized String: " + capitalized_string

# Length
string3 = "Hello, world!"
string_length = string3.length
puts "String Length: " + string_length


