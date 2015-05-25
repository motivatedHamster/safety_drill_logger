class DrillsGrid

  include Datagrid

#  scope do
#    Drill
#  end
  
  scope do
    Drill.select(
      "drills.date_performed, drills.created_at, drills.id, classrooms.name as classroom_name, teachers.name as teacher_name, teachers.email as teacher_email, drill_types.name as drill_name, drill_types.required_frequency as drill_frequency" ).joins(:classroom, :teacher, :drill_type)
  end

  #filter(:id, :integer)
  filter(:created_at, :date, :range => true)
  filter(:date_performed, :date, :range => true)
#  filter(:classroom_name)
  filter(:classroom_id, :enum,
    :select => lambda {Classroom.all.map {|c| [c.name, c.id]}},
    :multiple => true,
    :include_blank => false
  ) do |value|
    self.where(:drills => {:classroom_id => value})
  end
#  filter(:teacher_name)
#  filter(:drill_name)

  column(:id)
  # column(:name)
  column(:created_at) do |model|
    model.created_at.to_date
  end
  # :date_performed
  column(:date_performed)
  # class name
  column(:classroom_name)
  # teacher name
  column(:teacher_name)
  # teacher email
  column(:teacher_email)
  # drill_type name
#  column(:drill_type) do |some_drill_type|
#    some_drill_type.name
#  end
  column(:drill_name)
  # drill_type required frequency
#  column(:drill_type) do |some_drill_type|
#    some_drill_type.required_frequency
#  end
  column(:drill_frequency)
end  # class DrillsGrid
