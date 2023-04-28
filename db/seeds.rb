# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(name:"Mike", profile_picture: "no picture yet", email: "mike@mike.com", password: "password", location: "New York", bio: "Im a painter", monthly_donation_amount: "30" , passion: "loves hunting" , links: "me.com") 
# User.create(name:"John Doe", profile_picture: "no picture yet", email: "John@Doe.com", password: "password", location: "Buffalo", bio: "Architect", monthly_donation_amount: "100" , passion: "loves pottery" , links: "yo.com")
# User.create(name:"Jordan", profile_picture: "no picture yet", email: "Jordan@Boardman.com", password: "password", location: "SC", bio: "has a daughter", monthly_donation_amount: "150", passion: "loves music" , links: "us.com")
# User.create(name:"Esther", profile_picture: "no picture yet", email: "Esther@Morris.com", password: "password", location: "MD", bio: "has a son", monthly_donation_amount: "10", passion: "loves food" , links: "popcorn.com")

# Catagory.create(name: "Wildlife") #1
# Catagory.create(name: "Health") #2
# Catagory.create(name: "Enviornment") #3
# Catagory.create(name: "World Hunger") #4
# Catagory.create(name: "Emergency Response") #5
# Catagory.create(name: "Education") #6

Nonprofit.create(name: "American Red Cross", catagory_id:"2", description: "The American Red Cross, also known as the American National Red Cross, is a non-profit humanitarian organization that provides emergency assistance, disaster relief, and disaster preparedness education in the United States.", website: "AmericanRedCross.org", picture: "https://www.robeson.edu/wp-content/uploads/redcross.jpg")
Nonprofit.create(name: "Save the Whales", catagory_id:"1", description: "animal in danger", website: "Savethem.org", picture: "none yet")
Nonprofit.create(name: "The Ocean Cleanup", catagory_id:"3", description: "he Ocean Cleanup is a nonprofit environmental engineering organization based in the Netherlands, that develops technology to extract plastic pollution from the oceans and intercept it in rivers before it can reach the ocea", website: "OceanCleanup.org", picture: "https://assets.theoceancleanup.com/app/uploads/2020/01/1911-The-Ocean-Cleanup-BoyaninAsia-DvdK-1111149-960x640.jpg")
Nonprofit.create(name: "he Nature Conservancy",catagory_id:"3", description: "Founded in the U.S. through grassroots action in 1951, The Nature Conservancy (TNC) has grown to become one of the most effective and wide-reaching environmental organizations in the world. Thanks to more than a million members and the dedicated efforts of our diverse staff and over 400 scientists, we impact conservation in 79 countries and territories: 37 by direct conservation impact and 42 through partners.", website: "purewater.com", picture: "https://cooksoncommunications.com/wp-content/uploads/Nature-C-logo.jpg")
Nonprofit.create(name: "ASPCA", catagory_id:"2", description: "The American Society for the Prevention of Cruelty to Animals is a non-profit organization dedicated to preventing animal cruelty. Based in New York City since its inception in 1866, the organization's mission is to provide effective means for the prevention of cruelty to animals throughout the United States.", website: "purewater.com", picture:"https://yt3.googleusercontent.com/ytc/AGIKgqMzlPHbduSCIRihb1HKZDI-pH0q5Jvd7kTRpnkU2hI=s900-c-k-c0x00ffffff-no-rj")

# UserNonprofit.create(user_id:1, nonprofit_id:1)
# UserNonprofit.create(user_id:1, nonprofit_id:2)
# UserNonprofit.create(user_id:1, nonprofit_id:3)
# UserNonprofit.create(user_id:2, nonprofit_id:1)
# UserNonprofit.create(user_id:2, nonprofit_id:2)
# UserNonprofit.create(user_id:2, nonprofit_id:3)