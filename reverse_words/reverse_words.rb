require 'pry'

# this opens the test file

my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  new_array = line.split
  binding.pry
end
