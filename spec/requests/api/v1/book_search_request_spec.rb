require "rails_helper"

RSpec.describe "open library api" do
  it "returns books and weather based on location" do
    get "/api/v1/book-search?location=denver&quantity=5"

    expect(response).to be_successful

    data = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(data).to have_key(:id)
    expect(data[:id]).to be(nil)

    expect(data).to have_key(:type)
    expect(data[:type]).to eq("books")

    expect(data[:attributes]).to have_key(:destination)
    expect(data[:attributes][:destination]).to be_a(String)

    # expect(data[:attributes][:forecast]).to have_key(:summary)
    # expect(data[:attributes][:forecast][:summary]).to be_a(String)
    #
    # expect(data[:attributes][:forecast]).to have_key(:temperature)
    # expect(data[:attributes][:forecast][:temperature]).to be_a(String)
    #
    # expect(data[:attributes]).to have_key(:total_books_found)
    # expect(data[:attributes][:total_books_found]).to be_an(Integer)
    #
    # expect(data[:attributes][:books][0]).to have_key(:isbn)
    # expect(data[:attributes][:books][0][:isbn]).to be_an(Array)
    # expect(data[:attributes][:books][0][:isbn][0]).to be_a(String)
    #
    # expect(data[:attributes][:books][0]).to have_key(:title)
    # expect(data[:attributes][:books][0][:title]).to be_a(String)
    #
    # expect(data[:attributes][:books][0]).to have_key(:publisher)
    # expect(data[:attributes][:books][0][:publisher]).to be_a(String)
  end
end
