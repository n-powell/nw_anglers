# require 'rails_helper'
#
# RSpec.describe "responses/edit", type: :view do
#   before(:each) do
#     @response = assign(:response, Response.create!(
#       :name => "MyString",
#       :content => "MyText",
#       :post_id => 1
#     ))
#   end
#
#   it "renders the edit response form" do
#     render
#
#     assert_select "form[action=?][method=?]", response_path(@response), "post" do
#
#       assert_select "input#response_name[name=?]", "response[name]"
#
#       assert_select "textarea#response_content[name=?]", "response[content]"
#
#       assert_select "input#response_post_id[name=?]", "response[post_id]"
#     end
#   end
# end
