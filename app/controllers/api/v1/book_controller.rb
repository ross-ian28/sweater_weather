class Api::V1::BookController < ApplicationController
  def show
    conn = Faraday.new("https://openlibrary.org")
    result = conn.get("/subjects/#{params["location"]}.json?limit=#{params["quantity"]}&details=true")

    data = JSON.parse(result.body, symbolize_names: true)
    binding.pry
    attr = {
      data: {
        attributes: {
          destination: "location"
        }
      }
    }
    render json: BookSerializer.new(attr)
  end
end
