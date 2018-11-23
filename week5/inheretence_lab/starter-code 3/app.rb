require_relative "airport.rb"
require_relative "flight.rb"
require_relative "passenger.rb"
require_relative "terminal.rb"
require_relative "data.rb"
require_relative "menu.rb"

# Setup the dummy data
airports = Data.get_airports

  # CHOOSE AIRPORT
  Menu.clear_screen

  airports.each_with_index do |airport , index|
      puts "#{index}) #{airport.name}"
  end

  airport_index = Menu.display_airports_menu

  # set the current airport
  current_airport = airports[airport_index]



  # CHOOSE TERMINAL
  Menu.clear_screen

  # list the terminals
  current_airport.list_terminals

  terminal_index = Menu.display_terminal_menu

  # set the current terminal
  current_terminal = current_airport.terminals[terminal_index]



  # CHOOSE FLIGHT
  Menu.clear_screen

  # list the flights
  current_terminal.list_flights

  flight_index = Menu.display_flights_menu

  # set the current flight
  current_flight = current_terminal.flights[flight_index]

  # looping menu
  loop do

    option = Menu.display_options_menu

    Menu.clear_screen

    case option

    when 1

        puts "Passenger Manifest"
        Menu.spacer

        # list the passengers
        current_flight.list_passengers

    when 2

        puts "Add a passenger"
        Menu.spacer

        puts "First Name:"
        first_name = gets.chomp

        puts ""
        puts "Last Name:"
        last_name = gets.chomp

        puts ""
        puts "DOB:"
        dob = gets.chomp

        # create new passenger
        passenger = Passenger.new first_name, last_name, dob

        # add them to the flight
        current_flight.passengers.push passenger

        Menu.spacer
        puts "Passenger Added!"

    when 3

        puts "Choose a passenger to remove:"
        Menu.spacer

        # list the passengers
        current_flight.list_passengers 

        # get passenger id
        passenger_id = gets.chomp.to_i

        # remove from the flight
        current_flight.passengers.delete_at passenger_id

    end

    # wait
    Menu.spacer
    puts "Press a key"
    gets

  end


