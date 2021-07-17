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

prng = Random.new
z = prng.rand(0..9)

palabra = terminos[z]

n = 5

puts "Bienvenido al juego del ahorcado"
puts "Cada letra erronea descontara una vida. Tienes 5 vidas"
puts "Cantidad de letras:"

cantidad_letras = palabra.size
arreglo_palabra = palabra.split(//)
arreglo_palabra.each do |x|
    print "_ "
end
puts "Escribe una letra"

alfabeto = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,,V,W,X,Y,Z".split(",")
eliminando = palabra.split("")

while eliminando.length > 0
    letra = gets.chomp
     
    while letra.size > 1
        
        puts "valor invalido"
        puts "Intente nuevamente"
        letra = gets.chomp
        
    end 

    if alfabeto.include?(letra.upcase)
        alfabeto.delete(letra.upcase)
        eliminando = eliminando - [letra]

        if palabra.include?(letra)
            puts "La palabra incluye #{letra}"
             
            arreglo_palabra.each do |x|
                
                if alfabeto.include?(x.upcase) == true
                print "_ " 
                
                else 
                print "#{x.upcase} "
                end
                
                   
            end
           
    
        else 
            puts "La palabra no incluye #{letra}. Perdiste una vida."
            n = n - 1
            puts "Te quedan #{n} vidas"
            if n == 0 
                puts "Perdiste tu ultima vida"
                puts "Juego terminado"
                h = 1
                break
            end 
        end
    else 
        puts "Ya usaste esa letra"
        puts "Escribe una letra"
        letra = gets.chomp
        
    
    

    end
end
if eliminando.length == 0
    puts ""
    puts ""
    puts "Felicidades! Ganaste el juego."
end



