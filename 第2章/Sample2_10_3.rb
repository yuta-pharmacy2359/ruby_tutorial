def alert
  status = 'error'
  if status != 'ok'
    '何か異常があります。'
  end
end
puts alert

def alert2
  status = 'error'
  unless status == 'ok'
    '何か異常があります。'
  end
end
puts alert2

def alert3
  status = 'ok'
  unless status == 'ok'
    '何か異常があります。'
  else
    '正常です'
  end
end
puts alert3

status = 'error'
message =
  unless status == 'ok'
    '何か異常があります。'
  else
    '正常です。'
  end

puts message

puts '何か異常があります' unless status == 'ok'

def alert4
  status = 'error'
  unless status == 'ok' then
    '何か異常があります'
  end
end
puts alert4
