# in spec/features/attack_spec.rb

feature 'Attacking' do

  # does the next scenario need to be removed?
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Amir attacked Khan'
  end

  # this scenario is from implementing hit points
  # have we implemented Attack and okay yet, or will later?
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    # temporarily removing the button and link test below TODO put back?
    # click_button 'Attack'
    # click_link 'OK'
    # temporarily added the click test below will remove if fails
    click_link 'Attack'
    expect(page).not_to have_content 'Khan: 60HP'
    # temporarily changing below
    # expect(page).to have_content 'Khan: 50HP'
    # adding a click before the expect as well
    click_link 'OK'
    expect(page).to have_content 'Amir vs. Khan Khan: 50HP'
  end
end
