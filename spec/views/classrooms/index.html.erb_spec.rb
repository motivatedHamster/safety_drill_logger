require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        :name => "Name1"
      ),
      Classroom.create!(
        :name => "Name2"
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    #assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => /Name[1-2]/, :count => 2
  end
end
