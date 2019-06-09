require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')

require_relative('../card_game.rb')
require_relative('../card.rb')

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Spades", 5)
    @card3 = Card.new("Clubs", 7)
    @game1 = CardGame.new
  end

  def test_check_for_ace
    result = @game1.check_for_ace(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__false
    result = @game1.check_for_ace(@card2)
    assert_equal(false, result)
  end

  def test_highest_card
    result = @game1.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_cards_total
    result = CardGame.cards_total([@card1, @card2, @card3])
    assert_equal("You have a total of 13", result)
  end



end
