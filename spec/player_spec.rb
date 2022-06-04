# in spec/player_spec.rb
require 'player'

describe Player do
  subject(:amir) { Player.new('Amir') }
  
  describe '#name' do
    it 'returns the name' do
      expect(amir.name).to eq 'Amir'
    end
  end
end
