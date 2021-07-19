class Mascota
    
    attr_accessor :nombre
    attr_accessor :peso
    attr_accessor :edad
    attr_accessor :raza
    #attr_accessor :cliente
    
    def mostrar_datos
        puts "Nombre: #{@nombre} \t raza: #{@raza} \t Edad: #{@edad}\t Peso: #{@peso}" 
        
    end
end