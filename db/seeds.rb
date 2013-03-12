# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Trip.create(name: 'Food For Thought', subtitle: 'Food, Justice, and Sustainability', location: 'Greater Bay Area, CA', 
description: 'Hi', current_trip_instance_id: 1)  #ID = 1
Trip.create(name: 'Give Me Shelter', subtitle: 'An Exploration of Homelessness and Poverty', location: 'Bay Area and Sacramento, CA', description: 'Hi', current_trip_instance_id: 2)
Trip.create(name: 'Holistic Harvest', subtitle: 'Rural Communities in the Central Valley', location: 'Central Valley, CA', description: 'Hi')
Trip.create(name: 'Voices of the Unheard', subtitle: 'The Struggle for Equality and Rights in Indian Country', location: 'Campo Kumeyaay, CA', description: 'Hi')
Trip.create(name: 'Premium Health, High Premium', subtitle: 'The Issues with U.S. Healthcare', location: 'Los Angeles, CA', description: 'Hi')
Trip.create(name: 'San Diego/Tijuana', subtitle: 'Too Many Walls, Not Enough Bridges', location: 'San Diego, CA & Tijuana, Mexico', description: 'Hi')
Trip.create(name: 'NOLA', subtitle: 'Hidden, Revealed, Forgotten', location: 'New Orleans, LA', description: 'Hi')
Trip.create(name: 'We Are All Arizona', subtitle: 'Confronting the Attacks on Difference', location: 'Phoenix and Tuscon, AZ', description: '')
Trip.create(name: 'Where The Wild Things Are', subtitle: 'Rethinking Social Justice to Include Our Furry Friends', location: 'Southern and Central Oregon', description: 'Hi', current_trip_instance_id: 3, latitude: 38.00, longitude: -122.00)

TripInstance.create(trip_id: 1, year: 2013, description: 'Awesomee') # ID = 1
TripInstance.create(trip_id: 2, year: 2012, description: 'Very cool') #ID = 2
TripInstance.create(trip_id: 9, year: 2013, description: 'Have you ever heard the wolf cry to the blue corn moon, or asked the grinning bobcat why he grins? From the squirrels that run about the trees and telephone wires of our own Berkeley campus to the untamed beasts of the unfamiliar wilderness, we’re surrounded by creatures big and small. And there’s something about us and these creatures – a fascination, a passion, a connection, an indescribably intense yearning to understand – and again and again, we give into our curiosities and instincts. Yet in our anthropocentric society, we often overlook pressing animal welfare issues and repeatedly turn a blind eye to even the most outrageous of unmasked truths. We live in a world of sensitive ecology, but all too often fail to consider the repercussions of our actions on our Earth’s co-inhabitants in the hunt for our own convenience and benefit. In our DeCal, we’ll familiarize ourselves with some of the nation’s most pressing animal welfare issues, including past and current animal welfare legislation, lab testing, pet overpopulation, shelter policy, wildlife preservation, and domestic animal abuse, through classroom debate and discussion, guest lectures, and field trips to local facilities, such as animal shelters and wildlife hospitals. Having acquainted ourselves with the local air, we’ll make our way up to southern Oregon where participants will have the opportunity to engage with, learn from, and contribute to the efforts of our community partners at animal shelters, preserves, and sanctuaries. As in the words of our past leaders, we hope that our trip participants will conclude their semester knowing that they can be an impenetrable voice for those who have no words, after having experienced firsthand the silent, living testaments to stories of mistreatment, neglect, but most strikingly and lastingly, of strength and resilience.') #ID = 2

User.create(first_name: 'Kati', last_name: 'Hinman', email: 'kati.hinman@gmail.com', password: 'password', major: 'Unknown', grad_year: 2013) # Admin/Director, ID = 1
TripPermission.create(trip_instance_id: 1, user_id: 1, permission: 0)
User.create(first_name: 'Jay', last_name: 'Ryoo', email: 'jay.ryoo@gmail.com', password: 'password', major: 'CS/MCB', grad_year: 2013) # Break Leader, ID = 2
TripPermission.create(trip_instance_id: 1, user_id: 2, permission: 1)
User.create(first_name: 'Justin', last_name: 'Chan', email: 'hellojustinchan@gmail.com', password: 'password', major: 'EECS', grad_year: 2014) # Member, ID = 3
TripPermission.create(trip_instance_id: 1, user_id: 3, permission: 2)
User.create(first_name: 'Harrison', last_name: 'Tsai', email: 'harrisontsai0123@gmail.com', password: 'password', major: 'EECS', grad_year: 2015) # Member, ID = 4
TripPermission.create(trip_instance_id: 1, user_id: 4, permission: 2)
User.create(first_name: 'Noah', last_name: 'Gilmore', email: 'noah.w.gilmore@gmail.com', password: 'password', major: 'EECS', grad_year: 2015) # Member, ID = 5
TripPermission.create(trip_instance_id: 1, user_id: 5, permission: 2)
TripPermission.create(trip_instance_id: 3, user_id: 5, permission: 1) #I'm a breakleader of WTWTA 2013
User.create(first_name: 'Matt', last_name: 'Leung', email: 'mattgleung@gmail.com', password: 'password', major: 'EECS', grad_year: 2013) # Member, ID = 6
TripPermission.create(trip_instance_id: 1, user_id: 6, permission: 2)
User.create(first_name: 'Michelle', last_name: 'Chow', email: 'callmemc@gmail.com', password: 'password', major: 'CS/Business', grad_year: 2013) # Member, ID = 7
TripPermission.create(trip_instance_id: 2, user_id: 7, permission: 1)

Post.create(title: 'What are some pressing issues within the food system?', description: 'Americans spend 9.4% of their disposable income on food. That is less 
than any other country in the world!', user_id: 3, trip_id: 1)  # Trip Post created by Justin
Post.create(title: 'Items you should bring to the trip', description: 'Sleeping bag, clothes, books, and AN OPEN MIND! :) :) :)', user_id: 2, trip_instance_id: 1)  # Trip Instance Post created by Jay

