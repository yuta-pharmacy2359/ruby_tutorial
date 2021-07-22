class Smartphone
  class Iphone
    attr_reader :kind

    def initialize(kind)
      @kind = kind
    end
  end
end

smartphone = Smartphone::Iphone.new('iphone_13_pro_max')
puts smartphone.kind
# iphone_13_pro_max