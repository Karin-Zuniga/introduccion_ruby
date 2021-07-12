#Datos de entrada

marcador = "3-4" #cadena de texto o caracteres

#preparacion de datos
#["3","4"]
#  0   1

marcador_local =marcador.split("-")[0].to_i 
marcador_visitante = marcador.split("-")[1].to_i

if marcador_local > marcador_visitante
    mensaje1 = "El equipo local es el ganador"
    puts mensaje1
elsif marcador_local < marcador_visitante
    mensaje2 = "El equipo visitante es el ganador"
    puts mensaje2
elsif marcador_local == marcador_visitante
    mensaje3 = "Empate"
end