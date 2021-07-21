require_relative 'generador_palabra'

class Juego
    attr_reader :palabra_secreta
    attr_reader :vidas
    def initialize
        @palabra_secreta = GeneradorPalabra.generar
        @vidas = 5
    end
    def comenzar
        puts "Bienvenido al ahorcado. Adivina la palabra"
        guiones = cambiar_letras_a_guiones_1
        puts guiones
        while guiones.gsub(" ", "") != palabra_secreta and @vidas >0
            puts "vidas: #{@vidas}"
            letra = gets.chomp.downcase
            letra_encontrada = false

            for posicion_letra in 0..palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    guiones[posicion_letra*2] = letra
                    letra_encontrada = true
                end

            end
            if letra_encontrada == false
                @vidas -=1

            end

            print guiones
        end
        if @vidas > 0
            puts "GANASTE!"
        else puts "AHORCADO!"
        end
        puts "La palabra era #{@palabra_secreta}"
    end
    private #metodos privados
    def cambiar_letras_a_guiones_1
        "_ " * @palabra_secreta.length
    end
    # def cambiar_letras_a_guiones_2
    #     for i in 0..@palabra_secreta.length-1
    #         print "_ "
    #     end 
    # end
end