a = [2, 4, 6, 8]
p a.delete(5)
# nil

def del
  a = [2, 4, 6, 8]
  a.delete(10) do
    'NG'
  end
end
p del
# "NG"

def del2
  a = [2, 4, 6, 8]
  a.delete 10 do
    'NG'
  end
end
p del2
# "NG"

# p a.delete 10 { 'NG' }
# 構文エラー

p a.delete(10) { 'NG' }
# "NG"