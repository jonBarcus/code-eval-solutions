require 'pry'

# this opens the test file

my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  # splitting the line in to an array
  original_array = line.split

  new_array = []

  count = original_array.length

  while count > 0
    new_array << original_array.pop
    count -= 1
    binding.pry
  end


end
