puts "Escriba un numero"
n = gets.chomp.to_i

while n > 0
    puts "   "* (n-1) + " x "
    n = n - 1
end