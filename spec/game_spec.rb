require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('Player') }
  let(:player_2) { double('Player') }

  describe '#attack' do

    before do
      allow(player_2).to receive(:receive_damage)
    end

    it 'damages your opponent' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end

    it 'switches players turn' do
      expect{ game.attack }.to change{ game.player_turn }
    end

    it "switches to player 2 after player 1's turn" do
      game.attack
      expect(game.player_turn).to eq player_2
    end

    it "should return the opponent of player 2" do
      game.attack
  		expect(game.defending_player).to eq(player_1)
  	end

    xit 'does not damage opponent if one player is dead' do
      allow(player_1).to receive(:is_dead?).and_return(true)
      expect(player_2).not_to receive(:receive_damage)
      game.attack
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
end
