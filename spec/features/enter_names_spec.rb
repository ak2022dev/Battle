# in spec/features/root_get_player_names_spec.rb

feature 'Testing root for getting player names' do
  scenario 'Can run app and check page for getting player names' do
    visit('/')
    fill_in :player_1_name, with: 'Amir'
    fill_in :player_2_name, with: 'Khan'
    click_button 'Submit'

    save_and_open_page 
    expect(page).to have_content 'Amir vs. Khan'
  end
end
