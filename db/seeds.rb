User.create!(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

puts "1 user created"

Topic.create!(
	title: "Front End Resources"
	)


Topic.create!(
	title: "Back End Resources"
	)

Topic.create!(
	title: "Misc Resources"
	)


Topic.create!(
	title: "Ruby Resources"
	)


Topic.create!(
	title: "Rails Resources"
	)


Topic.create!(
	title: "Job Resources"
	)


Topic.create!(
	title: "Job Posting"
	)


puts "7 topics created"
