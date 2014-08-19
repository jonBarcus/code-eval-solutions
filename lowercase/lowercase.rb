my_file = File.open(ARGV.first, 'r')

my_file.each do |line|
  puts line.downcase
end
