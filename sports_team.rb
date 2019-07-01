class SportsTeam

  attr_reader :team, :players
  attr_accessor :coach

  def initialize(team, players, coach)
    @team = team
    @players = players
    @coach = coach
  end

  def add_new_player(name)
    @players.push(name)
  end

end
