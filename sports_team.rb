class SportsTeam

  attr_reader :team, :players
  attr_accessor :coach, :points

  def initialize(team, players, coach, points)
    @team = team
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player(name)
    @players.include?(name)
  end

  def points_property(result)
    if result == 'won'
      @points += 3
    end
  end

end
