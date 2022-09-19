print "Creating Users..."
User.destroy_all

u1 = User.create!(
  username: "Jeff Winger",
  email: "jwinger@ga.com",
  password: "chicken",
)

u1 = User.create!(
  username: "Annie Edison",
  email: "aedison@ga.com",
  password: "chicken",
)

u1 = User.create!(
  username: "Troy Barnes",
  email: "tbarnes@ga.com",
  password: "chicken",
)

puts "Created #{User.count} users:"

################### SEED PLAYERS #####################

Player.destroy_all

Player.create!(
  name: "Lance Franklin",
  number: 23,
)
Player.create!(
  name: "Luke Hodge",
  number: 15,
)
Player.create!(
  name: "Cyril Rioli",
  number: 33,
)
puts "#{Player.count} Players created"

#################### SEED STATS ########################

Stat.destroy_all

Stat.create!(
  name: "Kicks",
  count: 25,
)
Stat.create!(
  name: "Hanballs",
  count: 4,
)
Stat.create!(
  name: "Goals",
  count: 1,
)

puts "#{Stat.count} Stats created"

#################### SEED TEAMS ########################

Team.destroy_all

Team.create! name: "Hawthorn"
Team.create! name: "Richmond"
Team.create! name: "Sydney"
Team.create! name: "Adelaide"

puts "#{Team.count} Teams created."

#################### SEED MATCHES #######################

Match.destroy_all
Match.create!(
  date: Date.parse("September 10, 2022"),
  ground: "MCG",
  start: Time.parse("2:00pm"),
  finish: Time.parse("5:00pm"),
  home_score: 42,
  away_score: 42,
)
Match.create!(
  date: Date.parse("September 3, 2022"),
  ground: "MCG",
  start: Time.parse("2:00pm"),
  finish: Time.parse("5:00pm"),
  home_score: 118,
  away_score: 102,
)
Match.create!(
  date: Date.parse("September 10, 2022"),
  ground: "SCG",
  start: Time.parse("4:00pm"),
  finish: Time.parse("7:00pm"),
  home_score: 56,
  away_score: 102,
)
# .strftime("%H:%M")
puts "#{Match.count} Matches created."
