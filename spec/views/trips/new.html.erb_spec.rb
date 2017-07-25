require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_latitude[name=?]", "trip[latitude]"

      assert_select "input#trip_longitude[name=?]", "trip[longitude]"

      assert_select "input#trip_address[name=?]", "trip[address]"

      assert_select "input#trip_description[name=?]", "trip[description]"
    end
  end
end
