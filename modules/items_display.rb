module ItemsDisplay
  def display_books
    return puts 'You have no books!' if @books.empty?

    @books.each_with_index do |book, index|
      puts "\nBook #{index + 1}"
      puts "Publisher: #{book.publisher}"
      puts "Cover state: #{book.cover_state}"
      puts "Author: #{book.author.first_name} #{book.author.last_name}" if book.author
      puts "Genre: #{book.genre.name}" if book.genre
      puts "Source: #{book.source.name}" if book.source
      puts "Label: #{book.label.title}" if book.label
    end
  end

  def display_labels
    return puts 'You have no labels!' if @labels.empty?

    @labels.each_with_index do |label, index|
      puts "#{index + 1}. #{label.title.capitalize}"
    end
  end

  def list_authors
    s_no = 1
    ObjectSpace.each_object(Author) do |obj|
      puts "Serial Number: #{s_no}, First Name: #{obj.first_name} Last Name: #{obj.last_name}"
      s_no += 1
    end
  end

  def list_games
    s_no = 1
    ObjectSpace.each_object(Game) do |obj|
      print "Serial Number: #{s_no}, Multiplayer: #{obj.multiplayer} Last played at: #{obj.last_played_at} "
      puts "Author: #{obj.author.first_name} #{obj.author.last_name}"
      s_no += 1
    end
  end

  def list_assoc_handler(choice)
    case choice
    when 1 then list_authors
    when 3 then display_labels
    when 1, 2, 4 then puts 'Functionalities not implemented!'
    end
  end

  def list_item_handler(choice)
    case choice
    when 1 then display_books
    when 2 then list_games
    when 3, 4 then puts 'Functionalities not implemented!'
    end
  end
end
