class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end


class Trip

  def initialize
    @destinations = []
  end

  def add_destination(name)
    new_destination = Location.new(name)
    @destinations << new_destination
    return new_destination
  end

  def destinations
    @destinations
  end

  def print_itinerary
    puts "Began trip."

    @destinations.each_cons(2) do |destination|
      puts "Travelled from #{ destination[0].name } to #{ destination[1].name}."
    end

    puts "Ended trip."
  end

end

dream_trip = Trip.new

dream_trip.add_destination("Paris")
dream_trip.add_destination("Rio de Janeiro")
dream_trip.add_destination("Australia")
dream_trip.add_destination("Istanbul")

puts dream_trip.destinations.inspect

puts dream_trip.print_itinerary
