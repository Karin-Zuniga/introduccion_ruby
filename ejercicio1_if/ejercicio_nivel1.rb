#Datos


   

    a = ['persona', 'jaime', 'edad', '80', 'nivel', 'basico']
    b = ['persona', 'camila', 'edad', '16', 'nivel', 'intermedio']
    c = ['persona', 'edgar', 'edad', '50', 'nivel', 'avanzado']
    
    



def arreglo(a)
    
    nivel = a [5]
    nombre = a [1].to_s
    edad = a [3].to_s


    if  nivel == "basico"
        puts "Hola, me llamo " + nombre + "y tengo " + edad + " años mi nivel es *"


    elsif nivel == "intermedio"
        puts "Hola, me llamo " + nombre + "y tengo " + edad + " años mi nivel es **"


    elsif nivel == "avanzado"
        puts "Hola, me llamo " + nombre + " y tengo " + edad + " años mi nivel es ***"
    else
        puts a[1]

    end
end  

arreglo(a)
arreglo(b)
arreglo(c)






