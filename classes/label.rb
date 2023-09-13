class Label
  attr_accessor :title, :color, :id, :items

  def initialize(title, color, id: Time.new.to_i)
    @id = id
    @title = title
    @color = color
    @items = []
  end
end
