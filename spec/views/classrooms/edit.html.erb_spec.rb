require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :name => "MyString"
    ))
    assign(:teacher_options, [ ["t1", :id => 1], ["t2", :id => 2] ])
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"
    end
  end
end
