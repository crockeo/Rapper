# Name: ui.rb
# Author: Cerek Hillen
#
# Description:
#   The front-facing UI of the application. 

########
# Code #

# Checking if a given string is an integer.
def is_integer?(str)
  return str.to_i.to_s == str
end

# Running the UI and 
def run_ui()
  STDOUT.sync = true

  id = ''

  while id == '' do
    puts 'Enter the song ID.'
    print ' > '

    id = gets.chomp
    if not is_integer?(id) then
      id = ''
    end
  end

  return id.to_i
end
