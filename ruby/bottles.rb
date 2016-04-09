beers = 99

while beers > 0
  puts beers.to_s + " bottles of beer on the wall"
  puts beers.to_s + " bottles of beer"
  puts "Take one down and pass it around"
  beers -= 1
  puts beers.to_s + " bottles of beer on the wall!"
  puts " "
end

puts "No more bottles of beer on the wall!"