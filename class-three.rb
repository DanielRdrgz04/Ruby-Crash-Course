=begin
  1. What cases do you think arrays are more suitable than hashes for?
    Arrays are more suitable than hashes in certain cases where the order and index-based access of elements
    are important, and when the keys or labels associated with the data are not necessary or relevant.
    Here are some scenarios where arrays are commonly preferred over hashes
=end

=begin
  2. What cases do you think hashes are more suitable than arrays for?
    Hashes are more suitable than arrays in certain cases where the access of elements is required
    with the keys or labels associated with the data
=end

=begin
  3. Can we have hashes as arrays’ elements? Can we have arrays as hashes’ elements? Can an array or a hash be the key of any hash element?
  Hashes as Array Elements:
    Arrays can indeed contain elements of any data type, including hashes. This means you can have a hash as an element within an array.
    The hash would typically be inserted into the array just like any other element, using the array's append or insert operations.
=end

array = [{ key1: ['value1', 'value2'], key2: 'value2' }]

valores = array[0][:key1][1]
# array[#][key][elemento]
puts valores

=begin
  4. Write an array that stores, in order, the most popular domains in Colombia, according to
  https://radar.cloudflare.com/co

    (1) google.com / (2) googleapis.com / (3) gstatic.com / (4) facebook.com / (5) whatsapp.net
    (6) microsoft.com / (7) gvt2.com / (8) doubleclick.net / (9) googlevideo.com / (10) tiktokcdn.com

  I like fill the array with the hashes

  # Explain nil
  def example_method
    # Sin return, el valor de retorno es nil
  end

  result = example_method
  puts result # Output: nil

=end


# Array of hashes
domains = [
  { google: ['google.com', 'googleapis.com', 'gstatic.com'], meta: ['facebook.com'] },
  { google: ['googlevideo.com', 'gvt2.com'], microsoft: ['microsoft.com'] },
  { tiktok: ['tiktokcdn.com'], meta: ['whatsapp.net'], doubleclick: ['doubleclick.com'] }
]

#Menú
def display_menu
  puts "Menú
        1. Google
        2. Meta
        3. Microsoft
        4. Tik Tok
        5. DoubleClick
        6. Exit"
end

def get_user_choice
  print "Enter your choice for the knowledge of Domains: "
  i = gets.chomp.to_i

  case i
  when 1
    :google
  when 2
    :meta
  when 3
    :microsoft
  when 4
    :tiktok
  when 5
    :doubleclick
  when 6
    puts "Goodbye!"
    nil
  else
    puts "Invalid choice. Please try again."
  end
end

def get_domain_values(domains, domain)
  values = []

  domains.each do |row|
                #key && value
    row.each do |key, domain_array|
      if key == domain
        values.concat(domain_array)
      end
    end
  end

  values
end

loop do
  display_menu
  choice = get_user_choice

  break if choice.nil?

  values = get_domain_values(domains, choice)
  if values.empty?
    puts "No domains found for the selected choice."
  else
    puts "Domains: #{values.join(', ')}"
            #junta los arrays
  end

  puts "\n"
end

=begin
  5. Write a hash that stores Colombia’s departments and their corresponding capital cities.
=end

departments = {
  "Amazonas" => "Leticia",
  "Antioquia" => "Medellín",
  "Arauca" => "Arauca",
  "Atlántico" => "Barranquilla",
  "Bolívar" => "Cartagena",
  "Boyacá" => "Tunja",
  "Caldas" => "Manizales",
  "Caquetá" => "Florencia",
  "Casanare" => "Yopal",
  "Cauca" => "Popayán",
  "Cesar" => "Valledupar"
}

puts "Choice the department for know capital "

loop do
  print "Dime un departamento: "
  department = gets.chomp

  if departments.key?(department)
    capital = departments[department]
    puts capital
    # Se rompe si el departamento existe en el hash
    break
  else
    puts "No existe o se escribió mal"
  end
end

=begin
  6. Write a hash that stores Colombia’s autonomous systems’ codes and their corresponding names,
  according to https://radar.cloudflare.com/co
=end

codes = {
  "AS3816" => "Colombia Telecomunicaciones S.A. ESP",
  "AS13489" => "EPM Telecomunicaciones",
  "AS10620" => "Telmex Colombia S.A.",
  "AS19429" => "ETB - Colombia",
  "AS27831" => "Wirenet Chile SA",
}

puts "Autonomous systems in Colombia"
codes.each do |codigo, nombre|
  puts "Código: #{codigo}: & Nombre: #{nombre}"
end















