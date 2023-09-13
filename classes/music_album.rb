require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(genre, author, source, labor, publish_date)
    super(genre, author, source, labor, publish_date)
    @on_spotify = on_spotify
  end
end
