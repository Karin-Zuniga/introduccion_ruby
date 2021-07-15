#Guardar datos con llaves
#llave => valor

#Tipos de datos
texto = ""
texto2 = ''
num = 2
bool = false
# colecciones de datos
lista = []
hash = {}

#Video club donde tenemos peliculas
serie_1 = { 
    nombre: "Sweet Tooth",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "",
    genero: "drama"
}

serie_2 = {
    nombre: "Resident Evil",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "Un mundo de zombies",
    genero: "Drama"
}

serie_3 = {
    nombre: "Atypical",
    formato: "Serie",
    temporadas: 4,
    sinopsis:"",
    genero: "Accion"
}

serie_4 = {
    nombre: "The witcher",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "",
    genero: "Drama"
}

#Salida
#Mensaje de consola donde se muestre el nombre y el formato

puts "Nombre: #{serie_1[:nombre]} \t Formato: #{serie_1[:formato]}"

series = [
    serie_1, serie_2, serie_3, serie_4
]
 for i in series
    puts "Nombre: #{series[:nombre]} \t Formato: #{series[:formato]}"
    
 end
 puts "===="