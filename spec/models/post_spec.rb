require 'rails_helper'

RSpec.describe Response, type: :model do
  subject { Post.new(name: "Max", title: "test", content: "test", id: 1, created_at: "2080-12-12 00:00:00", updated_at: "2080-12-12 00:00:00") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end
end
