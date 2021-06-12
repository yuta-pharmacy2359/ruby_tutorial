a = []
while a.size < 5
  a << 'foo'
end
p a
# ["foo", "foo", "foo", "foo", "foo"]

a = []
while a.size < 5 do a << 'bar' end
p a
# ["bar", "bar", "bar", "bar", "bar"]

a = []
a << 'hoge' while a.size < 5
p a
# ["hoge", "hoge", "hoge", "hoge", "hoge"]

a = []
while false
  a << 'hello'
end
p a
# []

a = []
begin
  a << 'good-bye'
end while false
p a
# ["good-bye"]

a = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat']
until a.size <= 4
  a.delete_at(-1)
end
p a
# ["sun", "mon", "tue", "wed"]