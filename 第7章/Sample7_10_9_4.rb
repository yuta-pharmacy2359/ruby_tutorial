s = 'Hamada'

puts s.respond_to?(:split)
# true
puts s.respond_to?(:name)
# false

def display_name(object)
  if object.respond_to?(:name)
    "Name is <<#{object.name}>>."
  else
    'No name.'
  end
end

puts display_name(s)
# No name.