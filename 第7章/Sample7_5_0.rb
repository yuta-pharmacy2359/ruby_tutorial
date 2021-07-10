class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "こんにちは。#{name}さん。"
  end

  def calling
    "#{name}さん、お電話です。"
  end

  def introduction
    "私の名前は#{name}です。"
  end
end

user = User.new('浜田')

puts user.hello
# こんにちは。浜田さん。

puts user.calling
# 浜田さん、お電話です。

puts user.introduction
# 私の名前は浜田です。
