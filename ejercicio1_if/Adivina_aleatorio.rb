num = 101
prng = Random.new
n = prng.rand(1..100)




while n != num
    puts "Adivina un numero del 1 al 100"
    num = gets.to_i
    if n > num
        puts "Muy abajo "
        puts "Intentalo otra vez!"
    elsif n < num
        puts "Muy alto"
        puts "Intentalo otra vez!"
    end


    
end
puts "Adivinaste!"