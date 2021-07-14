puts "Escriba una palabra las 'a' seran reemplazadas por x."
Palabra = gets.chomp
b = Palabra.gsub(/[a]/, 'x')  
puts b  