module CreateGame
  def create_game
    print 'Multiplayer: '
    mp = gets.chomp
    print 'Last played at: '
    lp = gets.chomp
    print 'Archived: '
    arc = gets.chomp
    print 'Published date: '
    pd = gets.chomp
    puts "Select or create author: \n\n"
    puts 'Serial Number: 0 Create author: '
    list_authors
    authopt = gets.chomp.to_i
    auth = select_auth(authopt)

    Game.new(mp, lp, arc, pd, auth)
    puts 'Game created successfully.'
  end

  def select_auth(authopt)
    case authopt
    when 0
      print "\nEnter first name: "
      fn = gets.chomp
      print 'Enter last name: '
      ln = gets.chomp
      auth = Author.new(fn, ln)
    else
      all_instances = ObjectSpace.each_object(Author).to_a
      auth = all_instances[authopt - 1]
    end
    auth
  end
end
