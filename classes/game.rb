require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, archived, publish_date)
    super(archived, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [multiplayer, last_played_at, archived, publish_date]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end

  private

  def can_be_archived?
    super and (Time.new.year - @last_played_at.year) > 2
  end
end
