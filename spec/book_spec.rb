require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('Epub Publishers', 'bad', Time.now.year - 3)
  end

  describe '#new' do
    it 'takes 3 params and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe 'instance variables' do
    it 'returns correct instance variables' do
      expect(@book.cover_state).to eq('bad')
      expect(@book.publisher).to eq('Epub Publishers')
    end
  end
end
