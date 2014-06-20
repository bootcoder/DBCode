DevBootTracker

views needed
home 
	- sign in, sign out IF CU
	- list of current issues IF CU
	- button NEW ISSUE
	- 


NEW ISSUE
	- add form for gists input
	- bake in support for multiple gists
	- add slider selector for priority
	- add form feild for location or derive somehow....
	- new issue associated with CU cohort
	- assert languages. somehow

ISSUE_VIEW
	- view issue
	- display title
	- display all post related data
	- comment block
	- display comments in chron
	- IF CU is issue owner
		- display edit
		- display close issue
		- 

ALL_ISSUES
	-list of all issues
	-list by desc created_at
	-ability to filter issues
		-time
		-cohort - stretch
		-user - stretch




Routes
	- get '/'
		@all_issues
	- post '/'

	- get '/issues/new'

	- post '/issues/new'
		-populate DevBootTrackerDB

	- 





DB ISSUES
	- has topic
	- laungauge 
	- user_id
	- gist link
	- priority

DB USER
	- generate from socrates
