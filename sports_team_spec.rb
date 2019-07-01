require('minitest/autorun')
require('minitest/rg')

require_relative('sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def test_change_coach_name
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry')
    united.coach = 'Norman'
    assert_equal('Norman', united.coach())
  end



  def test_add_new_player
    united = SportsTeam.new('Codeclan Athletic', ['Ted', 'Fred', 'Ned'], 'Barry')
    united.add_new_player('Harry')
    assert_equal(4, united.players.length)
  end

end
