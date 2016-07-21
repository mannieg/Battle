require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('Player') }
  let(:player_2) { double('Player') }

  describe '#attack' do
    it 'damages your opponent' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  context '#opponent_of' do
  	it "should return the opponent of player 1" do
  		expect(game.defending_player).to eq(player_2)
  	end
  	it "should return the opponent of player 2" do
      game.switcher
  		expect(game.defending_player).to eq(player_1)
  	end
  end

  context 'When in the game' do
    it 'Player_1 equals player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'Player_2 equals player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  it 'switches players turn' do
    expect{ game.switcher }.to change{ game.player_turn }
  end

  it "switches to player 2 after player 1's turn" do
    game.switcher
    expect(game.player_turn).to eq player_2
  end

end
