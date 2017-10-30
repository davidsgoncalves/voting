# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Voter.count == 0
  puts 'Creating Voters!'
  File.open('db/user.txt', 'r').each_line do |line|
    striped_line = line.strip
    email = striped_line
    full_name = striped_line.split('@')[0]
    name = full_name.split('.')[0].capitalize
    last_name = full_name.split('.')[1].capitalize

    Voter.create! name: "#{name} #{last_name}", email: email
  end
  puts 'Voters created!'
end