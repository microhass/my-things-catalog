module ObjectCreators
  def create_item_handler(choice)
    case choice
    when 1 then create_book
    when 2, 3, 4 then 'Functionalities not implemented!'
    end
  end

  def create_book
    puts 'Publish date: '
    publish_date = gets.chomp
    puts 'Publisher: '
    publisher = gets.chomp
    puts 'Cover state [good/bad]: '
    cover_state = gets.chomp
    @books << Book.new(publisher, cover_state, publish_date)
  end
end
