module Greeter
  def hello
    'Hola!'
  end
end

=begin
greeter = Greeter.new
# Sample8_2_2.rb:7:in `<main>': undefined method `new' for Greeter:Module (NoMethodError)
=end

=begin
module Greeter2 < Greeter
end
# Sample8_2_2.rb:12: syntax error, unexpected '<' module Greeter2 < Greeter
=end