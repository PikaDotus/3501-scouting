require 'nokogiri'
require 'open-uri'

# get document
doc = Nokogiri::HTML(open('http://www2.usfirst.org/2014comp/events/nvlv/rankings.html'))

# there are 9 extra/other <tr> tags
num_teams = doc.css('tr').count - 9
puts num_teams

# per team row
(5...(num_teams + 5)).each do |i|
	# put all its (parsed) data into an array
	team_data = doc.css('tr')[i].text.chop.split("\n")

	# turn all the string values into ints
	team_data.each_with_index do |data, index|
		team_data[index] = data.to_i
	end

	team_number = team_data[1]
	assist_score = team_data[3]
	auto_score = team_data[4]
	truss_and_catch = team_data[5]
	teleop_score = team_data[6]
	matches = team_data[9]

	puts "#{team_number}, #{assist_score}, #{auto_score}, #{truss_and_catch}, #{teleop_score}, #{matches}"
end
