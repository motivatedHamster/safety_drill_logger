require "rails_helper"

describe "story 1 drills list sort by class" do

  before do
    user = User.create(:email    => "test@test.com",
                       :password => "p@$sw0rd")
    visit "/users/sign_in"
    fill_in "Email",    :with => "test@test.com"
    fill_in "Password", :with => "p@$sw0rd"
    click_button "Sign in"
  end

  it "user logs in and gets the drills list page" do
    expect(page.current_path).to eql(root_path)
  end

  it "search by a classroom name and see drills for this classroom"
    # need to build out sample data
  it "log out and get sign-in page" #do
    #click_link "Log out"
    #expect(page.current_path).to eql(user_sign_in_path)
    # need correct label for sign in page
  end
end
