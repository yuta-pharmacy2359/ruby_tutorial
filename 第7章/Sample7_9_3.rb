$pc_name = 'macbook_pro'

class Pc
  def initialize(name)
    $pc_name = name
  end

  def self.name
    $pc_name
  end

  def name
    $pc_name
  end
end

puts Pc.name
# macbook_pro

pc = Pc.new('surface_pro_7')
puts pc.name
# surface_pro_7

puts Pc.name
# surface_pro_7
puts $pc_name
# surface_pro_7