
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'player 1'
  fill_in :player_2_name, with: 'player 2'
  click_button 'Play'
end
