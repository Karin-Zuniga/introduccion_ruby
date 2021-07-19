class Cliente
    #Datos - variables - atributos
    @nombre
    @nombre
    attr_accessor :correo
    attr_accessor :celular
    attr_accessor :direccion
    attr_accessor :metodo_pago_favorito
    attr_accessor :mascota
    #acciones - metodos
    def nombre= (valor_del_nombre)
        @nombre = valor_del_nombre
    end
    def nombre
        return @nombre
    end
    
    def mostrar_info
        puts "Mi nombre de cliente es #{@nombre} y mi correo es #{@correo}"
    end
    def mostrar_mascotas
        puts "nombre: #{@nombre} y mi mascota: #{@mascota.nombre}"
    end
end