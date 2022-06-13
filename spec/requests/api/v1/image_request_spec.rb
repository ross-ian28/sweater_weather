require "rails_helper"

RSpec.describe "weather api" do
  it "returns a background image based on location" do
    get "/api/v1/backgrounds?location=Denver,CO"

    expect(response).to be_successful
    binding.pry
  end
end
