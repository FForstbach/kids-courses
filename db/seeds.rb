# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

school_seed = Rails.root.join('db', 'seeds', 'schools.yml')
schools = YAML::load_file(school_seed)
puts "We have #{schools.count} schools in schools.yml"
puts schools.size

puts "Creating #{schools.count} schools..."
schools.each_with_index do |school, index|
  s = School.find_or_initialize_by(id: index + 1)
  s.name = school["name"]
  s.about = school["about"]
  s.location = school["location"]
  s.save!
  print "."
end

seed_file = Rails.root.join('db', 'seeds', 'courses.yml')
courses = YAML::load_file(seed_file)
puts "We have #{courses.count} courses in courses.yml"
puts courses.size

puts "Creating #{courses.count} courses..."
courses.each_with_index do |course, index|
  c = Course.find_or_initialize_by(id: index + 1)
  c.title = course["title"]
  c.subtitle = course["subtitle"]
  c.description = course["description"]
  c.capacity = rand(12..20)
  c.price = course["price"]
  c.school = School.find_by(name: course['school'])
  c.save!
  print "."
end

