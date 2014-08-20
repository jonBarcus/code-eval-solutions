# this opens the test file
my_file = File.open(ARGV.first, 'r')

# outputs the size of the file in bytes
puts my_file.size
