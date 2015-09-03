require 'rails_helper'

RSpec.describe "Classrooms", type: :request do

  before do
    user = User.create(:email    => "test@test.com",
                       :password => "p@$sw0rd")

    visit "/users/sign_in"

    fill_in "Email",    :with => "test@test.com"
    fill_in "Password", :with => "p@$sw0rd"

    click_button "Sign in"
  end

  describe "GET /classrooms" do
    it "works! (now write some real specs)" do
      get classrooms_path
      expect(response).to have_http_status(200)
    end
  end
end
