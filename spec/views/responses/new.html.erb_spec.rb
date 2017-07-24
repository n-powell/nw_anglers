require 'rails_helper'

RSpec.describe "responses/new", type: :view do
  before(:each) do
    assign(:response, Response.new(
      :name => "MyString",
      :content => "MyText",
      :post_id => 1
    ))
  end

  it "renders new response form" do
    render

    assert_select "form[action=?][method=?]", responses_path, "post" do

      assert_select "input#response_name[name=?]", "response[name]"

      assert_select "textarea#response_content[name=?]", "response[content]"

      assert_select "input#response_post_id[name=?]", "response[post_id]"
    end
  end
end
