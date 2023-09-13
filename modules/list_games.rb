module ListGames
  def list_games
    s_no = 1
    ObjectSpace.each_object(Game) do |obj|
      print "Serial Number: #{s_no}, Multiplayer: #{obj.multiplayer} Last played at: #{obj.last_played_at} "
      puts "Author: #{obj.author.first_name} #{obj.author.last_name}"
      s_no += 1
    end
  end
end
