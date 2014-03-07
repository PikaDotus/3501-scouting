class NotesController < ApplicationController
	def index
	end

	def show
		@note = Note.find(params[:id])
	end

	def new
	end

	def create
		match_url = note_params["match_url"]
		logger.debug "note params: #{note_params}"

		logger.debug "match_url: #{match_url}"

		real_note_params = note_params.slice("content")
		match_url = match_url.split("/").last.to_i

		logger.debug "match_id: #{match_url}"
		logger.debug "real_note_params: #{real_note_params}"

		match = Match.find(match_url)
		@note = match.notes.build(real_note_params)
		@note.save

		redirect_to match
	end

	private

		def note_params
			params.require(:note).permit(:content, :match_url)
		end
end
