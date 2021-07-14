puts "Ingresa tu nombre, edad, nivel"
persona = gets.chomp
puts persona

nombre = persona.split(%r{,\s*})[0].to_s
edad = persona.split(%r{,\s*})[1].to_s
nivel = persona.split(%r{,\s*})[2].to_s

if  nivel == "basico"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años mi nivel es *"


elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años mi nivel es **"


elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años mi nivel es ***"

    else puts persona[3]

end