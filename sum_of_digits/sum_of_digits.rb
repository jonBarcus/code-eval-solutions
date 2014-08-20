# this opens the test file
my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  new_line = line.chomp.split("")
  sum = 0

  new_line.each do |number|
    sum = sum += number.to_i
  end

  puts sum
end
