require 'player'

describe Player do 
  subject (:dave) { Player.new('Dave') } 
  subject (:chris) { Player.new('Chris')} 
    
    describe '#name' do
        it "returns player name" do
            expect(dave.name).to eq 'Dave'
        end 
    end

    describe '#initialize' do
        it "check if player starts with 100 HP" do
            expect(dave.hp).to eq 100
        end 
    end 

    describe '#reduce_hp' do 
        it "reduces attacked players hp" do 
            expect { chris.reduce_hp }.to change { chris.hp }.by(-10)
        end
    end   

end