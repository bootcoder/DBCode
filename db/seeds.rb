User.create(username: "Bootcoder", email: "bootcoder@gmail.com", password: "123456")

Issue.create(issue_title: "Fuckity Fucks",
							 issue_language: "ruby", 
							 issue_priority: 7, 
							 issue_gist: "https://gist.github.com/bootcoder/9966851",
							 issue_location: "dbc18",
							 issue_content: "maybe i misspelled something,,, IDK",
							 issue_challenge: "https://gist.github.com/bootcoder/9966851",
							 issue_belongs_to: 1,
							 issue_active: true)

Comment.create(com_content: "Looks like you should be p'ing more in your routes",
 							 com_vote: 1, com_belongs_to_user: 1,
  						 com_belongs_to_issue: 1)