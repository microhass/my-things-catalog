require_relative 'helper_spec'

describe Game do
  let(:author) { Author.new('Anand', 'Pathak')}
  let(:game) { Game.new(true, '27/03/2022', 'Y', '27/03/2020', author) }

  context 'initialization' do
    it 'creates a game' do
      expect(game).to be_an_instance_of(Game)
    end
  end
end
