hash = { 'japan' => 'こんにちは', us: :hello }

puts hash['japan'] #こんにちは
puts hash[:us] #hello

puts hash[:japan] #nil
puts hash['us'] #nil

person = {
  name: 'Tsuyoshi',
  age: 33,
  friends: ['Serina', 'Tatsuyadesho', 'George'],
  devices: { smartphone: :iphone12_pro, tablet: :ipad_pro_11, pc: :macbook_pro_13_M1 }
}

p person[:name] #"Tsuyoshi"
p person[:age] #33
p person[:friends] #["Serina", "Tatsuyadesho", "George"]
p person[:devices][:tablet] #:ipad_pro_11