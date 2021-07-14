n = suma = ventas = 0
while ventas != -1
    puts "Ingrese las ventas de hoy. Para finalizar marque '-1'"
    ventas = gets.chomp.to_i
    suma += ventas
    n +=1



end
    
promedio = (suma + 1)/(n - 1)
puts "La suma de las ventas del dia fue:",suma
puts "El promedio de las ventas fue:",promedio