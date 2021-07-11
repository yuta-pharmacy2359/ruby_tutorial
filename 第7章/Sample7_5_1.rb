class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_hamada
    name = '浜田'
  end

  def rename_to_matsumoto
    self.name = '松本'
  end

  def rename_to_endo
    @name = '遠藤'
  end

end

user = User.new('田中')

user.rename_to_hamada
puts user.name
# 田中

user.rename_to_matsumoto
puts user.name
# 松本

user.rename_to_endo
puts user.name
# 遠藤