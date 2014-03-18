module TeamsHelper

	# Returns the img of the team's robot
	def pic_for(team)
		if team.pic_url
			image_tag(team.pic_url, alt: team.number, class: 'team-pic', width: 400)
		end
	end

	def note_for(team, email)
		eligible_matches = @matches.where(scouter_email: 'loganh@pobox.com')

		offset = rand(eligible_matches.count)
		final_note = eligible_matches.first(offset: offset).notes.random
	end

	def stat_for(team, stat)
		require 'open-uri'

		doc = Nokogiri::HTML(open('http://www2.usfirst.org/2014comp/events/cama/rankings.html'))

		# there are 9 extra/other <tr> tags
		num_teams = doc.css('tr').count  - 9

		curTeam = 5
		team_data = -1

		begin
			team_data = doc.css('tr')[curTeam].text.chop.split("\n")

			team_data.each_with_index do |data, index|
				team_data[index] = data.to_i
			end
		end while (team_number != team.number) and (curTeam <= num_teams)

		case stat
			when 'team_number'
				team_data[1]
			when 'assist_score'
				team_data[3]
			when 'auto_score'
				team_data[4]
			when 'truss_and_catch'
				team_data[5]
			when 'teleop_score'
				team_data[6]
			when 'matches'
				team_data[9]
			else "?"
		end
	end
end
