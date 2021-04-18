# Basic validation methods
def not_empty?(str)
  str.delete(' ') != ''
end

def integer?(str)
  str.to_i.to_s == str
end

def float?(str)
  str.to_f.to_s == str
end

# Consolidates validation methods for loan, interest, year, month
def valid_loan_amount?(str)
  not_empty?(str) && integer?(str) && str.to_i.positive?
end

def valid_apr?(str)
  not_empty?(str) && (integer?(str) || float?(str)) && str.to_f.positive?
end

def valid_year?(str)
  not_empty?(str) && integer?(str) && (str.to_i.positive? || str.to_i.zero?)
end

def valid_month?(str)
  not_empty?(str) && integer?(str) && str.to_i.between?(0, 11)
end

# Prompt and format methods
def prompt(message)
  message.split("\n").each_with_index do |line, idx|
    idx == 0 ? (puts "=> #{line}") : (puts "=>   #{line}")
  end
end

def format_cash(num)
  "$#{format('%.2f', num)}"
end

def format_percent(num)
  "#{format('%.3f', num * 100)}%"
end

# Methods to get user input
def get_loan_amount
  loop do
    prompt("Enter the total loan amount to the nearest dollar (e.g., 100,000):")
    loan_amount = gets.chomp.delete("$").delete(",")
    return loan_amount.to_i if valid_loan_amount?(loan_amount)
    prompt("Please enter a positive, non-zero whole number.")
  end
end

def get_apr
  loop do
    prompt("Enter the APR (e.g., 6.13%);")
    apr = gets.chomp.delete("%")
    return apr.to_f * 0.01 if valid_apr?(apr)
    prompt("Please enter a positive, non-zero number.")
  end
end

def get_year
  loop do
    prompt("Enter the loan duration, starting with the number of years:")
    year = gets.chomp
    return year.to_i if valid_year?(year)
    prompt("Please enter a non-negative whole number.")
  end
end

def get_month
  loop do
    prompt("Now enter the number of month:")
    month = gets.chomp
    return month.to_i if valid_month?(month)
    prompt("Please enter a valid whole number between 0 and 11.")
  end
end

def get_repeat
  loop do
    prompt("Would you like to run the program again? (Y/N)")
    repeat = gets.chomp.downcase
    if repeat == "yes" || repeat == "y"
      return true
    elsif repeat == "no" || repeat == "n"
      return false
    end
    prompt("Please enter Y/N.")
  end
end

# Consolidates month and year user input methods for duration
def get_total_months
  loop do
    year = get_year
    month = get_month
    total_months = year * 12 + month
    return year, month, total_months if total_months > 0
    prompt("Please enter a valid loan duration (i.e., not 0 years, 0 months).")
  end
end

# Main mortgage calculator loop
loop do
  system("clear") || system("cls")
  prompt("Welcome to the mortgage calculator!")

  loan_amount = get_loan_amount # int
  apr = get_apr # float (e.g., 0.06 for 6%)
  year, month, total_months = get_total_months # int

  monthly_interest = apr / 12
  monthly_payment = loan_amount * (monthly_interest / \
                    (1 - (1 + monthly_interest)**(-total_months)))

  output_message = "Results for a loan of #{format_cash(loan_amount)} "\
  "at #{format_percent(apr)} APR over #{year} year(s) and #{month} month(s):\n"\
  "Monthly interest: #{format_percent(monthly_interest)}\n"\
  "Number of payments: #{total_months}\n"\
  "Monthly payment: #{format_cash(monthly_payment)}\n"

  prompt(output_message)

  break unless get_repeat
end

prompt("Thank you for using the mortgage calculator!")
