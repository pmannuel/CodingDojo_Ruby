# players = Player.includes(:team).limit(10).order("RANDOM()")
# players.each do |player|
#   puts player.team.stadium
# end

# players = Player.joins(:team)
# players.each do |player|
#   puts "*"*50
#   puts "Player Name: %s" % player.name
#   puts "Team Name: %s" % player.team.name
#   puts "Team Mascot: %s" % player.team.mascot
#   puts "Team Stadium: %s" % player.team.stadium
#   puts "*"*50
# end

# players = Player.includes(:team)
# players.each do |player|
#   puts "*"*50
#   puts "Player Name: %s" % player.name
#   puts "Team Name: %s" % player.team.name
#   puts "Team Mascot: %s" % player.team.mascot
#   puts "Team Stadium: %s" % player.team.stadium
#   puts "*"*50
# end

# Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)

# Player.includes(:team).where("teams.stadium = 'Staples Center'").references(:team)
Player.joins(:team).select('players.*', 'teams.name as franchise', 'teams.stadium as stadium').where("teams.stadium = 'Staples Center'")

Team.includes(:players).where("players.name LIKE 'Z%'").references(:players)

Player.joins(:team).select('players.*', 'teams.name as franchise', 'teams.mascot as mascot', 'teams.stadium as stadium')
