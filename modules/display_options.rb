module DisplayOptions
  def show_initial_options
    puts "\n
    1. List all books
    2. List all music albums
    3. List of games
    4. List all genres (e.g 'Comedy', 'Thriller')
    5. List all labels (e.g. 'Gift', 'New')
    6. List all authors (e.g. 'Stephen King')
    7. Add a book
    8. Add a music album
    9. Add a game
    10. Exit\n
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
