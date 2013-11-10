namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_buildings
		make_characteristics
		make_time_slots
		make_groups
		make_lesson_types
		make_mods
		make_subjects
		make_lessons
		make_teachings
		make_reservation_requests
		make_rooms
		make_reservations
	end
end

def make_users
	admin = User.create(name: "admin", email: "admin@um2.fr",
						admin: true, teacher: true,
						password: "admin", password_confirmation: "admin")

	15.times do |n|
		name = Faker::Name.name
		email = Faker::Internet.email
		User.create(name: name, email: email,
					admin: false, teacher: false,
					password: "foobar", password_confirmation: "foobar")
	end
end

def make_buildings
	15.times do |n|
		label = Faker::Lorem.word
		Building.create(label: label)
	end
end

def make_characteristics
	15.times do |n|
		label = Faker::Lorem.word
		Characteristic.create(label: label)
	end
end

def make_time_slots
	15.times do |n|
		start_time = Time.now
		end_time = Time.at(1.hour.from_now)
		TimeSlot.create(start_time: start_time, end_time: end_time)
	end
end

def make_groups
	15.times do |n|
		label = Faker::Lorem.word
		Group.create(label: label)
	end
end

def make_lesson_types
	15.times do |n|
		label = Faker::Lorem.word
		LessonType.create(label: label)
	end
end

def make_mods
	15.times do |n|
		label = Faker::Lorem.word
		Mod.create(label: label)
	end
end

def make_subjects
	15.times do |n|
		label = Faker::Lorem.word
		Subject.create(label: label, module_id: (n + 1))
	end
end

def make_lessons
	15.times do |n|
		label = Faker::Lorem.word
		Lesson.create(label: label, lesson_type_id: (n + 1),
						subject_id: (n + 1), )
	end
end

def make_teachings
	15.times do |n|
		Teaching.create(group_id: (n + 1), lesson_id: (n + 1),
						teacher_id: (n + 1))
	end
end

def make_reservation_requests
	15.times do |n|
		ReservationRequest.create(date_time: Time.now, time_slot_id: (n + 1),
									teaching_id: (n + 1))
	end
end

def make_rooms
	label = Faker::Lorem.word
	15.times do |n|
		Room.create(label: label, capacity: (25 + n), building_id: (n + 1))
	end
end

def make_reservations
	15.times do |n|
		Reservation.create(date_time: Time.now, time_slot_id: (n + 1),
							room_id: (n + 1), teaching_id: (n + 1))
	end
end
