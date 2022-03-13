
########################################################################################
# This program is using csv class to read the file. The data is pushed to an array 
# soccer_data.
# Operations are performed on this soccer_data in order to print the stats
# There are two more data structures, arr and hash in order to format the output to
# be printed.
# To execute the program, the command, ruby ./soccer.rb needs to be executed in the
# directory where the soccer.rb and the soccer.csv files are located.
########################################################################################
require 'csv'

soccer_data = []
hash = {}
arr = []

begin
  
  #reading the contents of the file
	CSV.foreach("./soccer.csv", headers: true) do |row|
		
		soccer_data.push ({ team: row[0], games: row[1].to_i, wins: row[2].to_i, losses: row[3].to_i, draws: row[4].to_i, 
			  		goals: row[5].to_i, goals_allowed: row[6].to_i, points: row[7].to_i})
	end


	puts "Full stats for team with the most draws (include all columns available in CSV file)."
	puts "**************************************************************************************"

	puts "#{soccer_data.max_by{|k| k[:draws]}}"
	puts 

	puts "List the top 10 teams with the highest win percentage."
	puts "**********************************************************"
	# The formula used for winning percentage, is defined as wins divided by the total number of matches played 
	#(i.e. wins plus draws plus losses). A draw counts as a 1⁄2 win. = (wins + 0.5 draws)/(no_of_games)

	highest_win_percentage_teams = soccer_data.group_by{ |k| [k[:team],(k[:wins] + 0.5*k[:draws])/(k[:games])]}

	highest_win_percentage_teams.each_pair{|k,v|  arr << k} # here the team and the win percentage isolated

	arr = arr.sort_by{|a| a[1]}.reverse.first(10) # here the topmost 10 teams are selected

	#Making the output clean by converting it to has
	arr.each do |item|
	  hash[item[0]] = item[1]
	end

	hash.each_pair {|k,v| puts "#{k} => #{v}"}

	puts

	puts "Show the team with the smallest difference in 'for' and 'against' goals."
	puts "**************************************************************************"

	# A team’s goals-against average is figured by multiplying the number of goals allowed by
	# the team by 90, divided by the actual number of minutes played. We take the actual
	# number of minutes played as 90 and this makes against goals = goals_allowed.
	# Formula used for difference in 'for' and 'against' goals = (for goals - against goals).abs

	actual_time_played = 90 # 45 minutes for each halves
	team_with_smallest_difference = soccer_data.min_by{|k| (k[:goals] - ((k[:goals_allowed]*90*1.0)/(actual_time_played))).abs}

	puts "Team = #{team_with_smallest_difference[:team]} -> Goals = #{team_with_smallest_difference[:goals]}, Goals_Allowed = #{team_with_smallest_difference[:goals_allowed]} = Against Goals(Goals_allowed*90)/90"

rescue => e
  puts e
end

