class Team 
attr_reader :name, 
            :location,
            :roster,
            :player_count 
  def initialize(name, location)
    @name = name 
    @location = location 
    @roster = []
    @player_count = 0
  end 
end 
