p /\d{4}\/\d{1,2}\/\d{1,2}/.match?('1986/4/16')
# true

p /\d{4}\/\d{1,2}\/\d{1,2}/.match?('237-0061')
# false

p $~
# nil

p Regexp.last_match
# nil

p '1982/10/7'.match?(/\d{4}\/\d{1,2}\/\d{1,2}/)
# true