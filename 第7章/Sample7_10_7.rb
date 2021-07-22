snz1 = "If it goes on like this, it isn't good, so if it goes on like this, it isn't good."
snz2 = "The figures '46' vaguely came to mind."

def snz1.shuffle
  chars.shuffle.join
end

puts snz1.shuffle
# i no oks k., toi  dist,l hi  shetosoogis i,og '  iietg if stnttIftse'n  oiild gone

=begin
puts snz2.shuffle
# Sample7_10_7.rb:11:in `<main>': undefined method `shuffle' for "The figures '46' vaguely came to mind.":String (NoMethodError)
=end


=begin
percentage = 46
def percentage.snz
  puts 46
end
# Sample7_10_7.rb:19:in `<main>': can't define singleton (TypeError)
=end


=begin
sym = :sunzro
def sym.snz
  'solar'
end
# Sample7_10_7.rb:27:in `<main>': can't define singleton (TypeError)
=end