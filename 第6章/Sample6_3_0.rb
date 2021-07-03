regex = /\d{3}-\d{4}/
puts regex.class
# Regexp

puts '193-0822' =~ /\d{3}-\d{4}/
# 0

puts 'y237-0061' =~ /\d{3}-\d{4}/
# 1

p 'y37-0061' =~ /\d{3}-\d{4}/
# nil


def post_number(number)
  if number =~ /\d{3}-\d{4}/
    'マッチしました'
  else
    'マッチしませんでした'
  end
end

puts post_number('237-0063')
# マッチしました

puts post_number('oppama')
# マッチしませんでした


puts /\d{3}-\d{4}/ =~ '193-0822'
# 0

p /\d{3}-\d{4}/ =~ 'z93-0822'
# nil


puts '193-0822' !~ /\d{3}-\d{4}/
# false

puts 'y37-0061' !~ /\d{3}-\d{4}/
# true