=begin
  Based on the Student class written in the previous homework, do the
following:
    1. Write a subclass that inherits from that class.
    2. In this class add the attributes and methods that you desire.
    3. Write a Course class, including its name, semester and any data that
        you’d like to include.
    4. Make the new class able to have many courses as an attribute.
    5. Test the classes creating different objects in different scenarios
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

class CollegeStudent < Student
  attr_accessor :major, :courses

  def initialize(full_name, address, phone, age, major)
    super(full_name, address, phone, age)
    @major = major
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def display_courses
    puts "Courses for #{full_name}:"
    @courses.each do |course|
      puts "#{course.name} (Semester: #{course.semester})"
    end
  end
end

class Course
  attr_reader :name, :semester

  def initialize(name, semester)
    @name = name
    @semester = semester
  end
end

# CollegeStudent object
college_student = CollegeStudent.new("Felipe Londoño", "Copacabana", "310546", 20, "Computer Science")

# Course objects
course1 = Course.new("Mathematics", "1")
course2 = Course.new("PHP", "4")

# Adding courses
college_student.add_course(course1)
college_student.add_course(course2)

# Displaying student information
puts "Student Information: "
puts "Name: #{college_student.full_name}"
puts "Address: #{college_student.address}"
puts "Phone: #{college_student.phone}"
puts "Age: #{college_student.age}"
puts "University: #{Student.university}"
puts "Major: #{college_student.major}"

# Displaying course information
college_student.display_courses

