namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
	end
end

def make_users
	admin = User.create(username: "admin", password: "admin")

	15.times do |n|
		User.create(username: Faker::Name.name, 
					password: "foobar", password_confirmation: "foobar")
	end
end
