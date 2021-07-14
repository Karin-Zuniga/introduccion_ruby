num=101
n = 52


while n != num
    puts "Adivina un numero del 1 al 100"
    num = gets.to_i
    if n > num
        puts "Muy abajo ",num
        puts "Intentalo otra vez!"
    elsif n < num
        puts "Muy alto", num
        puts "Intentalo otra vez!"
    end


    
end
puts "Adivinaste!"