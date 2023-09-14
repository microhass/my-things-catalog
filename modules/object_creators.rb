module ObjectCreators
  def create_assoc_handler(choice)
    case choice
    when 3 then create_label
    when 1, 2, 4 then 'Functionalities not implemented!'
    end
  end

  def create_item_handler(choice)
    case choice
    when 1 then create_book
    when 2, 3, 4 then 'Functionalities not implemented!'
    end
  end

  def create_book
    print 'Publish date: '
    publish_date = gets.chomp
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover state [good/bad]: '
    cover_state = gets.chomp
    @books << Book.new(publisher, cover_state, publish_date)
    print 'Book created successfully!'
  end

  def create_label
    print "\nTitle: "
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    @labels << Label.new(title, color)
    print 'Label created successfully!'
  end
end
