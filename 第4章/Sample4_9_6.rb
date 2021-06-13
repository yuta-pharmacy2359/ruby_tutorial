=begin
while true
  # 無限ループ用処理
end
=end

=begin
loop do
  # 無限ループ用処理
end
=end


def loop_method
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  loop do
    n = numbers.sample
    puts n
    break if n == 5
  end
end
p loop_method

def loop_method2
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  while true
    n = numbers.sample
    puts n
    break if n == 5
  end
end
p loop_method2

p (3..7).map { |n| n * 8 }
# [24, 32, 40, 48, 56]

p 2.upto(40).select { |n| n % 5 == 0 }
# [5, 10, 15, 20, 25, 30, 35, 40]

p [3, 6, 9].class
# Array

p Array.include?(Enumerable)
# true

p (1..5).class
# Range

p Range.include?(Enumerable)
# true

p 1.upto(9).class
# Enumerator

p Enumerator.include?(Enumerable)
# true