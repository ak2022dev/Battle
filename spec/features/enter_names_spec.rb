# in spec/features/root_get_player_names_spec.rb

feature 'Testing root for getting player names' do
  scenario 'Can run app and check page for getting player names' do
    sign_in_and_play
    save_and_open_page 
    expect(page).to have_content 'Amir vs. Khan'
  end
end
