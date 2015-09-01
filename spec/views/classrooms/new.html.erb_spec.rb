require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      :name => "MyString"
    ))
    assign(:teacher_options, [ ["t1", :id => 1], ["t2", :id => 2] ])
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"
    end
  end
end
