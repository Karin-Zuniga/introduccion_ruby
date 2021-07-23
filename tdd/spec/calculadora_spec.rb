require_relative "../lib/calculadora"

RSpec.describe Calculadora do


    context "sumar numeros" do


        it "cuando son iguales" do
            
            #configuracion
            calc = Calculadora.new
            
            #ejecucion
            resultado = calc.sumar(2, 2)

            #expectativa
            expect(resultado).to eq (4)
        end



        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.sumar(2, -2)

            #expectativa
            expect(resultado).to eq (0)

        end

        it "cuando los dos son positivos" do
            calc = Calculadora.new
            resultado = calc.sumar(2, 8)

            #expectativa
            expect(resultado).to eq (10)
        end

        it "cuando los dos son negativos" do
        calc = Calculadora.new
        resultado = calc.sumar(-2, -8)
        expect(resultado).to eq (-10)
        end
    end
        

    describe "restar numeros" do

        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.restar(2,2)
            expect(resultado).to eq (0)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.restar(2,-2)
            expect(resultado).to eq (4)
        end


        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.restar(-2,-3)
            expect(resultado).to eq (1)
        end

        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.restar(9,8)
            expect(resultado).to eq (1)
        end

    end

    context "multiplicar numeros" do


        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.multiplicar(8,8)
            expect(resultado).to eq (64)
        end


        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.multiplicar(8,-7)
            expect(resultado).to eq (-56)
        end

        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(-5,-6)
            expect(resultado).to eq (30)
        end

        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(2,8)
            expect(resultado).to eq (16)
        end
    end

    context "dividir numeros" do
        
        it "cuando son iguales"  do
            calc = Calculadora.new
            resultado = calc.dividir(8,8)
            expect(resultado).to eq (1)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.dividir(9,-3)
            expect(resultado).to eq (-3)
        end

        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.dividir(-12,-4)
            expect(resultado).to eq (3)
        end

        it "cuando son positivos" do
            calc = Calculadora.new
            resultado = calc.dividir(8,2)
            expect(resultado).to eq (4)
        end

        it "cuando se divide por 0" do
            calc = Calculadora.new
            resultado = calc.dividir(2,0)
            expect(resultado).to eq ("No se puede dividir entre 0")

        end

    end
    
        context "datos invalidos" do
            it "cuando uno es una letra" do
                calc = Calculadora.new
                resultado = calc.sumar(2,"b")
                expect(resultado).to eq ("solo operaciones con numeros")
            end
            it "cuando enviamos signos en vez de numeros" do
                calc = Calculadora.new
                resultado = calc.sumar("%","$")
                expect(resultado).to eq ("solo operaciones con numeros")
            end

        end


end