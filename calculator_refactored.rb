def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Dividing'
  when '4'
    'Multiplying'
  end
end

prompt('Welcome to Calculator! Enter your name:')

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?()
    prompt("Make sure to enter a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do

  number1 = ''
  loop do
    prompt('Choose a number')
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("That doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt('Choose a second number')
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("That doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you lile to perform?
    1) add
    2) subtract
    3) divide
    4) multiply
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_f / number2.to_f
            when '4'
              number1.to_i * number2.to_i
            end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to continue again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")\n