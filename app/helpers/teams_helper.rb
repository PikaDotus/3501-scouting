module TeamsHelper

	# Returns the img of the team's robot
	def pic_for(team)
		if team.pic_url
			image_tag(team.pic_url, alt: team.number, class: 'team-pic', width: 400)
		end
	end
end
