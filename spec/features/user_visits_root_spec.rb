require "rails_helper"

describe "when user visits root" do
  it "they see a search bar" do
    visit root_path

    expect(page).to have_content("Welcome")
  end
end
