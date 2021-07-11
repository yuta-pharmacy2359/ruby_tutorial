class Foo
  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
# クラス構文直下のself: Foo

puts Foo.bar
# クラスメソッド内のself: Foo

foo = Foo.new
puts foo.baz
# インスタンスメソッド内のself: #<Foo:0x00007ffe3a1352c8>