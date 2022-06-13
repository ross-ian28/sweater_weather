require "rails_helper"

RSpec.describe "weather api" do
  it "returns forcast data for a location" do
    get "/api/v1/forecast?location=Denver,CO"

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end
end
