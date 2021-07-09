require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  def setup
    @kokubunji = Gate.new(:kokubunji)
    @musashi_koganei = Gate.new(:musashi_koganei)
    @higashi_koganei = Gate.new(:higashi_koganei)
  end

  def test_kokubunji_to_musashi_koganei
    ticket = Ticket.new(140)
    @kokubunji.enter(ticket)
    assert @musashi_koganei.exit(ticket)
  end

  def test_kokubunji_to_higashi_koganei_when_fare_is_not_enough
    ticket = Ticket.new(140)
    @kokubunji.enter(ticket)
    refute @higashi_koganei.exit(ticket)
  end

  def test_kokubunji_to_higashi_koganei_when_fare_is_enough
    ticket = Ticket.new(160)
    @kokubunji.enter(ticket)
    assert @higashi_koganei.exit(ticket)
  end

  def test_musashi_koganei_to_higashi_koganei
    ticket = Ticket.new(140)
    @musashi_koganei.enter(ticket)
    assert @higashi_koganei.exit(ticket)
  end
end