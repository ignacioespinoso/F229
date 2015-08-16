puts "Quantas medidas serão tomadas?"
medidas = gets.chomp.to_i

puts "Quantas vezes essa medição será feita?"
vezes = gets.chomp.to_i

valores = Array.new(medidas) { Array.new(vezes, 0.0) }

i = 0
medidas.times do
    j = 0
    puts "Medindo pela #{i+1} vez"
    vezes.times do
        puts "Insira o valor #{j+1}"
        valores[i][j] = gets.chomp.to_f
        j += 1
    end
    i += 1
end



i = 0
medidas.times do
    j = 0
    media = 0.0 #Media dos valores
    sqrsum = 0.0 #Quadrado dos valores
    print ("#{i+1}a MEDIÇÃO: ")
    vezes.times do
        print "#{valores[i][j]}||"
        media += valores[i][j]
        sqrsum += valores[i][j] ** 2
        j += 1
    end
    media /= (j-1)
    puts "MÉDIA: #{media.round(3)}, SOMATORIO QUADRADOS #{sqrsum.round(3)}"
    i += 1
end
