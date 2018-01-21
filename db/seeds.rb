@user = User.create!(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")


10.times do 

  post = Post.create(title: "OH. BOY", ranking: rand(1..10), topic: "stuff", comment: "comment", images: "http://via.placeholder.com/150x150", body: "awwwwwwwwwwwww snaaaaaaaaaapppppppppppppppp")

	[*1..15].sample.times do
	  post.upvote_by @user
	end

end

puts "made 100,000,000 posts y'all"

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
