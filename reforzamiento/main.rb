#Programar juego del ahorcado
#10 palabras en base de datos (faker)
#"hola" => "----"
#vidas
#Cuando adivino la a => "---a"
#Cuando me equivoco 5 o mas veces => mensaje perder

require_relative 'juego'

juego_nuevo = Juego.new

puts juego_nuevo.comenzar