require '.lib/player'
require '.lib/team'

Describe Team do
    It 'exists' do
        team = Team.new("Dodgers", "Los Angeles")
        expect(team).to be_a(Team)  
    end  
    It "should have a readable attribute"
        team=Team.new("Dodgers", "Los Angeles")
        expect(team.name).to eq("Dodgers")
        expect(team.location).to eq("Los Angeles")
    end
    It 'has attribute roster'
       team.roster=[]
       expect(team.roster).to eq([])
    end
    It 'has another attribute'
       team.player_count 
       expect(team.player_count).to eq(0)
    end 
    It " has an player instance"
       player_1 = Player.new("Michael Palledorous" , 1000000, 36)
       expect(player_1.name).to eq("Michael Palledorous")
       expect(player_1.monthly_cost).to eq(1000000)
       expect(player_1.contract_length).to eq(36)
     end
    It " has another player instance"
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        expect(player_2.name).to eq("Kenny DeNunez")
        expect(player_2.monthly_cost).to eq(500000)
        expect(player_2.contract_length).to eq(24)
    end
end