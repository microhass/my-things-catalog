module DataSavers
  def save_books
    books_data = []
    @books.each do |book|
      books_data << {
        'id' => book.id.to_s,
        'class' => book.class,
        'publish_date' => book.publish_date.to_s,
        'publisher' => book.publisher,
        'cover_state' => book.cover_state
      }
    end
    File.write('/data/books.json', books_data.to_json) unless books_data.empty?
  end
end
