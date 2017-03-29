require "rails_helper"

describe Station do
  context "methods" do
    it "can find list of stations from API call" do
      stations = [ {station_name: "station1",
                    street_address: "fake street",
                    fuel_type_code: "ELEC",
                    distance: 0.3,
                    access_days_time: "24HR"},
                    {station_name: "station2",
                                  street_address: "fake street",
                                  fuel_type_code: "ELEC",
                                  distance: 0.3,
                                  access_days_time: "24HR"}
                  ]

      location = "80203"

      NrelService.any_instance.stub(:find_stations).and_return(stations)

      returned_stations = Station.find_nearest_stations(location)

      expect(stations.count).to eq(2)
    end
  end
end
