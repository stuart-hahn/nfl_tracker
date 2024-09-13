# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Team.create([
  { name: 'Packers', city: 'Green Bay', wins: 10, losses: 6 },
  { name: 'Patriots', city: 'New England', wins: 12, losses: 4 }
])

Player.create([
  { name: 'Aaron Rodgers', position: 'QB', team: Team.first, passing_yards: 4000, rushing_yards: 200, touchdowns: 35 },
  { name: 'Davante Adams', position: 'WR', team: Team.first, passing_yards: 0, rushing_yards: 0, touchdowns: 18 }
])
