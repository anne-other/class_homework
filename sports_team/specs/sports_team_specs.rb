require('minitest/autorun')
require('minitest/rg')

require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team1 = Team.new("Scotland", ["Greg Laidlaw", "Richie Gray", "Sean Lamont", "Stuart Hogg"], "Vern Cotter")
  end

  def test_get_team_name()
    assert_equal("Scotland", @team1.name)
  end

  def test_get_players()
    result = @team1.players
    assert_equal(4, result.size)
  end

  def test_get_coach()
    assert_equal("Vern Cotter", @team1.coach())
  end

  def test_set_coach()
    # @team1.set_coach("Gregor Townsend")
    @team1.coach = "Gregor Townsend"
    assert_equal("Gregor Townsend", @team1.coach)
  end

  def test_add_player()
    @team1.add_player("Chris Cusiter")
    result = @team1.players
    assert_equal(5, result.size)
  end

  def test_find_player_true()
    result = @team1.find_player("Richie Gray")
    assert_equal(true, result)
  end

  def test_find_player_false()
    result = @team1.find_player("Jonny Gray")
    assert_equal(false, result)
  end

  def test_points_update()
    @team1.points_update("win")
    #@team.has_won(true) use a boolean where you can
    assert_equal(1, @team1.points)
  end

end
