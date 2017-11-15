require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl::create(:user) }
  let(:my_wiki) { Wiki.create!(title: "New Wiki Title", body: "New Wiki Body", private: false, user: user) }

  it { is_expected.to have_many(:wikis) }

end
