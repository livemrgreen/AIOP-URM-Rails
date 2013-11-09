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
		User.create(name: name, email: email,
					admin: admin, teacher: teacher)
	end
end

def make_buildings
	15.times do |n|
		label = Faker::Lorem.word
		Building.create(label: label)
	end
end
