puts "Destroy everything"
Article.destroy_all
User.destroy_all
puts "Articles & Users destroyed"

puts "Creating an Admin user"
User.create!(email: "ecolo.sporting.club@gmail.com", password: ENV["PASSWORD_SORO"], admin: true)
puts "Admin created"

puts "Creating some Contacts (newsletter subscriptions)"
Contact.create!(email: 'benoit.calin@gmail.com')
Contact.create!(email: 'ecolo.sporting.club@gmail.com')
Contact.create!(email: 'clement.fradet@live.fr')
Contact.create!(email: 'felix.salacroup@gmail.com')
puts "#{Contact.count} Contacts created"
