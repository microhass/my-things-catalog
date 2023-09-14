# require_relative 'helper_spec' # Adjust the path to match your project structure

# describe MusicAlbum do
#   let(:publish_date) { Date.new(2023, 1, 1) }
#   let(:on_spotify) { true }

#   subject(:album) { described_class.new(false, publish_date) } # Provide 'false' for 'archived'

#   describe '#can_be_archived?' do
#     context 'when both super and on_spotify are true' do
#       it 'returns true' do
#         expect(album.can_be_archived?).to eq(true)
#       end
#     end

#     context 'when super is false' do
#       it 'returns false' do
#         allow(album).to receive(:super).and_return(false)
#         expect(album.can_be_archived?).to eq(false)
#       end
#     end

#     context 'when on_spotify is false' do
#       it 'returns false' do
#         allow(album).to receive(:on_spotify).and_return(false)
#         expect(album.can_be_archived?).to eq(false)
#       end
#     end
#   end
# end
