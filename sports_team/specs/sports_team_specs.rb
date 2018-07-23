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

end
