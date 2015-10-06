def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt('Welcome to the Mortgage Calculator!')

  #GET LOAN AMOUNT
  prompt('Please enter a loan amount:')
  loan_amt = ''
  loop do
    loan_amt = Kernel.gets.chomp

    if loan_amt.empty?() || loan_amt.to_f < 0
      prompt('Please enter a positive number')
    else
      break
    end
  end

  #GET APR
  #BREAKING HERE ************ ???
  prompt('Please enter the annual percentage rate of interest:')
  prompt('For example: 5 for 5%, 2.5 for 2.5% etc')
  apr_amt = ''
  loop do
    apr_amt = Kernel.gets.chomp

    if apr_amt.empty?() || apr_amt.to_f() < 0
      prompt('Please enter a positive number')
    else
      break
    end
  end

  #GET DURATION
  prompt('How long would you like your loan to be for? (In Years)')
  yearly_dur_amt = ''
  loop do
    yearly_dur_amt = Kernel.gets.chomp

    if yearly_dur_amt.empty?() || yearly_dur_amt.to_i < 0
      prompt('Please enter a positive number')
    else
      break
    end

  end

  #CALCULATE MONTHLY INTEREST RATE
  annual_apr_amt = apr_amt.to_f/100
  monthly_apr_amt = annual_apr_amt/12

  #CALCULATE DURATION OF LOAN IN MONTHS
  monthly_dur_amt = yearly_dur_amt.to_i * 12


  result =  loan_amt.to_f *
        (monthly_apr_amt/
        (1 - (1 + monthly_apr_amt)**-monthly_dur_amt.to_i))

  prompt("Your monthly payment is: $#{format('%02.2f', result)}")

  prompt("Would you like to do another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt('Thank you! Goodbye!')







