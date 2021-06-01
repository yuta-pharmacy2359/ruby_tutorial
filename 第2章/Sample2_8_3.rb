puts "Line1,
Line2"

puts 'Line3,
Line4'

a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a

<<HTML
<div>
  <img src="sample.jpg" >
</div>
HTML

def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと内部文字列のインデントが無視されます。
  TEXT
end
puts some_method

name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん、
以下のメッセージをご覧ください。
TEXT
puts a

b = <<'TEXT'
ようこそ、#{name}さん、
以下のメッセージをご覧ください。
TEXT
puts b

c = <<"TEXT"
ようこそ、#{name}さん、
以下のメッセージをご覧ください。
TEXT
puts c

d = 'Ruby'
d.prepend(<<TEXT)
Java
Python
TEXT
puts d

e = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts e
