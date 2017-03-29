class Station

  attr_reader :name,
              :address,
              :fuel_types,
              :access_times

  def initialize(data)
    @name = data[:station_name]
    @address = data[:street_address]
    @fuel_types = data[:fuel_type_code]
    @access_times = data[:access_days_time]
  end

  def self.find_nearest_stations(location)
    serv = NrelService.new
    serv.find_stations.map do |station_data|
      Station.new(station_data)
    end
  end

end
