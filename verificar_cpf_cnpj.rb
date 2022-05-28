require 'cpf_cnpj'

while true
    puts 'Deseja saber se um CPF ou CNPJ é válido?'
    puts '1 - CPF'
    puts '2 - CNPJ'
    print 'Escolha um: '

    user = gets.chomp.to_i

    if user == 1
        print 'Digite o seu CPF: '
        number_cpf = gets.chomp.to_i
        
        cpf = CPF.new(number_cpf)
        puts "CPF inserido: #{cpf.formatted}"
        puts "CPF válido: #{CPF.valid?(number_cpf, strict: true)}"
        break
    elsif user == 2
        print 'Digite o seu CNPJ: '
        number_cnpj = gets.chomp.to_i

        cnpj = CNPJ.new(number_cnpj)
        puts "CNPJ inserido: #{cnpj.formatted}"
        puts "CNPJ válido: #{CNPJ.valid?(number_cnpj, strict: true)}"
        break
    else
        puts 'Opção incorreta! por favor tente novamente.'
    end
end
