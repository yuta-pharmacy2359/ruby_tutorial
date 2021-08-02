module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'MacBook_Pro'

=begin
p s.log('iPad_Pro')
`<main>': undefined method `log' for "MacBook_Pro":String (NoMethodError)
=end

s.extend(Loggable)

p s.log('iPad_Pro')
# [LOG] iPad_Pro