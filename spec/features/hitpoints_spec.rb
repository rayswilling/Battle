# require './app.rb'

feature 'Display Hitpoints' do
    scenario 'display hitpoints' do
        sign_in_and_play
        expect(page).to have_content 'Mittens', '100HP'
    end 

    scenario 'reduces hp after attack' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Mittens', '90HP'
    end 
end 