require 'rails_helper'

RSpec.describe "trips/edit", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input#trip_latitude[name=?]", "trip[latitude]"

      assert_select "input#trip_longitude[name=?]", "trip[longitude]"

      assert_select "input#trip_address[name=?]", "trip[address]"

      assert_select "input#trip_description[name=?]", "trip[description]"
    end
  end
end
