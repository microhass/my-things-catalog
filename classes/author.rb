class Author
  attr_accessor :first_name, :last_name, :items
  attr_reader :id

  def initialize(first_name, last_name)
    @id = generate_unique_id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [first_name, last_name]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end

  private

  def generate_unique_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "Aut#{timestamp}#{random_number}"
  end
end
