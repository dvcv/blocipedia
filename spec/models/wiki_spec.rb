require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:user) { FactoryGirl::create(:user) }
  let(:my_wiki) { Wiki.create!(title: "New Post Title", body: "New Post Body", private: false, user: user) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:user) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(my_wiki).to have_attributes(title: "New Post Title", body: "New Post Body", private: false, user: user)
    end
  end
end
