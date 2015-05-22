class DrillsGrid

  include Datagrid

  scope do
    Drill
  end
  
#  scope do
#    Drill.select(
#      "drills.date_performed, classrooms.name as classroom_name")
#  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:id)
  # column(:name)
  column(:created_at) do |model|
    model.created_at.to_date
  end
  # :date_performed
  column(:date_performed)
  # class name
  column(:classroom) do |some_classroom|
    some_classroom.name
  end
  # teacher name
#  column(:teacher) do |some_teacher|
#    some_teacher.name
#  end
  # teacher email
#  column(:teacher) do |some_teacher|
#    some_teacher.email
#  end
  # drill_type name
#  column(:drill_type) do |some_drill_type|
#    some_drill_type.name
#  end
  # drill_type required frequency
#  column(:drill_type) do |some_drill_type|
#    some_drill_type.required_frequency
#  end
end  # class DrillsGrid
