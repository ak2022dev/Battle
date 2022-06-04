def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Amir'
    fill_in :player_2_name, with: 'Khan'
    click_button 'Submit'
end

