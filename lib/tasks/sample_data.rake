namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_buildings
	end
end

def make_users
	15.times do |n|
		first_name = Faker::Name.name
		last_name = Faker::Name.name
		salt = "salt"
		token = "token"
		User.create(first_name: first_name, last_name: last_name,
					salt: salt, token: token)
	end
end

def make_buildings
	15.times do |n|
		label = Faker::Lorem.word
		Building.create(label: label)
	end
end
