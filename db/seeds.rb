# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# teacher_ = Teacher.create name: "", email: ""
teacher_jess = Teacher.create name: "Jess G", email: "jessG@foo.com"
teacher_patty = Teacher.create name: "Patty", email: "patty@foo.com"

# class_ = Classroom.create name: "", teacher: teacher_
class_adventurers = Classroom.create name: "adventurers", teacher: teacher_jess
class_discoverers = Classroom.create name: "discoverers", teacher: teacher_jess
class_imagineers = Classroom.create name: "imagineers", teacher: teacher_jess
class_inventors = Classroom.create name: "inventors", teacher: teacher_jess

# dtype_ = Drill_type.create name: "", required_frequency: "", classroom: class_
dtype_fire_discoverers = DrillType.create name: "fire", required_frequency: "monthly", classroom: class_discoverers
dtype_fire_imagineers = DrillType.create name: "fire", required_frequency: "monthly", classroom: class_imagineers
dtype_fire_inventors = DrillType.create name: "fire", required_frequency: "monthly", classroom: class_inventors

dtype_fire_adventurers = DrillType.create name: "fire", required_frequency: "quarterly", classroom: class_adventurers

dtype_quake_inventors = DrillType.create name: "earthquake", required_frequency: "twice_yearly", classroom: class_inventors
dtype_quake_imagineers = DrillType.create name: "earthquake", required_frequency: "twice_yearly", classroom: class_imagineers
dtype_quake_adventurers = DrillType.create name: "earthquake", required_frequency: "twice_yearly", classroom: class_adventurers
dtype_quake_discoverers = DrillType.create name: "earthquake", required_frequency: "twice_yearly", classroom: class_discoverers

# Drill.create date_performed: Date::strptime("", "%m-%d-%Y"), teacher: teacher_, classroom: class_, drill_type: dtype_
Drill.create date_performed: Date::strptime("04-22-2015", "%m-%d-%Y"), teacher: teacher_patty, classroom: class_discoverers, drill_type: dtype_fire_discoverers

Drill.create date_performed: Date::strptime("04-27-2015", "%m-%d-%Y"), teacher: teacher_jess, classroom: class_imagineers, drill_type: dtype_fire_imagineers

Drill.create date_performed: Date::strptime("04-27-2015", "%m-%d-%Y"), teacher: teacher_jess, classroom: class_inventors, drill_type: dtype_fire_inventors

Drill.create date_performed: Date::strptime("04-29-2015", "%m-%d-%Y"), teacher: teacher_jess, classroom: class_adventurers, drill_type: dtype_fire_adventurers

