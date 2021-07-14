opcion=0


while opcion != "7"
    puts " "
    puts "¿Que quiere saber?"
    puts "Por favor escriba el numero de su opcion:"
    puts "1.- Uso de + - / * con números"
    puts "2.- Uso de + - / * con cadenas (string)"
    puts "3.- Uso de + - / * con array de números (array)"
    puts "4.- Uso de + - / * con array de cadenas (array)"
    puts "5.- ¿Que pasa si se hace el siguiente caso: hola * 3"
    puts "6.- ¿Que pasa en el siguiente caso ['hola', 'clase', 'manzana'][-1]"
    puts "7.- Salir"

    opcion = gets.chomp

    if opcion == "1"
        puts "Cuando se usa la suma, resta, multiplicacion o division de numeros, puede ocurrir lo siguiente:"
        puts "Si el numero esta definido como valor numerico(.to_s), se realizara la operacion correspondiente"
        puts "Si el numero esta definido como palabra (.to_i), solo funcionara la suma, donde juntara ambos numeros como una palabra. Las otras operaciones son invalidas"

    elsif opcion == "2"
        puts "La suma con cadenas generara la combinacion de ambas cadenas, otras operaciones son invalidas."
    elsif opcion == "3"
        puts "Al sumar 2 arreglos, los componentes de estos se unen en un solo arreglo"
        puts "Al restar dos arreglos, el numero restado se elimina del arreglo anterior"
        puts "Al multiplicar un arreglo, este se repite por la cantidad multiplicada"
        puts "Dividir es una operacion invalida"
    elsif opcion == "4"
        puts "La suma de dos arreglos da como resultado un arreglo con los componentes de ambas"
        puts "La resta de dos arreglos resultara en la eliminacion del la palabra que se resta. Si la palabra restada no se encuentra en el arreglo, no pasara nada"
        puts "La multiplicacion del arreglo por un numero repetira el arreglo la cantidad de veces de dicho numero"
        puts "Dividir es una operacion invalida"

        
    elsif opcion == "5"
        puts "La palabra \"hola\" se repite tres veces (holaholahola)"
    elsif opcion == "6"
        puts "Se selecciona el ultimo elemento del arreglo"

    end
    
end