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
    File.write('data/books.json', books_data.to_json) unless books_data.empty?
  end

  def save_labels
    labels_data = []
    @labels.each do |label|
      labels_data << {
        'id' => label.id.to_s,
        'class' => label.class,
        'title' => label.title,
        'color' => label.color
      }
    end
    File.write('data/labels.json', labels_data.to_json) unless labels_data.empty?
  end

  def save_author_game
    File.open('data/author.json', 'w') do |file|
      ObjectSpace.each_object(Author) do |obj|
        file.puts JSON.generate(obj)
      end
    end

    File.open('data/game.json', 'w') do |file|
      ObjectSpace.each_object(Game) do |obj|
        file.puts JSON.generate(obj)
      end
    end
  end

  def save_genre_music
    File.open('data/genre.json', 'w') do |file|
      ObjectSpace.each_object(Genre) do |obj|
        file.puts JSON.generate(obj)
      end
    end

    File.open('data/music.json', 'w') do |file|
      ObjectSpace.each_object(MusicAlbum) do |obj|
        file.puts JSON.generate(obj)
      end
    end
  end
end
