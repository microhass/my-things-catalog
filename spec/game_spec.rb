require_relative 'helper_spec'

describe Game do
  let(:game) { Game.new(true, '27/03/2022') }

  context 'initialization' do
    it 'creates a game' do
      expect(game).to be_an_instance_of(Game)
    end
  end
end
