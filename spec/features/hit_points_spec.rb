# in spec/features/hit_points_spec.rb

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Amir'
    fill_in :player_2_name, with: 'Khan'
    click_button 'Submit'
    expect(page).to have_content 'Khan: 60HP'
  end
end

