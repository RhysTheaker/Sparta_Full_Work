class Menu

  def self.display_airports_menu

    # wait for user input
    print "Choose an airport: "

    # return the chosen option
    gets.chomp.to_i

  end

  def self.display_terminal_menu

    print "Choose a terminal: "

    # return the user's choice
    gets.chomp.to_i

  end

  def self.display_flights_menu

    print "Choose a flight:"

    # get the selected flight
    gets.chomp.to_i

  end

  def self.display_options_menu

    puts `clear`
    puts "Choose an option"
    puts ""
    puts "1) list all passengers on flight"
    puts "2) add a passenger to flight"
    puts "3) remove a passenger from flight"

    # get the user's option
    option = gets.chomp.to_i

  end

  def self.clear_screen
    puts `clear`
  end

  def self.spacer
    puts "--------"
  end

end
