class DrillsGrid

  include Datagrid

  scope do
    Drill.select(
      "drills.date_performed, drills.created_at, drills.id, classrooms.name as classroom_name, teachers.name as teacher_name, teachers.email as teacher_email, drill_types.name as drill_name, drill_types.required_frequency as drill_frequency" ).joins(:classroom, :teacher, :drill_type)
  end

  filter(:created_at, :date, :range => true)
  filter(:date_performed, :date, :range => true)
  filter(:classroom_id, :enum,
    :select => lambda { Classroom.all.map {|c| [c.name, c.id]} },
    :multiple => true,
    :include_blank => false
  ) do |value|
    self.where(:drills => {:classroom_id => value})
  end
  filter(:teacher_id, :enum,
    :select => lambda { Teacher.all.map {|t| [t.name, t.id]} },
    :multiple => true,
    :include_blank => false
  ) do |value|
    self.where(:drills => {:teacher_id => value})
  end

  #  trying to group multiple drill types based on common name
#  dtype_names = DrillType.all.map {|d| [d.name, d.id]}
#  uniq_dtype_names = dtype_names.uniq {|d| d[:name]}
#  filter(:drill_type_id, :enum,
#    :select => uniq_dtype_names,
#    :multiple => true,
#    :include_blank => false
#  ) do |value|
#    self.where(:drills => {:drill_type_id => value})
#  end

  filter(:drill_type_id, :enum,
    :select => lambda { DrillType.all.map {|d| [d.name, d.id]} },
    :multiple => true,
    :include_blank => false
  ) do |value|
    self.where(:drills => {:drill_type_id => value})
  end

  column(:id)
  column(:created_at) do |model|
    model.created_at.to_date
  end
  column(:date_performed)
  column(:classroom_name)
  column(:teacher_name)
  column(:teacher_email)
  column(:drill_name)
  column(:drill_frequency)
end  # class DrillsGrid
