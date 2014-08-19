require 'pry'

# this opens the test file

my_file = File.open(ARGV.first, 'r')

new_array = []

my_file.each do |line|
  binding.pry
end
