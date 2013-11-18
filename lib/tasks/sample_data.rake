namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_teachers
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

def make_teachers
	15.times do |n|
		Teacher.create(first_name: Faker::Name.first_name,
						last_name: Faker::Name.last_name)
	end
end

def make_users
	admin = User.create(username: "admin", teacher_id: 1,
						password: "admin", password_confirmation: "admin")

	15.times do |n|
		User.create(username: Faker::Name.name, 
					password: "foobar", password_confirmation: "foobar",
					teacher_id: (n + 1))
	end
end

def make_buildings
	15.times do |n|
		Building.create(label: Faker::Lorem.word)
	end
end

def make_characteristics
	15.times do |n|
		label = Faker::Lorem.word
		Characteristic.create(label: label)
	end
end

def make_time_slots
	TimeSlot.create(start_time: "8:00:00", end_time:"9:30:00");
	TimeSlot.create(start_time: "9:45:00", end_time:"11:15:00");
	TimeSlot.create(start_time: "11:30:00", end_time:"13:00:00");
	TimeSlot.create(start_time: "13:15:00", end_time:"14:45:00");
	TimeSlot.create(start_time: "15:00:00", end_time:"16:30:00");
	TimeSlot.create(start_time: "16:45:00", end_time:"18:15:00");
	TimeSlot.create(start_time: "18:30:00", end_time:"20:00:00");
end

def make_groups
	15.times do |n|
		label = Faker::Lorem.word
		Group.create(label: label, parent_id: 1)
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
		Mod.create(label: label, module_manager_id: 1)
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
		Room.create(label: label, capacity: Random.new.rand(30..60), building_id: (n + 1))
	end
end

def make_reservations
	15.times do |n|
		Reservation.create(date_time: Time.now, time_slot_id: (n + 1),
							room_id: (n + 1), teaching_id: (n + 1))
	end
end
