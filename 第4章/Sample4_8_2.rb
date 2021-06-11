fruits = ['apple', 'kiwi', 'lemon', 'cherry', 'banana']
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
# ["0: apple", "1: kiwi", "2: lemon", "3: cherry", "4: banana"]

p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.even? }
# ["kiwi", "lemon", "cherry"]

fruits = ['apple', 'kiwi', 'lemon', 'cherry', 'banana']
p fruits.each
# #<Enumerator: ["apple", "kiwi", "lemon", "cherry", "banana"]:each>

p fruits.map
# #<Enumerator: ["apple", "kiwi", "lemon", "cherry", "banana"]:map>

p fruits.delete_if
# #<Enumerator: ["apple", "kiwi", "lemon", "cherry", "banana"]:delete_if>