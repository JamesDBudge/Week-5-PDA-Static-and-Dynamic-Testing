require('minitest/autorun')
require('minitest/rg')

require_relative('../card.rb')

class TestCard < MiniTest::Test

  def setup
    @card = Card.new("Hearts", 1)
  end

  def test_card_suit
    result = @card.suit
    assert_equal("Hearts", result)
  end

  def test_card_value
    result = @card.value
    assert_equal(1, result)
  end

end
