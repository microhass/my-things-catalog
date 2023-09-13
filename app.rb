require 'json'

# Classes
require_relative 'classes/item'
require_relative 'classes/book'
require_relative 'classes/label'

# Modules
require_relative 'modules/display_options'
require_relative 'modules/validate_input'
require_relative 'modules/object_creators'
require_relative 'modules/items_display'
require_relative 'modules/data_savers'
require_relative 'modules/data_loaders'

class App
  include DisplayOptions
  include InputValidators
  include ObjectCreators
  include ItemsDisplay
  include DataSavers
  include DataLoaders

  def initialize
    @books = load_books
    @labels = []
  end

  def run
    puts "Welcome to My Things Catalog App!\n"
  end

  def quit
    save_books
    puts 'Thank you for using the App! Have a nice time!'
  end
end
