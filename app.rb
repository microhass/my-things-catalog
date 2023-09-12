# Classes
require_relative 'classes/item'

# Modules
require_relative 'modules/display_options'
require_relative 'modules/validate_input'

class App
  include DisplayOptions
  include InputValidators

  def run
    puts "Welcome to My Things Catalog App!\n"
  end

  def quit
    puts 'Thank you for using the App! Have a nice time!'
  end
end
