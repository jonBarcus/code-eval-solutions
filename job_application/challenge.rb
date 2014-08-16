require 'pry'

# Created to simply check to make sure that a character is an integer
class Object
  def is_number?
    self.to_i.to_s == self.to_s
  end
end

# open the file to be tested
my_file = File.open('test_file.txt', 'r')

# this method takes the file that was opened above and reads each line
# and determines what character to output based on the number attached to
# the end of the line
def create_arrays(file)
  file.each do |line|
    new_string = line.split
    if new_string.last.is_number?
      # array_location removes the number character and converts it to an
      # integer
      # this variable will then be subtracted by 1 to determine the correct
      # index number later
      array_location = new_string.pop.to_i
      new_string.reverse!
      if (array_location) <= new_string.length
        puts new_string[array_location - 1]
      end
    end
  end
end

create_arrays(my_file)
