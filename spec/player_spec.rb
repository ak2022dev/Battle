# in spec/player_spec.rb
require 'player'

describe Player do
  subject(:amir) { Player.new('Amir') }
  subject(:khan) { Player.new('Khan') }
  
  describe '#name' do
    it 'returns the name' do
      expect(amir.name).to eq 'Amir'
    end
  end
  
  describe '#hit_points' do
    it 'returns the hit points' do
      expect(amir.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(khan).to receive(:receive_damage)
      amir.attack(khan)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { amir.receive_damage }.to change { amir.hit_points }.by(-10)
    end
  end
end
