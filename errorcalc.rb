puts "Quantas medidas serão tomadas?"
medidas = gets.chomp.to_i

puts "Insira o erro instrumental"
inst_offset = gets.chomp.to_f

valores = Array.new(medidas)

#Obtem os valores
i = 0
sum = 0
medidas.times do
    puts "Insira o valor #{i+1}"
    valores[i] = gets.chomp.to_f
    sum += valores[i]
    i += 1
end

#Calcula a media das medidas
avg = (sum/medidas).to_f

#Calcula o desvio padrão
std_offset = 0.0
valores.each do |x|
    std_offset += ((avg - x) ** 2)
end

std_offset /= (medidas - 1)
std_offset =  Math.sqrt(std_offset)

#Calcula o desvio estatístico
estat_offset = std_offset /  Math.sqrt(medidas)

#Calcula o erro total
error = Math.sqrt((estat_offset ** 2) + (inst_offset ** 2))

puts "Valores obtidos: "
puts "Erro instrumental: #{inst_offset}"
puts "Média dos valores: #{avg}"
puts "Desvio padrão: #{std_offset.round(5)}"
puts "Erro estatístico: #{estat_offset.round(5)}"
puts "Erro total: #{error.round(5)}"
