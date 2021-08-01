class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_80 = Tempo.new(80)
t_140 = Tempo.new(140)

p t_80 > t_140
# false

p t_80 < t_140
# true

p t_80 == t_140
# false 

tempos = [Tempo.new(180), Tempo.new(45), Tempo.new(135), Tempo.new(90)]
p tempos.sort
# [45bpm, 90bpm, 135bpm, 180bpm]