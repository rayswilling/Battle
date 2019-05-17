# require './app.rb'

feature 'Display Hitpoints' do
    scenario 'display hitpoints' do
        sign_in_and_play
        expect(page).to have_content 'Mittens', '100HP'
    end 

    scenario 'reduces hp after attack' do
        sign_in_and_play
        click_button 'Player_1 Attack'
        expect(page).to have_content 'Mittens', '90HP'
    end 

    scenario 'reduces hp after player_2 attack' do
        sign_in_and_play
        click_button 'Player_1 Attack'
        click_button 'Player_2 Attack'
        expect(page).to have_content 'Dave', '90HP'
    end 
end 