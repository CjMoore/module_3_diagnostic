require "rails_helper"

describe "when user searches with zip" do
  it "they see a list of the ten nearest stations" do
    VCR.use_cassette("services/search_response") do
      visit root_path

      fill_in("search", :with => "80203")
      click_on("Search")

      expect(current_path).to eq(search_path)
    end

    expect(page).to have_content("Stations")

    within("table") do
      expect(page).to have_content("Name")
      expect(page).to have_content("UDR")
      expect(page).to have_content("Tremont Street Garage")
    end
  end
end
