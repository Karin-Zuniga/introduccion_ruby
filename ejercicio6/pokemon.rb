require 'faker'

class Pokemon
    attr_accessor :nombre # string / cadena
    attr_accessor :vida #numeros 50..100
    attr_accessor :ataque #numeros 0..50

    def initialize
        @nombre = Faker::Games::Pokemon.name
        @vida   = Faker::Number.between(from: 50, to: 100)
        @ataque = Faker::Number.between(from: 1, to: 50)
    end


    def atacar (enemigo)
        enemigo.vida -= self.ataque
        #enemigo.vida -= @ataque
        puts "#{self.nombre} ataca a #{enemigo.nombre} con #{self.ataque} ATK"
    end

    def mostrar
        return "#{@nombre}: #{@vida}HP "
    end
end