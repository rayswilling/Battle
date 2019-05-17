feature 'Display attack confirmation' do 
    scenario 'Can attack and see a confirmation' do 
        sign_in_and_play
        click_button 'Player_1 Attack'
    expect(page).to have_content 'Dave has attacked Mittens'
    end 

    # scenario 'Player_2 can attack and see confirmation' do
    #     sign_in_and_play
    #     click_button 'Player_1 Attack'
    #     click_button 'Player_2 Attack'
    #     expect(page).to have_content 'Mittens has attacked Dave'
    # end
end 