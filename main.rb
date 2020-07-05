require_relative "lib/pascals_triangle"

begin
  print "How many rows would you like to show in Pascal's triangle? "
  input_number = Integer(gets.chomp)
rescue
  puts "Use a whole number please(an integer)"
  retry
end
puts "Pascal's triangle with #{input_number} is: "
pt = PascalsTriangle.new
(input_number + 1).times { |rows|
  p pt.triangle(rows)
}
