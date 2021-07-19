require 'faker'
require_relative 'mascota'
require_relative 'gato'
require_relative 'perro'
require_relative 'cliente'


# puts "Ingrese el nombre del cliente"
# cliente1 = Cliente.new
# cliente1.nombre = gets.chomp
# puts "#{cliente1.nombre} guardado!"

# puts "Ingrese el correo del cliente"
# cliente1.correo = gets.chomp
# puts "guardado!"

# cliente1.cantidad_compras = 34
# cliente1.mostrar_info

# cliente2 = Cliente.new
# cliente2.nombre = "karin"
# cliente2.correo = "karin@edutecno.com"
# cliente2.cantidad_compras = 1
# cliente2.mostrar_info
 lista_de_cliente = []

 for i in 0..99
     cliente = Cliente.new
     cliente.nombre = Faker::Name.name
     cliente.correo = Faker::Internet.email
     # cliente.mostrar_info
     lista_de_cliente << cliente
 end

 lista_gato = []
 lista_perro = []

for i in 0..49
    perro = Perro.new
    perro.nombre = Faker::Creature::Dog.name
    perro.peso = Faker::Number.between(from: 30, to:100)
    perro.edad = Faker::Number.between(from: 0, to:20)
    perro.raza = Faker::Creature::Dog.breed
    # perro.ladrar 
    lista_perro << perro
 end


 for i in 0..49
    gato = Gato.new
    gato.nombre = Faker::Creature::Cat.name
    gato.peso = Faker::Number.between(from: 20, to:50)
    gato.edad = Faker::Number.between(from: 0, to:15)
    gato.raza = Faker::Creature::Cat.breed
    # gato.maullar
    lista_gato << gato
 end

# for perro in lista_perro
#     perro.mostrar_datos
#     puts "======"
# end
# for gato in lista_gato
#     gato.mostrar_datos
    
# end

# cliente1 = Cliente.new
# cliente1.nombre = Faker::Name.name

# perro_nuevo = Perro.new
# perro_nuevo.nombre = Faker::Creature::Dog.name

# cliente1.mascota = perro_nuevo
# perro_nuevo.cliente = cliente1 
# puts "Cliente #{cliente1.nombre} y su mascota es: #{cliente1.mascota.nombre}"


for i in 0..49
    lista_de_cliente[i].mascota = lista_gato[i]
end
for i in 0..49
    lista_de_cliente[i-50].mascota = lista_perro[i]
end

nuevos_clientes = []
for i in 0..199
    cliente = Cliente.new
    cliente.nombre = Faker::Name.name
    #asignación de mascota
    cliente.mascota = Mascota.new
    cliente.mascota.nombre = Faker::Creature::Dog.name


    cliente.mostrar_mascotas
    
    nuevos_clientes << cliente
end