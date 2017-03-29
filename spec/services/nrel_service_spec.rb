require "rails_helper"

describe NrelService do

  describe "#find_stations" do
    VCR.use_cassette("services/find_stations") do

      service = NrelService.new
      stations = service.find_stations(location)
      station = stations.first

      expect(stations.count).to eq(10)
    end
  end
end
