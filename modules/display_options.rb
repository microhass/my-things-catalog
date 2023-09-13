module DisplayOptions
  def show_initial_options
    puts "\n
    1. List item association (Eg. List all authors)
    2. List catalog items (Eg. List all books)
    3. Create item association (Eg. Author)
    4. Create catalog item (Eg. Book)
    5. Exit\n
    "
    print 'Enter your choice: '
  end

  def show_create_item_options
    puts "\n
      1. Create a book
      2. Create a game
      3. Create a movie
      4. Create a music album
      5. Exit\n
      "
    print 'Enter your choice: '
    choice = validate_input(gets.chomp.to_i, 5)
    create_item_handler(choice)
  end

  def show_extra_options(choice)
    case choice
    when 4 then show_create_item_options
    when 1, 2, 3 then puts 'Functionalities not implemented!'
    end
  end
end
