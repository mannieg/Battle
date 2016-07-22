feature "Attack Player" do
  scenario "player attacks another" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content('Albie attacked Noby')
  end
  scenario 'expect players HP to be reduced' do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content('Noby has 50HP')
  end
end
