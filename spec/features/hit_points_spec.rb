feature 'hit points' do
	scenario "viewing player's hit point count" do
		sign_in_and_play
		expect(page).to have_content "player 1 has 100 hit points"
	end

  scenario "viewing opponent's hit point count" do
    sign_in_and_play
    expect(page).to have_content 'player 2 has 100 hit points'
  end

	scenario "displays losing message when player has 0 hit points" do
  	sign_in_and_play
 		allow(Kernel).to receive(:rand).and_return 100
  	click_button 'Attack player 2'
  	expect(page).to have_content 'player 2 has lost the game!'
  end

end
