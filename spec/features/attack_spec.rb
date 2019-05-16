feature 'Display attack confirmation' do 
    scenario 'Can attack and see a confirmation' do 
        sign_in_and_play
        click_button 'Attack'
    expect(page).to have_content 'Dave has attacked Mittens'
    end 
end 