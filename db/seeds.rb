# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[ "African",
  "Asian",
  "European",
].each do |name|
    Category.create(name: name)
end

categories = Category.all

10.times do
  Restaurant.create(name: Faker::Company.name, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number)



# [
#   "Dentist",
#   "Chiropractor",
#   "Family Physician",
#   "Physiotherapist",
#   "Phrenologist",
# ].each do |name|
#   Specialty.create(name: name)
# end

# specialties = Specialty.all

# 10.times do
#   Doctor.create(name: Faker::Name.name, opening_time: 9, closing_time: 17, specialty: specialties.sample)
# end

# 30.times do
#   Patient.create(name: Faker::Name.name, email: Faker::Internet.email, password: "abcd")
# end

# docs = Doctor.all
# pats = Patient.all

# 30.times do
#   Appointment.create(doctor: docs.sample, patient: pats.sample, time: rand(9..18), date: "2015-04-25")
# end