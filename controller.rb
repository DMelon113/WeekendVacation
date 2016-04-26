require 'sinatra'

get '/'  do
	@title = "Weekend Vacation"
	@story = "It’s Thursday evening and you are sitting on your couch. You’ve got Friday off from work because who needs a job? What do you want to do for your weekend off? "
	@choice_1 = "Miami"
	@choice_2 = "Wisconsin"
	erb :index
end

get '/decision/:choice' do
	case params[:choice]
	when "Miami"
	@title = "Weekend Vacation"
	@choice_1 = "Scuba Dive"
	@choice_2 = "Go on a Boat"
	erb :index

	when "Wisconsin"
		@title = "Weekend Vacation"	
		@choice_1 = "Go on a Jet Ski"
		@choice_2 = "Go Fishing on a Boat"
		erb :index
		end
	end

get 'activity/decision/:choice' do
	case params[:choice]
	when "Miami/choice_1"
	@title = "Weekend Vacation"

