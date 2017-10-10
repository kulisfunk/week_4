require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup()
    @game1 = Game.new(1)
    @game2 = Game.new(2)
    @game3 = Game.new(3)

  end

  def test_round__rock()
    actual = @game1.round
    assert_includes([[1, 3],[2, 1], [3, 2], 1, 2, 3], actual)
  end

  def test_round__scissors()
    actual = @game2.round
    assert_includes([[1, 3],[2, 1], [3, 2], 1, 2, 3], actual)
  end

  def test_round__paper()
    actual = @game3.round
    assert_includes([[1, 3],[2, 1], [3, 2], 1, 2, 3], actual)
  end

  def test_winner__p1_rock()
    p actual = @game1.winner([1, 3])
     assert_includes(actual, "Rock beats")
  end

  def test_winner__p1_paper()
    p actual = @game1.winner([2, 1])
    assert_includes(actual, "Paper beats")

  end

  def test_winner__p1_scissors()
    p actual = @game1.winner([3, 2])
    assert_includes(actual, "Scissors beats")

  end

  def test_winner__p2()
    @game1.round()
    p actual = @game1.winner(2)
    assert_includes(actual, "beaten")

  end

  def test_draw()
    @game1.round()
    p actual = @game1.winner(3)
    assert_includes(actual, "draws")
  end

end
