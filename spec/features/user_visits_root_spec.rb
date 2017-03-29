require "rails_helper"

describe "when user visits root" do
  it "they are able to fill out a search bar and click submit" do
    VCR.use_cassette("services/search_response") do
      visit root_path

      fill_in("q", :with => "80203")
      click_on("Locate")

      expect(current_path).to eq(search_path)
    end
  end
end
