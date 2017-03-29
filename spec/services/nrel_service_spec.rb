require "rails_helper"

describe NrelService do

  describe "#find_stations" do
    it "returns an array of stations based on given location" do
      VCR.use_cassette("services/find_stations") do
        service = NrelService.new
        location = "80203"
        stations = service.find_stations(location)
        station = stations.first

        expect(stations.count).to eq(10)
        expect(station.keys).to include(:fuel_type_code)
        expect(station.keys).to include(:street_address)
        expect(station.keys).to include(:station_name)
        expect(station.keys).to include(:access_days_time)
      end
    end
  end
end
