fruits = ['apple', 'kiwi', 'lemon', 'cherry', 'banana']
p fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
=begin
1: apple
2: kiwi
3: lemon
4: cherry
5: banana
["apple", "kiwi", "lemon", "cherry", "banana"]
=end

p fruits.map.with_index(100) { |fruit, i| "#{i}: #{fruit}" }
# ["100: apple", "101: kiwi", "102: lemon", "103: cherry", "104: banana"]