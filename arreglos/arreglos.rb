#Datos

numeros = "1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567, 567, 7, 4, 4, 3, 5, 7, 8, 8 ,8, 9, 86, 75, 75, 56"

opcion = ""

suma = 0
resta = 0
pares = 0
impares = 0
mayo = 0
menor = 0

puts "Escribir una de las siguientes opciones: suma, resta, pares, impares, mayor, menor"

opcion = gets.chomp

arreglo_numero = numeros.split(",")

if