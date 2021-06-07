def to_hex(r, g, b)
  '#' +
  r.to_s(16).rjust(2, '0') +
  g.to_s(16).rjust(2, '0') +
  b.to_s(16).rjust(2, '0')
end

def to_hex2(r, g, b)
  hex = '#'
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  hex
end

def to_hex3(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_hex4(r, g, b)
  [r, g, b].inject('#') { |hex, n| hex + n.to_s(16).rjust(2, '0') }
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end
  ints
end

def to_ints2(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints3(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints4(hex)
  r, g, b = hex.scan(/\w\w/)
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints5(hex)
  hex.scan(/\w\w/).map do |s|
    s.hex
  end
end

def to_ints6(hex)
  hex.scan(/\w\w/).map(&:hex)
end