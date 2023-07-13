require './lib/player'
class Player 
attr_reader:name,
    def initialize
        @first_name=name.split[" "][0]
        @last_name=name.split[" "][-1]
        @monthly_cost=monthly_cost 
        @contract_length=contract_length
        @nickname = nil
    end 
     
    def total_cost
        total_cost=monthly_cost * contract_length
end 
    def set_nickname 
        set_nickname << nickname 
end 
end 
 
