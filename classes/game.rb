require_relative 'item'

class Game < Item
  def initialize(multilayer, last_played_at, archived, publish_date)
    super(archived, publish_date)
    @multilayer = multilayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super and (Time.new.year - @last_played_at.year) > 2
  end
end
