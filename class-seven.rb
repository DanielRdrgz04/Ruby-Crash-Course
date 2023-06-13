=begin
  1. How do private, public and protected modifiers work in Ruby?
      - Private: When a method is declared as private, it can only be called
                  within the context of the current object (self).
                  Private methods cannot be called with an explicit receiver
                  and cannot be accessed by other instances of the class.
      - Public: The public modifier is the default visibility in Ruby.
                  Methods and attributes declared without an explicit visibility modifier are considered public.
      - Protected: Methods declared as protected can be called within the same class or its subclasses,
                    but cannot be called from outside the class hierarchy.
=end

class MyClass
  def public_method
    # This method is public and can be called from anywhere.
  end

  private

  def private_method
    # This method is private and can only be called within the object.
  end

  def protected_method
    # This method is protected and can be called within the class hierarchy.
  end
end

obj = MyClass.new
obj.public_method # Can be called
#obj.private_method # Throws an error
#obj.protected_method # Throws an error

=begin
  2. How can I do to set the initialize method, so it works receiving optional
    arguments?
=end

class MyClass2
  def initialize(arg1 = "default1", arg2 = "default2")
    @arg1 = arg1
    @arg2 = arg2
  end

  def print_args
    puts "arg1: #{@arg1}"
    puts "arg2: #{@arg2}"
  end
end

puts "With arguments"
my_object = MyClass2.new
my_object.print_args

puts "With set arguments"
my_object = MyClass2.new("custom1", "custom2")
my_object.print_args

=begin
3. Create a Student class with the following components:
	• Instance attributes: full name, address, phone, age // With the "attr_reader" is a getter for the attributes
	• A class attribute with the name of the university // @@VAR CLASS
	• The initialize method
	• Only reader accessors for all the attributes
	• A method that returns true if the student is underage // That symbol (?) is used to true or false
	• A method that returns true if the student’s age is more than 27
=end

class Student
  attr_reader :full_name, :address, :phone, :age

  @@university = "ITM"

  def initialize(full_name, address, phone, age)
    @full_name = full_name
    @address = address
    @phone = phone
    @age = age
  end

  def self.university
    @@university
  end

  def underage?
    @age < 18
  end

  def over_27?
    @age > 27
  end
end

student = Student.new("Daniel", "Girardota", "314567", 20)

string = "Name: #{student.full_name} \n Address: #{student.address} \n"
string += "Phone: #{student.phone} \n Age: #{student.age} \n"
string << "University: #{Student.university} \n"
string += "Is underage? #{student.underage?} and is over 27's? #{student.over_27?}\n"

puts string




