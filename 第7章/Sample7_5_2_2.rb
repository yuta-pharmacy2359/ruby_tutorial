class Foo
  def self.bar
    self.baz
  end

  def baz
    self.bar
  end
end

=begin
puts Foo.bar
# `bar': undefined method `baz' for Foo:Class (NoMethodError) Did you mean?  bar
=end

=begin
foo = Foo.new
puts foo.baz
# `baz': undefined method `bar' for #<Foo:0x00007f9930885650> (NoMethodError) Did you mean?  baz
=end