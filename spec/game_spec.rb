require 'game'

describe Game do 
let(:player_2) { Player.new("Dave") }
let(:player_1) { Player.new("Mittens") }
subject(:game) { Game.new(player_1, player_2) }

    describe '#attack' do 
        it "one player can attack another player" do 
            expect(game).to respond_to(:attack)
        end 
    
        it "damages the player" do 
            expect(player_2).to receive(:reduce_hp)
            game.attack(player_2)
        end

        it "game returns player 1" do 
            expect(game.player_1).to eq player_1
        end
        
        it "game returns player 2" do 
            expect(game.player_2).to eq player_2
        end 
    end 

    it 'returns a player s name' do
        expect(game.player_1.name).to eq "Mittens"
    end
end 
