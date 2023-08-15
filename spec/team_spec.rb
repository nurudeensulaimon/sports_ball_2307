require './lib/player'
require './lib/team'

RSpec.describe Team do 
  before(:each) do 
    @team = Team.new("Dodgers", "Los Angeles")
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
end 
