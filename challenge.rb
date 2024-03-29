## Initial state
arr = [1, 1, 1, 1, 2, 1, 1, 4, 1, 4, 3, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 3, 1, 1, 1, 5, 1, 3, 1, 4, 1, 2, 1, 1, 5, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1, 3, 4, 1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 4, 1, 1, 1, 1, 3, 5, 1, 1, 2, 1, 1, 1, 1,
       4, 4, 1, 1, 1, 4, 1, 1, 4, 2, 4, 4, 5, 1, 1, 1, 1, 2, 3, 1, 1, 4, 1, 5, 1, 1, 1, 3, 1, 1, 1, 1, 5, 5, 1, 2, 2,
       2, 2, 1, 1, 2, 1, 1, 1, 1, 1, 3, 1, 1, 1, 2, 3, 1, 5, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 3, 2, 1, 1, 1, 4, 3, 1, 1,
       4, 1, 5, 4, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 4, 5, 1, 1, 1, 1, 5, 4, 1, 3, 1, 1, 1, 1, 4, 3, 3, 3, 1,
       2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 5, 1, 3, 1, 4, 3, 1, 3, 1, 5, 1, 1, 1, 1, 3, 1, 5, 1, 2, 4, 1, 1, 4,
       1, 4, 4, 2, 1, 2, 1, 3, 3, 1, 4, 4, 1, 1, 3, 4, 1, 1, 1, 2, 5, 2, 5, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 3, 1, 5, 1,
       2, 1, 1, 1, 1, 1, 4, 4, 1, 1, 1, 5, 1, 1, 5, 1, 2, 1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 2, 4, 1, 1, 2,
       1, 1, 3, 2]

# number of days to reproduce
days = 80
# n = 256

puts "Estado inicial : #{arr.join(',')}"

def number_of_aliens(arr, days)
  days.times do
    arr = arr.map { |a| a - 1 }

    next unless to_reproduce?(arr)

    news = 0
    arr.each_with_index do |item, index|
      if item == -1
        arr[index] = 6
        news += 1
      end
    end
    arr += [8] * news
  end

  puts "Luego de #{days} dias : #{arr.length} aliens"
end

def to_reproduce?(arr)
  arr.any? { |e| e == -1 }
end

## For 80 days
number_of_aliens(arr, days)
