## Camp Roster ##

#### Description of app ####

Welcome! Thanks for checking out my camp roster app.  This is meant to serve camp directors and counselors looking to store all camper data in a centralized location.  Users can input camper information like name, allergies, and parent contact info.  If a user has created a particular camper profile, they have permission to update or delete it.

#### Links ####

- [Camp Roster Application](https://drekaygran.github.io/camp-roster-client/)
- [Client GitHub Repo](https://github.com/drekaygran/camp-roster-client)
- [Backend Heroku Site](https://pure-journey-45232.herokuapp.com/)

#### Technologies used ####
- HTML/CSS
- Javascript
- Ruby on Rails
- Handlebars
- Atom

#### Unsolved Problems ####

- Connect campers to sessions as a many-to-many relationship
- Allow varied user priviledges, like administrators can edit all campers and standard users can only view them
- Update styling to improve user experience
- Add another type of user who is a parent that can view their child's data only and make requests to the administrators to update them as needed
- I'd like to use Handlebars more fully in future versions of this app in order to section the html code more clearly and easily

#### Development Process and Problem Solving ####

When I first started, my plan was to have each user in charge of a given camp session.  Then I would establish a one-to-many relationship between the session and the camper.  However, it made more sense to start by just having the relationship be between a user and camper.  A camp session is something I would add in later as a many-to-many relationship.  When faced with bugs or errors, I read errors carefully and inspected to the code that was referenced.  Sometimes I'd find the issue right away, other times, I'd find it after deeper searching, fiddling, googling, or asking for help.

#### Entity Relationship Diagram ####

This was my original ERD.  As stated in my Development Process, I did make some adaptations after getting started.

![Imgur](https://i.imgur.com/ZHNffJY.jpg)
