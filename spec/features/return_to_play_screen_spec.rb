feature "Return to play page" do
  scenario "On clicking return" do
    sign_in_and_play
    click_button("attack")
    click_button("return")
    expect(page).to have_content("Player 1: Albie vs Player 2: Noby")
  end
  scenario "Shows who's turn it is" do
    sign_in_and_play
    click_button("attack")
    click_button("return")
    expect(page).to have_content("Noby's turn")
  end
end


feature "View Hit Points" do
  scenario "Show Player's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Albie vs Player 2: Noby Albie 60HP Noby 60HP")
  end
end
