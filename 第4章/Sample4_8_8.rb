names = ['佐藤', '鈴木', '髙橋']
p san_names = names.map { |name| "#{name}さん" }
# ["佐藤さん", "鈴木さん", "髙橋さん"]

p san_names.join('と')
# "佐藤さんと鈴木さんと髙橋さん"

p names.map { |name| "#{name}さん" }.join('と')
# "佐藤さんと鈴木さんと髙橋さん"

def calling
  names = ['佐藤', '鈴木', '髙橋']
  names.map do |name|
    "#{name}さん"
  end.join('と')
end
p calling
# "佐藤さんと鈴木さんと髙橋さん"