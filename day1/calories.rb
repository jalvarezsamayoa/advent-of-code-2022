# day1/calories.rb
# https://adventofcode.com/2022/day/1

i = 0
elves = []

File.readlines('input.txt').each do |line|
  if line.to_i.zero?
    i += 1
  elsif elves[i].nil?
    elves << line.to_i
  else
    elves[i] = elves[i] + line.to_i
  end
end

puts "Top calories are: #{elves.sort.last}"

# https://adventofcode.com/2022/day/1#part2
top_three = elves.sort.last(3)
puts "Top 3: #{top_three}"

puts top_three.inject(0, :+)
