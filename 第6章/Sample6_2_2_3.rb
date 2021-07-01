text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
	
hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')
=begin

def hello(name)
  puts "Hello, #{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')

=end


text2 = <<-TEXT
Lorem ipsum dolor sit amet.
Vestibulum luctus est ut mauris tempor tincidunt.
         Suspendisse eget metus
      Curabitur nec urna eget ligula accumsan congue.
TEXT

puts text2.gsub(/^[ \t]+/, '')
=begin

Lorem ipsum dolor sit amet.
Vestibulum luctus est ut mauris tempor tincidunt.
Suspendisse eget metus
Curabitur nec urna eget ligula accumsan congue.

=end


text3 = <<-TEXT
{
  japan:	'yen',
  america:'dollar',
  italy:     'euro'
}
TEXT

puts text3.gsub(/:[ \t]*/, ': ')
=begin

{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}

=end

puts text3.gsub(/:\s*/, ': ')
=begin

{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}

=end

text4 = <<-TEXT
name,email
alice,alice@example.com
bob,bob@example.com
TEXT

puts text4.gsub(',', '  ')
=begin

name  email
alice  alice@example.com
bob  bob@example.com

=end

text5 = <<-TEXT
name  email
alice  alice@example.com
bob  bob@example.com
TEXT

puts text5.gsub('  ', ',')
=begin

name,email
alice,alice@example.com
bob,bob@example.com

=end

text6 = <<-TEXT
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:46 heroku/api:  Starting process ...
Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
Feb 14 07:36:50 heroku/scheduler.7625:  State ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
TEXT

puts text6.gsub(/^.+heroku\/(api|scheduler).+$/, '')
=begin

Feb 14 07:33:02 app/web.1:  Completed 302 Found ...



Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...

=end

puts text6.gsub(/^.+heroku\/(api|scheduler).+\n/, '')
=begin

Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...

=end

text7 = <<-TEXT
ABCDEF
!@#$%^&*
TEXT

p text7.scan(/[^AB]/)
# ["C", "D", "E", "F", "\n", "!", "@", "#", "$", "%", "^", "&", "*", "\n"]

p text7.scan(/[AB^]/)
# ["A", "B", "^"]

p text7.scan(/^./)
# ["A", "!"]

p text7.scan(/\^/)
# ["^"]