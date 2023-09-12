Class Item
attr_accessor :archived, :publish_date

def initialize(archived, publish_date)
  @id = generate_unique_id
  @archived = archived
  @publish_date = publish_date
end

def generate_unique_id
  timestamp = Time.now.to_i * 1000
  random_number = rand(10_000)
  "#{timestamp}#{random_number}"
end
