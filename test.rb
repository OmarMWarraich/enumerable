require_relative 'my_list'

# Create our list

list = MyList.new(1, 2, 3, 4)
puts list

# Test all?

puts(list.all? { |i| i < 5 })

puts(list.all? { |i| i < 4 })

puts(list.all? { |i| i < 3 })

# Test any?

puts(list.any? { |i| i < 5 })

puts(list.any? { |i| i < 4 })

puts(list.any? { |i| i < 3 })

# Test filter

puts(list.filter { |i| i < 5 })

puts(list.filter { |i| i < 4 })

puts(list.filter { |i| i < 3 })

puts(list.filter { [i] if i.even? })

puts(list.filter { [i] if i.odd? })
