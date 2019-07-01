require('minitest/autorun')
require('minitest/rg')

require_relative('sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def test_change_coach_name
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry', 0)
    united.coach = 'Norman'
    assert_equal('Norman', united.coach())
  end

  def test_add_new_player
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry', 0)
    united.add_new_player('Harry')
    assert_equal(4, united.players.length)
  end

  def test_check_player__true
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry', 0)
    united.check_player('Ned')
    assert_equal(true, united.check_player('Ned'))
  end

  def test_points_property
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry', 0)
    united.points_property('won')
    assert_equal(3, united.points)
  end


end
