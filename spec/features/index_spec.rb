
feature "For new players to enter battle" do
  player_1 = "Mannie"
  player_2 = "Giancarlo"

  scenario 'fill in form' do
    visit "/"
    fill_in :player_1, :with => player_1
    fill_in :player_2, :with => player_2

    click_button "Enter Battle"

    expect(page).to have_text("#{player_1} vs #{player_2}")
  end

  scenario 'players can see hit points' do
    visit '/'
    fill_in :player_1, :with => player_1
    fill_in :player_2, :with => player_2
    click_button 'Enter Battle'
    expect(page).to have_text("#{player_2}: 30 Hit Points")
  end
end
