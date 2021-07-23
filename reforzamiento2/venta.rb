require_relative 'generador_productos'
require_relative 'pedido'

class Venta

    attr_reader :pedido
    attr_reader :inventario

    def initialize
        crear_inventario
        mostrar_inventario
        crear_pedido
    end

    def crear_inventario
        #Creando el inventario
        @inventario = [] # infinitos
        10.times do
            @inventario << GeneradorProductos.generar
        end
        

    end

    def mostrar_inventario
        #Mostrar inventario al usuario
        puts "===== \t Su tienda amiga \t ===="
        puts "Inventario: "
        @inventario.each do |producto|
            puts "#{producto.codigo} \t\t\t #{producto.nombre} \t\t\t $#{producto.precio} \t\t\t #{producto.marca} \t\t\t #{producto.presentacion} \t\t\t #{producto.categoria}"
        end
    end

    def crear_pedido
        #crear nuestro pedido

        @pedido = Pedido.new
    end
    def comenzar
        # Mostrar un msje que pida el codigo del producto
        #Recibir el codigo y buscarlo en el inventario
        #Si encuentro el codigo, agregarlo a lista de productos
        #Si no encuentra, mostrar mensaje al usuario
        
        codigo_producto = ""
        while codigo_producto != "terminar"
            print "Ingrese el codigo del producto: "
            codigo_producto = gets.chomp
            if codigo_producto != "terminar"
                producto_encontrado = @inventario.select do |producto|
                    producto.codigo == codigo_producto
                end
                if producto_encontrado.count == 0
                    puts "El código: #{codigo_producto}. No esta en el inventario X"

                else
                    @pedido.productos << producto_encontrado[0]
                    puts "El producto #{codigo_producto}, fue agregado al pedido."
                end
            end
            #puts @pedido.inspect
            
            
        end

        @pedido.mostrar_resumen_pedido

    end

    

end
