# require 'rails_helper'
#
# RSpec.describe Response, type: :model do
#   Post.new(name: "Max", title: "test", content: "test", id: 1, created_at: "2080-12-12 00:00:00", updated_at: "2080-12-12 00:00:00")
#   subject { Response.new(name: "Max", content: "test", post_id: 1, created_at: "2080-12-12 00:00:00", updated_at: "2080-12-12 00:00:00") }
#
#   describe "Validations" do
#     it "is valid with valid attributes" do
#       expect(subject).to be_valid
#     end
#
#     it "is not valid without a post id" do
#       subject.post_id = nil
#       expect(subject).to_not be_valid
#     end
#
#
#   end
# end
