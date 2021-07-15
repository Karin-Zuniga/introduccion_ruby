#10 terminos tecnicos --(listo)
#seleccionar palabra (random => array?) --- listo
#Instrucciones (puts) -- listo
#Mostrar guiones para la cantidad de letras (if?) --- listo
#recibir respuesta usuario (gets) -- listo
#comparar respuestas de usuario con palabra
#(quitar letra a medida que se va adivinando)
#5 vidas (oportunidades) (for? if?)
#Mostrar las letras acertadas
#Mensaje de felicitaciones al ganar (puts)


terminos = ["blanquear", "cernir", "caramelizar", "acremar", "choux", "montar", "precalentar", "temperar", "glaseado","ganache"]

def tamano(palabra)
    cantidad_letras = palabra.size
    if cantidad_letras == 6
        puts '------'
    elsif cantidad_letras == 7
        puts '-------'
    elsif cantidad_letras == 8
        puts '--------'
    end

end

def letra_larga(letra)
    while letra.size > 1
        puts "valor invalido"
        puts "Intente nuevamente"
        letra = gets.chomp
        
    end
    return letra
end

prng = Random.new
z = prng.rand(0..9)

palabra = terminos[z]
puts palabra

letra =
puts "Bienvenido al juego del ahorcado"
puts "Cada letra erronea descontara una vida. Tienes 5 vidas"
puts "Cantidad de letras:"
puts tamano(palabra)
puts "Escribe una letra"

palabra = palabra.split(//)
while palabra.size > 0
    letra = gets.chomp
    while letra.size > 1
        puts "valor invalido"
        puts "Intente nuevamente"
        letra = gets.chomp
        
    end
    
    palabra = (palabra - [letra])
    puts palabra.size
    

end




