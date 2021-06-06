p ['ruby', 'java', 'perl', 'php', 'javascript'].map { |s| s.upcase }

p ['ruby', 'java', 'perl', 'php', 'javascript'].map(&:upcase)

p [4, 12, 15, 19, 21, 25, 30].select { |n| n.odd? }

p [4, 12, 15, 19, 21, 25, 30].select(&:odd?)

# 以下の場合は省略形使用不可
p [4, 12, 15, 19, 21, 25, 30].select { |n| n % 5 == 0 }

p [4, 12, 15, 19, 21, 25, 30].map { |n| n.to_s(16) }

def array
  [4, 12, 15, 19, 21, 25, 30].map do |n|
    m = n * 3
    m.to_s
  end
end
p array

git commit -m "Ruby入門 第4-4章終了"