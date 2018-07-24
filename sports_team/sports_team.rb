class Team

  attr_reader :name, :players, :points
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

  def add_player(player)
    @players << player
  end

  def find_player(player)
    return @players.include?(player)
  end

  def points_update(result)
    if result == "win"
      #result == true use boolean where you can
      @points += 1
    end
  end

end
