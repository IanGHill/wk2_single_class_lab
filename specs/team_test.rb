require('minitest/autorun')
require('minitest/reporters')
require_relative('../team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def test_get_team_name
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal("The CodeClan", new_team.team_name)
  end

  def test_get_player_names
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal(players_array, new_team.players)
  end

  def test_get_coach_name
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal("Ian", new_team.coach_name)
  end

  def test_update_coach
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal("Rob", new_team.update_coach("Rob"))
  end

  def test_add_player
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    new_team.add_player("Steve")
    assert_equal(4, players_array.length)
  end

  def test_player_exists
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal(true, new_team.player_exists("Juan"))
  end

  def test_team_result__win
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal(1, new_team.update_result("win"))
  end

  def test_team_result__loss
    players_array = %w[Keith Juan Chris]
    new_team = NewTeam.new("The CodeClan", players_array, "Ian")
    assert_equal(0, new_team.update_result("loss"))
  end

end
