require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  let(:user) { create(:user) }

  describe "#user_favorites(user)" do

    it "returns 'nil' if the user has not favorited any posts" do
      expect(user_favorites(user)).to be_nil
    end

    it "returns list of favorited posts" do
      expect(user_favorites(user)).to eq(user.favorites)
    end
  end
end
