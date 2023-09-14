module DataLoaders
  def load_books
    file_path = 'data/books.json'
    return [] unless File.exist?(file_path)

    loaded_books = []
    books_data = load_file(file_path)

    books_data.each do |book|
      publish_date = book['publish_date']
      publisher = book['publisher']
      cover_state = book['cover_state']
      new_book = Book.new(publisher, cover_state, publish_date)
      loaded_books << new_book
    end

    loaded_books
  end

  def load_labels
    file_path = 'data/labels.json'
    return [] unless File.exist?(file_path)

    loaded_labels = []
    labels_data = load_file(file_path)

    labels_data.each do |label|
      color = label['color']
      title = label['title']
      new_label = Label.new(title, color)
      loaded_labels << new_label
    end

    loaded_labels
  end

  def load_file(path)
    file = File.open(path)
    data = JSON.parse(file.read)
    file.close
    data
  end

  def load_author_games
    if File.exist?('author.json')
      File.foreach('author.json') do |line|
        JSON.parse(line, create_additions: true)
      end
    end

    if File.exist?('game.json')
      File.foreach('game.json') do |line|
        s = JSON.parse(line, create_additions: true)
      end
    end
  end
end
