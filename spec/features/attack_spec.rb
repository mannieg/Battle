
feature 'Attacking' do

  scenario '#hit_points: hit point count goes down' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(30)
    click_button 'Attack player 2'
    expect(page).to have_content 'player 2 has 70 hit points'
  end

  scenario 'displays the attacked players name' do
    sign_in_and_play
    click_button 'Attack player 2'
    expect(page).to have_content 'player 2 was hit!'
  end
end
