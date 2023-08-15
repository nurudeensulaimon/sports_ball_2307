require './lib/player'
require './lib/team'
require './lib/player'

RSpec.describe Team do 
  before(:each) do 
   
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)
 end 

  it "exists with an instance" do 
    expect(@team).to be_an_instance_of(Team)
  end 

  it "has attributes" do 
    expect(@team.name).to eq("Dodgers")
    expect(@team.location).to eq("Los Angeles")


  end 

   it "has a roster that is empty" do 
    expect(@team.roster).to eq([])
   end 

   it "has a #player_count" do 
     expect(@team.player_count).to eq(0)
   end 

   it "has a method #add_player" do 

    @team.add_player(@player_1)
    @team.add_player(@player_2)

     expect(@team.roster).to eq([@player_1,@player_2 ])
   end 

   it "can count players" do 

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    expect(@team.player_count).to eq(2)
   end 

   it "has a #method long_term_players" do

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)
  
    expect(@team.long_term_players).to eq([@player_1,@player_3])
   end 

   it "has a #method short_term_players" do 

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

     expect(@team.short_term_players).to eq([@player_2, @player_4])
   end    

   it "has a #total_value" do

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expect(@team.total_value).to eq(85200000)

   end 

   it "has a method team_details" do 

    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)

    expected_hash = {"total_value" => 85200000, 
       "player_count" => 4
    }

    expect(@team.details).to eq(expected_hash)
  end 

end 
