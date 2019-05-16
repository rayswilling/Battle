# require './app.rb'

feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
        visit('/')
        expect(page).to have_content 'Battle'
    end 
end 

feature 'Enter names in a form' do
    scenario 'Can add names to a form' do
        sign_in_and_play
        expect(page).to have_content 'Dave vs. Mittens'
    end
end 