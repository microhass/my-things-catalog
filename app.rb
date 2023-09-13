# Classes
require_relative 'classes/item'
require_relative 'classes/game'
require_relative 'classes/author'

# Modules
require_relative 'modules/display_options'
require_relative 'modules/validate_input'
require_relative 'modules/list_games'
require_relative 'modules/list_authors'
require_relative 'modules/create_game'
require_relative 'modules/show_extra_options'

class App
  include DisplayOptions
  include InputValidators
  include ShowExtOpt
  include CreateGame
  include ListAuthors
  include ListGames

  def run
    puts "Welcome to My Things Catalog App!\n"
  end

  def quit
    puts 'Thank you for using the App! Have a nice time!'
  end
end
