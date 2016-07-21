require 'game'

describe Game do
  subject(:game) { described_class.new(name1) }
  let(:name1) { double :name }
  let(:name2) { double :name }

  describe '#attack' do
      it "damages player" do
        expect(name2).to receive(:damage_taken)
        game.attack(name2)
      end
  end

  describe 'name1'  do
    it 'accepts name1' do
      expect(game).to eq (name1)
    end
  end
end
