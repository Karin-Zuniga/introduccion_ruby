numeros = [1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8 , 8, 9, 86, 75, 75, 56]



puts "Selecciona uno de los siguientes:"
puts "suma, resta, pares, impares, mayor, menor"
opcion = gets.chomp

if opcion == "suma"
    
    sumar = numeros.sum
    puts sumar

elsif opcion == "resta"
    puts "??"

elsif opcion == "pares"
    for i in numeros
        if i.even? == true
            puts i
        end
    end

elsif opcion == "impares"
    for i in numeros
        if i.odd? == true
            puts i
        end
    end



elsif opcion == "mayor"
    
    numeros_ordenados = numeros.sort
    puts numeros_ordenados[-1]

elsif opcion == "menor"
    numeros_ordenados = numeros.sort
    puts numeros_ordenados[0]
    
else puts "opcion invalida"
    

end

