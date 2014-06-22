DevBootTracker

**PENDING SERIOUS QUESTIONS**

** - should I continue with enbedded syntax hightlighed editor 
			OR should I go use GH gists, thinking a create a gist link on create
			page and a paste a gist link box. 

			PROS: would be that it would be much easier as well
			as being able to display multiple gists on display page.
			also user then has their own gist outside of DevBootTracker
			embedded editor is HARD to use.
			
			CONS: not nearly as clean, user has to potientially leave site 
			to complete issue creation, 
			
			- as a third option thing I could I suppose 
				create a plain text box that sends to
				GH API and returns a link to a created gist. 


** - how to do js dropdowns that dynamicly change page content.

** - what to do with DBC API data
		- how to handle user auth via DBC 
			- login through socrates ,,, NO
			- dont think I have access to DBC user/pass info
			- if user logs in local i will then just pull down 
				info based on username from DBCAPI
			-must therefore force u/n to === dbc socrates u/n

		- what does this mean for my DB
			- what do i really need in the users table if I
			- get the bulk of my data from DBC-API


** - 


VIEWS - needed

HOME 
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
	- assert languages- dropdown
	- publish to cohort or DBC general

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
	- location
	- challenge link

DB USER
	- generate from socrates
	- ability to post issues to cohort or public






************************************************
************************************************
	   						TODO TODO TODO
************************************************
************************************************

active record validations
check gist for .git removal 


for partial yields ???? 
set instance vars in Routes
**
session[:list] = true
to
@list = true



oauth implemenet
api get data from socrates
populate users table
add user info to post




************************************************
************************************************

wtf is up with create? and no CSS








