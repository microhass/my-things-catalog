module ObjectCreators
  def create_assoc_handler(choice)
    case choice
    when 1 then create_author
    when 2 then create_genre
    when 3 then create_label
    when 4 then 'Functionalities not implemented!'
    end
  end

  def create_item_handler(choice)
    case choice
    when 1 then create_book
    when 2 then create_game
    when 3 then 'Functionalities not implemented!'
    when 4 then create_music
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

  def create_game
    print 'Multiplayer: '
    mp = gets.chomp
    print 'Last played at: '
    lp = gets.chomp
    print 'Archived: '
    arc = gets.chomp
    print 'Published date: '
    pd = gets.chomp

    Game.new(mp, lp, arc, pd)
    puts 'Game created successfully.'
  end

  def create_author
    print 'First name: '
    fn = gets.chomp
    print 'Last name: '
    ln = gets.chomp
    Author.new(fn, ln)
    puts 'Author created successfully.'
  end

  def create_genre
    print 'Name: '
    name = gets.chomp
    Genre.new(name)
  end

  def create_music
    print 'Archived: '
    arc = gets.chomp
    print 'Publish date: '
    pd = gets.chomp
    print 'On spotify'
    os = gets.chomp
    MusicAlbum.new(arc, pd, os)
  end
end
