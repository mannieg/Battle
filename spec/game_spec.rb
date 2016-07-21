require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:name1) { double :name }
  let(:name2) { double :name }

  describe '#attack' do
      it "damages player" do
        expect(name2).to receive(:damage_taken)
        game.attack(name2)
      end
  end
end
