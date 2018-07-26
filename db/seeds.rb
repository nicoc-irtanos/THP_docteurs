require 'faker'

10.times do |doctor|
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Gender.binary_type, postal_code: Faker::Address.zip_code)
end

10.times do |patient|
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do |appointment|
  appointment = Appointment.create(date: Faker::Date.between(2.days.ago, Date.today), doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id) )
end
