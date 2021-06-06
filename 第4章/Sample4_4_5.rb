p ['ruby', 'java', 'perl', 'php', 'javascript'].map { |s| s.upcase }
#["RUBY", "JAVA", "PERL", "PHP", "JAVASCRIPT"]

p ['ruby', 'java', 'perl', 'php', 'javascript'].map(&:upcase)
#["RUBY", "JAVA", "PERL", "PHP", "JAVASCRIPT"]

p [4, 12, 15, 19, 21, 25, 30].select { |n| n.odd? }
#[15, 19, 21, 25]

p [4, 12, 15, 19, 21, 25, 30].select(&:odd?)
#[15, 19, 21, 25]

# 以下の場合は省略形使用不可
p [4, 12, 15, 19, 21, 25, 30].select { |n| n % 5 == 0 }
#[15, 25, 30]

p [4, 12, 15, 19, 21, 25, 30].map { |n| n.to_s(16) }
#["4", "c", "f", "13", "15", "19", "1e"]

def array
  [4, 12, 15, 19, 21, 25, 30].map do |n|
    m = n * 3
    m.to_s
  end
end
p array
#["12", "36", "45", "57", "63", "75", "90"]