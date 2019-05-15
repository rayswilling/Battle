require './app.rb'

feature 'Display Hitpoints' do
    scenario 'display hitpoints' do
        visit('/play')
        expect(page).to have_content 'HP'
    end 
end 