require "rails_helper"

describe "when user visits root" do
  it "they see a welcome message" do
    visit root_path

    expect(page).to have_content("Welcome")
  end

  it "they are able to fill out a search bar and click submit" do
    visit root_path

    fill_in("search", :with => "80203")
    click_on("Search")

    expect(current_path).to eq(search_path)
  end
end
