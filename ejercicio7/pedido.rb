require 'faker'

class Pedido
    
    attr_reader   :codigo
    attr_reader   :total
    attr_accessor :productos
    attr_reader   :fecha_creacion
    attr_accessor :fecha_entrega
    attr_reader   :estado                    # recibido / preparando / enviando / entregado


    def initialize
        @codigo         = Faker::Barcode.ean
        @total          = 0
        @productos      = []
        @fecha_creacion = Time.now
        @fecha_entrega  = Faker::Date.forward(days: 2)
        @estado         = "preparando"
    end

    def mostrar_resumen_pedido
        puts "===== RESUMEN PEDIDO ====="
        puts "Código:               #{self.codigo}"
        puts "Fecha de creación:    #{self.fecha_creacion}"
        puts "Fecha de entrega:     #{self.fecha_entrega}"
        puts "Estado:               #{self.estado}"

        self.productos.each do |producto|
            puts "#{producto.nombre} \t $#{producto.precio}"
        end
        puts "--------------------------------"
        puts "Total a pagar es: \t $#{suma_total}"
    end
        
    def suma_total
        precios = self.productos.map do |producto|
            producto.precio

        end
        return precios.sum
    end
    

end