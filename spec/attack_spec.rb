require 'attack'

describe Attack do

  let(:player) { double('Player') }
  subject(:attack) { described_class.new(player) }

  it '#execute' do
    allow(attack).to receive(:random_damage).and_return(25)
    expect(player).to receive(:receive_damage).with(25)
    attack.execute
  end
end
