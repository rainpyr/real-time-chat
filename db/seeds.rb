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
