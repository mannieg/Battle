require 'player'
describe Player do

  subject(:albie) { Player.new('Albie') }
  subject(:noby) { Player.new('Noby') }

  describe '#return_name'do
    it "returns a players name" do
      expect(albie.return_name).to eq('Albie')
    end
  end

  describe '#hit_points' do
    it 'set to DEFAULT_HP' do
      expect(noby.hit_points).to eq(Player::DEFAULT_HP)
    end
  end

#  describe '#attack' do
#    it "damages player" do
#      expect(noby).to receive(:damage_taken)
#      albie.attack(noby)
#    end
#  end

  describe '#damage_taken' do
    it 'reduces hit points' do
      expect{ noby.damage_taken }.to change{ noby.hit_points }.by -10
    end
  end

end
