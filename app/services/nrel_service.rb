class NrelService

  def find_stations(location)
    thing = parse(HTTParty.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=7cVnNT1bZJ1fItkn1saGbbSwSTq5aV2hSvVjuHBV&location=80203&limit=10&?radius=6.0&fuel_type"))[:fuel_stations]

    byebug
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
