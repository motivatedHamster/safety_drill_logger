require "rails_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "test@test.com",
                       :password => "p@$sw0rd")

    visit "/users/sign_in"

    fill_in "Email",    :with => "test@test.com"
    fill_in "Password", :with => "p@$sw0rd"

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end
