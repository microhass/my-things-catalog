require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, archived, publish_date, author)
    super(archived, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    author.add_item(self)
  end

  private

  def can_be_archived?
    super and (Time.new.year - @last_played_at.year) > 2
  end
end
