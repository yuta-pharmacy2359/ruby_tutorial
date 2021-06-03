def condition1
  n = 11
  if n > 10
    '10より大きい'
  else
    '10以下'
  end
end
puts condition1

def condition2
  n = 9
  n > 10 ? '10より大きい' : '10以下'
end
puts condition2

n = 16
message = n > 10 ? '10より大きい' : '10以下'
puts message
