require 'game'

describe Game do
  subject(:game) { described_class.new(name1, name2) }
  let(:name1) { double :name1 }
  let(:name2) { double :name2 }

  describe '#name1'  do
    it 'accepts name1' do
      expect(game.name1).to eq (name1)
    end
  end

  describe '#name2' do
    it 'accepts name2' do
      expect(game.name2).to eq (name2)
    end
  end

  describe '#turn_switcher' do
    it 'switches between players' do
      allow(name2).to receive(:damage_taken)
      game.attack
      expect(game.current_turn).to eq name2
    end
  end

  describe '#attack' do
    it "damages player" do
      expect(name2).to receive(:damage_taken)
      game.attack
    end
  end

  describe '#get_defender'do
    it 'returns the defending player at the time' do
      allow(name2).to receive(:damage_taken)
      game.attack
      expect(game.get_defender).to eq name2
    end
  end


end
