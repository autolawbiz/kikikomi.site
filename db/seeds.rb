# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
names = [ 'Mr. Teacher', 'Alice Johnson', 'Bob Smith', 'Charlie Brown', 'Diana Prince', 'Ethan Hunt']

names.each_with_index {|name, i|
  uid = sprintf "user%03d", i
  User.create(username: uid, fullname: name,
    password: '123456',
    role: ((i == 0) ? 'teacher' : 'student'))
}