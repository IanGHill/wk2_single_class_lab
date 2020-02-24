class NewTeam

  attr_accessor :team_name, :players, :coach_name

  def initialize(team_name, players, coach_name, points = 0)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = points
  end

  def update_coach(new_coach)
    @coach_name = new_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_exists(player)
    @players.include?(player)
  end

  def update_result(result)
    result == "win" ? @points += 1 : @points
  end

end
