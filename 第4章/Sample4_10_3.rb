def game(hp)
  return 'hpを入力してください' if hp.nil?
  if hp == 0
    'GAME OVER'
  else
    'NEXT TURN'
  end
end
puts game(100) #NEXT TURN
puts game(0) #GAME OVER
puts game(nil) #hpを入力してください


def calc_with_break
  numbers = [1, 2, 3 ,4 ,5, 6, 7 ,8]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    break if n.odd?
  end
  target * 7
end
p calc_with_break
# 7, 21, 35, 49のいずれか


def calc_with_return
  numbers = [1, 2, 3, 4, 5, 6, 7, 8]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    return if n.odd?
  end
  target * 12
end
p calc_with_return
# nil

def return2
  [2, 4, 6, 8].each do |n|
    puts n
    return
  end
end
p return2
=begin
2
nil
=end