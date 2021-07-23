class Calculadora
    def sumar(a,b)
        if a.class == Integer and b.class == Integer
            c = a + b
            return c
        else 
            return "solo operaciones con numeros"
        end

    end

    def restar(a,b)
        c = a - b
        return c
    end

    def multiplicar (a,b)
        c= a * b
        return c

    end

    def dividir(a,b)
        if b == 0 
            return "No se puede dividir entre 0"
        else       
            c = a / b
            return c
        end
    end
    

end