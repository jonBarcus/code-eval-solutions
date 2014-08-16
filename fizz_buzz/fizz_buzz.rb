# this opens the test file
my_file = File.open(ARGV.first, 'r')

# test_case sets the first call to 1
# as there is a 20 test case constrait
test_case = 1

while test_case <= 20

  my_file.each do |line|

    new_array = line.split
    number = 0
    number_array = []
    # this converts the strings in new_array to integers in number_array
    # which will then be used below
      new_array.each do |x|
        number_array.slice(number)
        number_array << x.to_i
        number += 1
      end


    # the following IF confirms that A is in range [1, 20], B is in range [1, 20],
    # and that N is in range [1, 20]
    if (number_array[0] > 0 && number_array[0] <= 20) &&
      (number_array[1] > 0 && number_array[1] <= 20) &&
      (number_array[2] > 20 && number_array[2] <= 100)

      output_string = ""

      (1..number_array[2]).each do |x|
        if x % number_array[0] == 0 && x % number_array[1] == 0
          output_string << "FB "
        elsif x % number_array[0] == 0
          output_string << "F "
        elsif x % number_array[1] == 0
          output_string << "B "
        else
          output_string << "#{x} "
        end
      end
      puts output_string.chop
    end

  end

test_case += 1

end
