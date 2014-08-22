require 'pry'

# this opens the test file
my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  number = line.to_i

  roman_numeral = ""

  while number > 0
    if number / 1000 >= 1
      roman_numeral << ("M" * (number / 1000))
      number = number % 1000
    elsif number / 900 == 1
      roman_numeral << "CM"
      number = number % 900
    elsif number / 500 >= 1
      roman_numeral << "D"
      number = number % 500
    elsif number / 400 == 1
      roman_numeral << "CD"
      number = number % 400
    elsif number / 100 >= 1
      roman_numeral << ("C" * (number / 100))
      number = number % 100
    elsif number / 90 == 1
      roman_numeral << "XC"
      number = number % 90
    elsif number / 50 >= 1
      roman_numeral << "L"
      number = number % 50
    elsif number /10 >= 1
      roman_numeral << ("X" * (number / 10))
      number = number % 10
    elsif number / 9 == 1
      roman_numeral << "IX"
      number = number % 9
    elsif number / 5 >= 1
      roman_numeral << "V"
      number = number % 5
    elsif number == 4
      roman_numeral << "IV"
      number = 0
    else
      roman_numeral << ("I" * number)
      number = 0
    end
  end

  puts roman_numeral
end
