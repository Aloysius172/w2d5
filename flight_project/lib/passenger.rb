require "passenger"

class Passenger
    
    attr_reader :name
    
    def initialize(name)
        @name = name
        @flight_numbers = Array.new
    end

    def has_flight?(string)
        @flight_numbers.include?(string.upcase) || @flight_numbers.include?(string.downcase) 
    end

    def add_flight(string)
        @flight_numbers << string.upcase if !has_flight?(string) 
    end
end