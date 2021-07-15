def operacion1(dolares)
    pesos_col = 3792*dolares
    puts pesos_col, " pesos colombianos"
end
def operacion2( dolares)
     soles = 3.96*dolares
    puts soles, "soles"
end
def operacion3(clp)
    dolares = 0.0013*clp
    puts dolares, " dolares"
end
continuar = 0
while continuar != "no"
    puts "Seleccione el numero con la operacion que requiere"
    puts "1.- dolares -> pesos colombianos, 2.- pesos chilenos -> dolares, 3.- dolares -> soles"
    operacion = gets.chomp.to_i
    puts "ingrese el monto a convertir"
    monto = gets.chomp.to_i
    

    if operacion == 1
        operacion1(monto)
        
    elsif operacion == 3
        operacion2(monto)
        
    elsif operacion == 2
        operacion3(monto)
    else puts "opcion invalida"
        
    end 
    puts "desea algo mas (si/no)"
        continuar = gets.chomp
end

