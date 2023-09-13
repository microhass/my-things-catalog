require_relative 'item'

class Book < Item
  def initialize(archived, publish_date)
    super(archived, publish_date)
    p 'book instance'
  end
end
