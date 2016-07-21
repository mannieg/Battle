require 'game'

describe Game do
  subject(:game) { described_class.new(name1, name2) }
  let(:name1) { double :name }
  let(:name2) { double :name }

  describe 'name1'  do
    it 'accepts name1' do
      expect(game.name1).to eq (name1)
    end
  end

  describe 'name2' do
    it 'accepts name2' do
      expect(game.name2).to eq (name2)
    end
  end

  describe '#attack' do
    it "damages player" do
      expect(name2).to receive(:damage_taken)
      game.attack(name2)
    end
  end
end
