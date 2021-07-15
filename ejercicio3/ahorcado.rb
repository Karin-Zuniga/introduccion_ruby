#10 terminos tecnicos --(listo)
#seleccionar palabra (random => array?) --- listo
#Instrucciones (puts) -- listo
#Mostrar guiones para la cantidad de letras (if?)
#recibir respuesta usuario (gets) -- listo
#comparar respuestas de usuario con palabra
#(quitar letra a medida que se va adivinando)
#5 vidas (oportunidades) (for?)
#Mostrar las letras acertadas
#Mensaje de felicitaciones al ganar (puts)


terminos = [["blanquear".split(//)], ["cernir".split(//)], ["caramelizar".split(//)], ["acremar".split(//)], ["choux".split(//)], ["montar".split(//)], ["precalentar".split(//)], ["temperar".split(//)], ["glaseado".split(//)] ,["ganache".split(//)]]


prng = Random.new
z = prng.rand(0..9)

palabra = terminos[z]
puts palabra

cantidad_letras = palabra.size
puts palabra[0]

letra =
puts "Bienvenido al juego del ahorcado"
puts "Cada letra erronea descontara una vida. Tienes 5 vidas"
puts cantidad_letras
puts "Escribe una letra"
letra = gets



