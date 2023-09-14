require_relative 'helper_spec'

describe Author do
  let(:author) { Author.new('Test', 'Author') }

  context 'initialization' do
    it 'creates an author' do
      expect(author).to be_an_instance_of(Author)
    end
  end

  context 'add_item method' do
    it "adds an item to the author's list of items" do
      item = Item.new(true, '27/03/2002')
      author.add_item(item)

      expect(author.items).to include(item)
      expect(item.author).to eq(author)
    end
  end
end
