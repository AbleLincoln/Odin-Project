puts 1+2

puts "How many seconds are in a ____?"
time = gets.chomp
case time
  when "day" then puts 24 * 60 * 60  
  when "week" then puts 7 * 24 * 60 * 60
  when "month" then puts 30 * 24 * 60 * 60
  when "year" then puts 365 * 24 * 60 * 60
end