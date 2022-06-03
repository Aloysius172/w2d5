require_relative "./passenger.rb"

class Flight

    attr_reader :passengers

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = Array.new
    end

    def full?
        if @passengers.length == @capacity
            return true
        elsif @passengers.length < @capacity
            return false
        end
    end

    def board_passenger(passenger)
        @passengers << passenger if !full? && passenger.has_flight?(@flight_number)   
    end

    def list_passengers  
        @passengers.map do |passenger|
            passenger.name
        end
    end

    def [](index)
        @passengers[index]
    end
    
    def <<(passenger)
        board_passenger(passenger)
    end
            

    
end