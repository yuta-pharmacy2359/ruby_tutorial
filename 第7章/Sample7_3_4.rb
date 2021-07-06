class CapitolCity
  def initialize(country, capitol)
    @country = country
    @capitol = capitol
  end

  def announce
    "The capitol city of #{@country} is #{@capitol}."
  end

  def country
    @country
  end
end

japan_capitol_city = CapitolCity.new('Japan', 'Tokyo')
usa_capitol_city = CapitolCity.new('USA', 'Washington DC')

puts japan_capitol_city.announce
# The capitol city of Japan is Tokyo.

puts usa_capitol_city.announce
# The capitol city of USA is Washington DC.