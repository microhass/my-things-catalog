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

  def list_item_handler(choice)
    case choice
    when 1 then display_books
    when 2, 3, 4 then puts 'Functionalities not implemented!'
    end
  end
end
