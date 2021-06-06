def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  when 19..30
    900
  else
    1200
  end
end

puts charge(3) #0
puts charge(12) #300
puts charge(18) #600
puts charge(30) #900
puts charge(47) #1200