namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_buildings
	end
end

def make_users
	15.times do |n|
		name = Faker::Name.name
		email = Faker::Internet.email
		admin = false
		teacher = false
		password = "foobar"
		password_confirmation = "foobar"
		User.create(name: name, email: email,
					admin: admin, teacher: teacher,
					password: password, password_confirmation: password_confirmation)
	end
end

def make_buildings
	15.times do |n|
		label = Faker::Lorem.word
		Building.create(label: label)
	end
end
