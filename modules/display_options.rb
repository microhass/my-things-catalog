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

  def show_list_assoc_options
    puts "\n
      1. List all authors
      2. List all genres
      3. List all labels
      4. List all sources
      5. Exit\n
      "
    print 'Enter your choice: '
    choice = validate_input(gets.chomp.to_i, 5)
    list_assoc_handler(choice)
  end

  def show_list_item_options
    puts "\n
      1. List all books
      2. List all games
      3. List all movies
      4. List all music albums
      5. Exit\n
      "
    print 'Enter your choice: '
    choice = validate_input(gets.chomp.to_i, 5)
    list_item_handler(choice)
  end

  def show_create_assoc_options
    puts "\n
      1. Create an author
      2. Create a genre
      3. Create a label
      4. Create a source
      5. Exit\n
      "
    print 'Enter your choice: '
    choice = validate_input(gets.chomp.to_i, 5)
    create_assoc_handler(choice)
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
    when 1 then show_list_assoc_options
    when 2 then show_list_item_options
    when 3 then show_create_assoc_options
    when 4 then show_create_item_options
    end
  end
end
