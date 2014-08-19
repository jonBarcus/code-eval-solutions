# this opens the test file
my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  if line.length == 1
    puts ""
  end

  # splitting the line in to an array
  original_array = line.split

  # creates a new array variable so we can
  # add contents
  new_array = []

  # this variable will take the length of the array
  # for the purpose of looping through it
  count = original_array.length

  # this loop will add elements to a new array
  while count > 0
    new_array << original_array.pop
    count -= 1
  end

  # this will be the new string created from the new_array
  new_string = new_array.join(" ")

  # outputs the string without the end space
  puts new_string.chomp

end
