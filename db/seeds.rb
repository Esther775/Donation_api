# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name:"Mike", profile_picture: "no picture yet", email: "mike@mike.com", password: "password", location: "New York", bio: "Im a painter", monthly_donation_amount: "30" , passion: "loves hunting" , links: "me.com") 
User.create(name:"John Doe", profile_picture: "no picture yet", email: "John@Doe.com", password: "password", location: "Buffalo", bio: "Architect", monthly_donation_amount: "100" , passion: "loves pottery" , links: "yo.com")
User.create(name:"Jordan", profile_picture: "no picture yet", email: "Jordan@Boardman.com", password: "password", location: "SC", bio: "has a daughter", monthly_donation_amount: "150", passion: "loves music" , links: "us.com")
User.create(name:"Esther", profile_picture: "no picture yet", email: "Esther@Morris.com", password: "password", location: "MD", bio: "has a son", monthly_donation_amount: "10", passion: "loves food" , links: "popcorn.com")

Catagory.create(name: "Wildlife") #1
Catagory.create(name: "Health") #2
Catagory.create(name: "Enviornment") #3
Catagory.create(name: "World Hunger") #4
Catagory.create(name: "Emergency Response") #5
Catagory.create(name: "Education") #6

Nonprofit.create(name: "American Red Cross", catagory_id:"2", description: "takes blood", website: "AmericanRedCross.org", picture: "none yet")
Nonprofit.create(name: "Save the Whales", catagory_id:"1", description: "animal in danger", website: "Savethem.org", picture: "none yet")
Nonprofit.create(name: "Clean Water", catagory_id:"3", description: "Clean the oceans", website: "purewater.com", picture: "none yet")
Nonprofit.create(name: "Feed AAfrica", catagory_id:"4", description: "Clean the oceans", website: "purewater.com", picture: "none yet")

UserNonprofit.create(user_id:1, nonprofit_id:1)
UserNonprofit.create(user_id:1, nonprofit_id:2)
UserNonprofit.create(user_id:1, nonprofit_id:3)
UserNonprofit.create(user_id:2, nonprofit_id:1)
UserNonprofit.create(user_id:2, nonprofit_id:2)
UserNonprofit.create(user_id:2, nonprofit_id:3)