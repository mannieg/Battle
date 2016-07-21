feature 'Switches page' do
	xscenario 'clicking ok on attack page returns user to play page' do
		sign_in_and_play
		click_button 'Attack player 2'
		click_button 'OK'
		expect(page).to have_content 'player 1 vs. player 2'
	end
end
