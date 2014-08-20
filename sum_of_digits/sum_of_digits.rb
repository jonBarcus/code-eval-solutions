# this opens the test file
my_file = File.open(ARGV.first, 'r')

# this will loop through the file and run the following
# code on each line
my_file.each do |line|
  # this removes the \n at the end of the line
  # and splits the characters creating a new_line array
  new_line = line.chomp.split("")
  # sum is required belowed as it will be the value that
  # is outputted by the program
  sum = 0

  # this iterates through the array and adds the contents
  new_line.each do |number|
    sum = sum += number.to_i
  end

  # outputs the sum
  puts sum
end
