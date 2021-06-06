def liquid?(temperature)
  0 <= temperature && temperature < 100
end
puts liquid?(-1) #false
puts liquid?(0) #true
puts liquid?(99) #true
puts liquid?(100) #false


def liquid?(temperature)
  (0...100).include?(temperature)
end
puts liquid?(-1) #false
puts liquid?(0) #true
puts liquid?(99) #true
puts liquid?(100) #false