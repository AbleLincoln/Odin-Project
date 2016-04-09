rows = gets.chomp.to_i

row = [0, 1, 0]
row_next = []
centerage = 100

puts [0].join(" ").center(centerage)
puts [0, 0].join(" ").center(centerage)
puts row.join(" ").center(centerage)
rows.times do
  row_next[0] = 0
  row.each_cons(2) do |num, num_next|
    row_next.push(num + num_next)
  end
  row_next.push(0)
  row = row_next.dup
  puts row.join(" ").center(centerage)
  row_next.clear
end