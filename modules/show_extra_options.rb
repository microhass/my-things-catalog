module ShowExtOpt
  def show_extra_options(choice)
    case choice
    when 1
      puts 'Coming Shortly 1'
    when 2
      puts 'Coming Shortly 2'
    when 3
      list_games
    when 4
      puts 'Coming Shortly 4'
    when 5
      puts 'Coming Shortly 5'
    when 6
      list_authors
    when 7
      puts 'Coming Shortly 7'
    when 8
      puts 'Coming Shortly 8'
    when 9
      create_game
    end
  end
end
