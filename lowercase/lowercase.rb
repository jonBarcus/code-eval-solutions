# this opens the test file
my_file = File.open(ARGV.first, 'r')

# this will run through each line and
# run DOWNCASE on the string and output the
# downcased string
my_file.each do |line|
  puts line.downcase
end
