require './app.rb'

feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
        visit('/')
        expect(page).to have_content 'Battle'
    end 
end 

feature 'Enter names in a form' do
    scenario 'Can add names to a form' do
        visit('/')
            fill_in :player_1_name, with: "Dave"
            fill_in :player_2_name, with: "Mittens"
            click_button 'Submit'
        expect(page).to have_content 'Dave vs. Mittens'
    end
end 