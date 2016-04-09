total = 0

0.step(999, 3) do |num|
  total += num
  puts total
end

0.step(999, 5) do |num|
  unless num % 3 == 0
    total += num
    puts total
  end
end

