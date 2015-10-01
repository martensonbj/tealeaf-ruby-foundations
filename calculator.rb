Kernel.puts("Welcome to Calculator!")

Kernel.puts "Choose a number"
number1 = Kernel.gets.chomp
Kernel.puts "Choose a second number"
number2 = Kernel.gets.chomp
Kernel.puts "Choose an operator: 1) add 2) subtract 3) divide 4) multiply"
operator = Kernel.gets.chomp

if operator == "1"
  result = number1.to_i + number2.to_i
elsif operator == "2"
  result = number1.to_i - number2.to_i
elsif operator == "3"
  result = number1.to_f / number2.to_f
else
  result = number1.to_i * number2.to_i
end

Kernel.puts("The result is #{result}")