require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :name => "Name1",
        :email => "Email"
      ),
      Teacher.create!(
        :name => "Name2",
        :email => "Email"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    #assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select ".teacher > td", :text => /Name[1-2]/, :count =>2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
