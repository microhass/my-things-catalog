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
end
