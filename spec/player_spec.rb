require 'player'

describe Player do

  subject(:player_1) { described_class.new('Mannie') }

  it 'should return the players name' do
    expect(player_1.name).to eq 'Mannie'
  end

  describe '#hp' do
    it 'returns the hit point total' do
      expect(player_1.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'changes hp by received damage' do
      expect{ player_1.receive_damage(10) }.to change{ player_1.hp }.by(-10)
    end

    it 'not allow hp to drop below 0' do
      player_1.receive_damage(100)
      expect{ player_1.receive_damage(1) }.not_to change{ player_1.hp }
    end
  end

  describe '#is_dead?' do
    it 'returns the player is dead if 0 hp' do
      allow(player_1).to receive(:hp).and_return(0)
      expect(player_1.is_dead?).to be_truthy
    end
  end

end
