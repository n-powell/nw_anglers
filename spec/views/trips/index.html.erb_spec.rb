require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :address => "Address",
        :description => "Description"
      ),
      Trip.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :address => "Address",
        :description => "Description"
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
