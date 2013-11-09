namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_buildings
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
