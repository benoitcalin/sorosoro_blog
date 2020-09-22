puts "Destroy everything"
Article.destroy_all
User.destroy_all
puts "Articles & Users destroyed"


puts "Creating an Admin user"
User.create(email: "ecolo.sporting.club@gmail.com", password: ENV["PASSWORD_SORO"], admin: true)
puts "Admin created"
