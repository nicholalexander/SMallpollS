#SMallpollS

##Description
QuickPoll seeks to allow non-profits and NGO's operating in SMS only markets a way to collect data from their customers in a meanigful way and give them insight into their business, operations, and customer needs.

##Data Models
####ERD Diagram
![ERD](http://i.imgur.com/sqrhzy0.jpg)

####Organization

	has_many campaigns
	
	attributes: name, location, URL, size, billing information
	
####Campaign

	belongs_to organization
	has_many questions
	
	attributes results, percent_completed, active
	
####Questions

	belongs_to campaign
	has_many responses
	
	attributes: content, type

####Respondent

	has_many campaigns
	has_many responses
	
	attributes: name, location, points

####Responses

	belongs_to question
	belongs_to respondent
	
	attributes: content

##Wireframes

1. Campaign Dashboard
2. Create Campaign
3. Manage Campaign
4. Review Campaign

![Wireframe](https://nicholalexander.mybalsamiq.com/mockups/1349673.png?key=9c382eab892b8f18fe9c2da3117c60f623e669d3)

[Balsamiq WireFrame Site](https://nicholalexander.mybalsamiq.com/projects/smallpolls/grid)

##User Stories

####Organizations
* As an organization I want to create a new campaign so that I can find out how my customers feel about something.
* As an organization I want to add pollee's to an existing campaign so that I can get their input.
* As an organization I want to add questions to my campaign so that I can find out something specific.
* As an organization I want to be able to initiate a campaign so that I can begin receiving responses.
* As an organization I want to be able to close a campaign so that I can stop receiving responses.
* As an organization I want to be able to review the results of the campaign so that I can understand my issue.

####Respondents
* As a respondent I want to answer the question so that I can have my voice heard.
* As a respondent I want to know how many questions are left so that I don't quit in the middle of the poll.

####V2.0
* As an organization I want to reward a pollee for finishing all the questions so that they will take another poll in the future.
* As a respondent I want to redeem my award in order to get something cool.

##Key Gems & Technologies

* HAML
* Backbone
* Chart.js
* Foundation
* Jasmine
* Capybara
* Devise
* Twillio

##Links

[GitHub](https://github.com/nicholalexander/SMallpollS)
[Pivotal Tracker](https://www.pivotaltracker.com/s/projects/974052)

