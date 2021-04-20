require 'yaml'

MESSAGES = YAML.load_file('17_mortgage_calculator.yml')

def not_empty?(str)
  str.delete(' ') != ''
end

def integer?(str)
  str.to_i.to_s == str
end

def float?(str)
  str.to_f.to_s == str
end

def valid_loan_amount?(str)
  not_empty?(str) && integer?(str) && str.to_i.positive?
end

def valid_apr?(str)
  not_empty?(str) && (integer?(str) || float?(str)) &&
    (str.to_f.positive? || str.to_f.zero?)
end

def valid_year?(str)
  not_empty?(str) && integer?(str) && (str.to_i.positive? || str.to_i.zero?)
end

def valid_month?(str)
  not_empty?(str) && integer?(str) && str.to_i.between?(0, 11)
end

def format_and_prompt(message)
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

def get_loan_amount
  loop do
    format_and_prompt(MESSAGES[:get_loan_amount])
    loan_amount = gets.chomp.delete("$").delete(",")
    return loan_amount.to_f if valid_loan_amount?(loan_amount)
    format_and_prompt(MESSAGES[:get_loan_amount_error])
  end
end

def get_apr
  loop do
    format_and_prompt(MESSAGES[:get_apr])
    apr = gets.chomp.delete("%")
    return apr.to_f * 0.01 if valid_apr?(apr)
    format_and_prompt(MESSAGES[:get_apr_error])
  end
end

def get_year
  loop do
    format_and_prompt(MESSAGES[:get_year])
    year = gets.chomp
    return year.to_i if valid_year?(year)
    format_and_prompt(MESSAGES[:get_year_error])
  end
end

def get_month
  loop do
    format_and_prompt(MESSAGES[:get_month])
    month = gets.chomp
    return month.to_i if valid_month?(month)
    format_and_prompt(MESSAGES[:get_month_error])
  end
end

def get_year_month
  loop do
    year = get_year
    month = get_month
    return year, month unless year == month && year == 0
    format_and_prompt(MESSAGES[:get_year_month_error])
  end
end

def get_repeat
  loop do
    format_and_prompt(MESSAGES[:get_repeat])
    repeat = gets.chomp.downcase
    if repeat == "yes" || repeat == "y"
      return true
    elsif repeat == "no" || repeat == "n"
      return false
    end
    format_and_prompt(MESSAGES[:get_repeat_error])
  end
end

def calc_monthly_payment(loan_amount, monthly_interest, total_months)
  if monthly_interest == 0
    loan_amount / total_months
  else
    loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**\
      (-total_months)))
  end
end

loop do
  system("clear") || system("cls")
  format_and_prompt(MESSAGES[:welcome])

  loan_amount = get_loan_amount # float
  apr = get_apr # float (e.g., 0.06 for 6%)
  year, month = get_year_month # int

  monthly_interest = apr / 12
  total_months = year * 12 + month
  monthly_payment = calc_monthly_payment(loan_amount,
                                         monthly_interest,
                                         total_months)

  output_message = "Results for a loan of #{format_cash(loan_amount)} "\
  "at #{format_percent(apr)} APR over #{year} year(s) and #{month} month(s):\n"\
  "Monthly interest: #{format_percent(monthly_interest)}\n"\
  "Number of payments: #{total_months}\n"\
  "Monthly payment: #{format_cash(monthly_payment)}\n"

  format_and_prompt(output_message)

  break unless get_repeat
end

format_and_prompt(MESSAGES[:thank_you])
