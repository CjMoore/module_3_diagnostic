class NrelService

  def find_stations(location)
    parse(HTTParty.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_token']}&location=80203&limit=10&?radius=6.0&fuel_type=ELEC,LPG"))[:fuel_stations]
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
