#####################################################################################################################
# This file tests the attributes and the methods of the class EplSoccerStats
# by first creating an instance. In order to execute this program , type in the directory,
# where soccer.rb, soccer.csv and soccer_spec.rb, rspec soccer_spec.rb
#####################################################################################################################
require 'rspec'
require_relative 'soccer.rb'

RSpec.describe EplSoccerStats do
 
 # Creation of the instance
  let(:stats) { EplSoccerStats.new('./soccer.csv') }

 # testing the attributes
  describe "attributes" do

    it "responds to stats_data" do
      expect(stats).to respond_to(:stats_data)
    end

     it "initializes stats_data as an array" do
       expect(stats.stats_data).to be_an(Array)
     end

     it "initializes stats_data as empty" do
       expect(stats.stats_data.size).to eq(0)
     end

     it "responds to filename" do
      expect(stats).to respond_to(:filename)
    end

     it "initializes stats_data as a string" do
       expect(stats.filename).to be_a(String)
     end

     it "initializes filename as './soccer.csv'" do
       expect(stats.filename).to eq('./soccer.csv')
     end
  end

  #Testing the methods

  describe "#read_from_csv" do
  	it "reads the correct number of stats" do

  	  stats.read_from_csv
  		stats_size = stats.stats_data.size
  		# check the size of the entries equal to 20
  		expect(stats_size).to eq 20
  	end

  	it "imports the 1st entry" do
       stats.read_from_csv
       # Check the first entry
       entry_one = stats.stats_data[0]

       expect(entry_one[:team]).to eq "Arsenal"
       expect(entry_one[:games]).to eq 38
       expect(entry_one[:wins]).to eq 26
       expect(entry_one[:losses]).to eq 9
       expect(entry_one[:draws]).to eq 3
       expect(entry_one[:goals]).to eq 79
       expect(entry_one[:goals_allowed]).to eq 36
       expect(entry_one[:points]).to eq 87
     end

     it "imports the 2nd entry" do
       stats.read_from_csv
       # Check the first entry
       entry_two = stats.stats_data[1]

       expect(entry_two[:team]).to eq "Liverpool"
       expect(entry_two[:games]).to eq 38
       expect(entry_two[:wins]).to eq 24
       expect(entry_two[:losses]).to eq 8
       expect(entry_two[:draws]).to eq 6
       expect(entry_two[:goals]).to eq 67
       expect(entry_two[:goals_allowed]).to eq 30
       expect(entry_two[:points]).to eq 80
     end

     it "imports the 3rd entry" do
       stats.read_from_csv
       # Check the first entry
       entry_three = stats.stats_data[2]

       expect(entry_three[:team]).to eq "Manchester United"
       expect(entry_three[:games]).to eq 38
       expect(entry_three[:wins]).to eq 24
       expect(entry_three[:losses]).to eq 5
       expect(entry_three[:draws]).to eq 9
       expect(entry_three[:goals]).to eq 87
       expect(entry_three[:goals_allowed]).to eq 45
       expect(entry_three[:points]).to eq 77
     end

     it "imports the 4th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_four = stats.stats_data[3]
       expect(entry_four[:team]).to eq "Newcastle"
       expect(entry_four[:games]).to eq 38
       expect(entry_four[:wins]).to eq 21
       expect(entry_four[:losses]).to eq 8
       expect(entry_four[:draws]).to eq 9
       expect(entry_four[:goals]).to eq 74
       expect(entry_four[:goals_allowed]).to eq 52
       expect(entry_four[:points]).to eq 71
     end

     it "imports the 5th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_five = stats.stats_data[4]
       expect(entry_five[:team]).to eq "Leeds"
       expect(entry_five[:games]).to eq 38
       expect(entry_five[:wins]).to eq 18
       expect(entry_five[:losses]).to eq 12
       expect(entry_five[:draws]).to eq 8
       expect(entry_five[:goals]).to eq 53
       expect(entry_five[:goals_allowed]).to eq 37
       expect(entry_five[:points]).to eq 66
     end

     it "imports the 6th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_six = stats.stats_data[5]
       expect(entry_six[:team]).to eq "Chelsea"
       expect(entry_six[:games]).to eq 38
       expect(entry_six[:wins]).to eq 17
       expect(entry_six[:losses]).to eq 13
       expect(entry_six[:draws]).to eq 8
       expect(entry_six[:goals]).to eq 66
       expect(entry_six[:goals_allowed]).to eq 38
       expect(entry_six[:points]).to eq 64
     end

     it "imports the 7th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_seven = stats.stats_data[6]
       expect(entry_seven[:team]).to eq "West_Ham"
       expect(entry_seven[:games]).to eq 38
       expect(entry_seven[:wins]).to eq 15
       expect(entry_seven[:losses]).to eq 8
       expect(entry_seven[:draws]).to eq 15
       expect(entry_seven[:goals]).to eq 48
       expect(entry_seven[:goals_allowed]).to eq 57
       expect(entry_seven[:points]).to eq 53
     end

     it "imports the 8th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_eight = stats.stats_data[7]
       expect(entry_eight[:team]).to eq "Aston_Villa"
       expect(entry_eight[:games]).to eq 38
       expect(entry_eight[:wins]).to eq 12
       expect(entry_eight[:losses]).to eq 14
       expect(entry_eight[:draws]).to eq 12
       expect(entry_eight[:goals]).to eq 46
       expect(entry_eight[:goals_allowed]).to eq 47
       expect(entry_eight[:points]).to eq 50
     end

     it "imports the 9th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_nine = stats.stats_data[8]
       expect(entry_nine[:team]).to eq "Tottenham"
       expect(entry_nine[:games]).to eq 38
       expect(entry_nine[:wins]).to eq 14
       expect(entry_nine[:losses]).to eq 8
       expect(entry_nine[:draws]).to eq 16
       expect(entry_nine[:goals]).to eq 49
       expect(entry_nine[:goals_allowed]).to eq 53
       expect(entry_nine[:points]).to eq 50
     end

     it "imports the 10th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_ten = stats.stats_data[9]
       expect(entry_ten[:team]).to eq "Blackburn"
       expect(entry_ten[:games]).to eq 38
       expect(entry_ten[:wins]).to eq 12
       expect(entry_ten[:losses]).to eq 10
       expect(entry_ten[:draws]).to eq 16
       expect(entry_ten[:goals]).to eq 55
       expect(entry_ten[:goals_allowed]).to eq 51
       expect(entry_ten[:points]).to eq 46
     end

     it "imports the 11th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_eleven = stats.stats_data[10]
       expect(entry_eleven[:team]).to eq "Southampton"
       expect(entry_eleven[:games]).to eq 38
       expect(entry_eleven[:wins]).to eq 12
       expect(entry_eleven[:losses]).to eq 9
       expect(entry_eleven[:draws]).to eq 17
       expect(entry_eleven[:goals]).to eq 46
       expect(entry_eleven[:goals_allowed]).to eq 54
       expect(entry_eleven[:points]).to eq 45
     end

     it "imports the 12th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_twelve = stats.stats_data[11]
       expect(entry_twelve[:team]).to eq "Middlesbrough"
       expect(entry_twelve[:games]).to eq 38
       expect(entry_twelve[:wins]).to eq 12
       expect(entry_twelve[:losses]).to eq 9
       expect(entry_twelve[:draws]).to eq 17
       expect(entry_twelve[:goals]).to eq 35
       expect(entry_twelve[:goals_allowed]).to eq 47
       expect(entry_twelve[:points]).to eq 45
     end

     it "imports the 13th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_thirteen = stats.stats_data[12]
       expect(entry_thirteen[:team]).to eq "Fulham"
       expect(entry_thirteen[:games]).to eq 38
       expect(entry_thirteen[:wins]).to eq 10
       expect(entry_thirteen[:losses]).to eq 14
       expect(entry_thirteen[:draws]).to eq 14
       expect(entry_thirteen[:goals]).to eq 36
       expect(entry_thirteen[:goals_allowed]).to eq 44
       expect(entry_thirteen[:points]).to eq 44
     end
    
    it "imports the 14th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_fourteen = stats.stats_data[13]
       expect(entry_fourteen[:team]).to eq "Charlton"
       expect(entry_fourteen[:games]).to eq 38
       expect(entry_fourteen[:wins]).to eq 10
       expect(entry_fourteen[:losses]).to eq 14
       expect(entry_fourteen[:draws]).to eq 14
       expect(entry_fourteen[:goals]).to eq 38
       expect(entry_fourteen[:goals_allowed]).to eq 49
       expect(entry_fourteen[:points]).to eq 44
     end

     it "imports the 15th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_fourteen = stats.stats_data[14]
       expect(entry_fourteen[:team]).to eq "Everton"
       expect(entry_fourteen[:games]).to eq 38
       expect(entry_fourteen[:wins]).to eq 11
       expect(entry_fourteen[:losses]).to eq 10
       expect(entry_fourteen[:draws]).to eq 17
       expect(entry_fourteen[:goals]).to eq 45
       expect(entry_fourteen[:goals_allowed]).to eq 57
       expect(entry_fourteen[:points]).to eq 43
     end

     it "imports the 16th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_fifteen = stats.stats_data[15]
       expect(entry_fifteen[:team]).to eq "Bolton"
       expect(entry_fifteen[:games]).to eq 38
       expect(entry_fifteen[:wins]).to eq 9
       expect(entry_fifteen[:losses]).to eq 13
       expect(entry_fifteen[:draws]).to eq 16
       expect(entry_fifteen[:goals]).to eq 44
       expect(entry_fifteen[:goals_allowed]).to eq 62
       expect(entry_fifteen[:points]).to eq 40
     end

     it "imports the 17th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_sixteen = stats.stats_data[16]
       expect(entry_sixteen[:team]).to eq "Sunderland"
       expect(entry_sixteen[:games]).to eq 38
       expect(entry_sixteen[:wins]).to eq 10
       expect(entry_sixteen[:losses]).to eq 10
       expect(entry_sixteen[:draws]).to eq 18
       expect(entry_sixteen[:goals]).to eq 29
       expect(entry_sixteen[:goals_allowed]).to eq 51
       expect(entry_sixteen[:points]).to eq 40
     end

     it "imports the 18th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_seventeen = stats.stats_data[17]
       expect(entry_seventeen[:team]).to eq "Ipswich"
       expect(entry_seventeen[:games]).to eq 38
       expect(entry_seventeen[:wins]).to eq 9
       expect(entry_seventeen[:losses]).to eq 9
       expect(entry_seventeen[:draws]).to eq 20
       expect(entry_seventeen[:goals]).to eq 41
       expect(entry_seventeen[:goals_allowed]).to eq 64
       expect(entry_seventeen[:points]).to eq 36
     end

     it "imports the 19th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_eighteen = stats.stats_data[18]
       expect(entry_eighteen[:team]).to eq "Derby"
       expect(entry_eighteen[:games]).to eq 38
       expect(entry_eighteen[:wins]).to eq 8
       expect(entry_eighteen[:losses]).to eq 6
       expect(entry_eighteen[:draws]).to eq 24
       expect(entry_eighteen[:goals]).to eq 33
       expect(entry_eighteen[:goals_allowed]).to eq 63
       expect(entry_eighteen[:points]).to eq 30
     end

     it "imports the 20th entry" do
       stats.read_from_csv
       # Check the first entry
       entry_nineteen = stats.stats_data[19]
       expect(entry_nineteen[:team]).to eq "Leicester"
       expect(entry_nineteen[:games]).to eq 38
       expect(entry_nineteen[:wins]).to eq 5
       expect(entry_nineteen[:losses]).to eq 13
       expect(entry_nineteen[:draws]).to eq 20
       expect(entry_nineteen[:goals]).to eq 30
       expect(entry_nineteen[:goals_allowed]).to eq 64
       expect(entry_nineteen[:points]).to eq 28
     end
  end

  describe "#team_with_most_draws" do
  	it "returns the team with most draws" do
  		stats.read_from_csv
  		expect((stats.team_with_most_draws)[:team]).to eq "Derby"
  	end
  end

  describe "#team_with_smallest_difference_for_against_goals" do
  	it "returns the team with smallest_difference_for_against_goals" do
  		stats.read_from_csv
  		expect((stats.team_with_smallest_difference_for_against_goals)[:team]).to eq "Aston_Villa"
  	end
  end

  describe "#top_ten_highest_win_teams" do
  	it "returns the top_ten_highest_win_teams" do
  		stats.read_from_csv
  		values = stats.top_ten_highest_win_teams
  		expect((values).keys[0]).to eq "Manchester United"
  		expect((values).keys[1]).to eq "Arsenal"
  		expect((values).keys[2]).to eq "Liverpool"
  		expect((values).keys[3]).to eq "Newcastle"
  		expect((values).keys[4]).to eq "West_Ham"
  		expect((values).keys[5]).to eq "Leeds"
  		expect((values).keys[6]).to eq "Tottenham"
  		expect((values).keys[7]).to eq "Chelsea"
  		expect((values).keys[8]).to eq "Middlesbrough"
  		expect((values).keys[9]).to eq "Southampton"
  	end
  end
end


