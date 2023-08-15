require './lib/player'

RSpec.describe Player do 
  before(:each) do 
    @player = Player.new("Michael Palledorous" , 1000000, 36) 
  end 

   it "exists as an instance" do 
    expect(@player).to be_an_instance_of(Player)
   end 

   it "has attributes " do 
    expect(@player.first_name).to eq("Michael")
    expect(@player.last_name).to eq("Palledorous")
    expect(@player.monthly_cost).to eq(1000000)
    expect(@player.contract_length).to eq(36)
   end 

    it "has a method #totalcost" do
      expect(@player.total_cost).to eq(36000000)
    end 

    it "has a nickname that is nil" do
    expect(@player.nickname).to eq(nil)
    end

    it "has set_nickname method" do 
      expect(@player.set_nickname!("Squints")).to eq("Squints")
    end 
 end 



