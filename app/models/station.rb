class Station

  attr_reader :name,
              :address,
              :fuel_types,
              :access_times

  def initialize(data)
    @name = data[:name]
    @address = data[:address]
    @fuel_types = data[:distance]
    @access_times = data[:access_times]
  end

  def self.find_nearest_stations(location)
    serv = NrelService.new

  end

end
