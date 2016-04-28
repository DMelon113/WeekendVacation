require 'sinatra'

get '/'  do
	
	@data = {
		:title => "Weekend Vacation",
		:story => "It’s Thursday evening and you are sitting on your couch. You’ve got Friday off from work because who needs a job? What do you want to do for your weekend off? ",
		:choices => ["Miami", "Wisconsin"]}
	
	
	erb :index
end

get '/decision/:choice' do
	case params[:choice]	
	when data[:choices][0]
	@title = "Weekend Vacation"
	@choice_1 = "Scuba_Dive"
	@choice_2 = "Go_on_a_Boat"
	erb :index

when "Go_on_a_Boat"
	@title = "Weekend Vacation"
	@story = "You make yourself a cocktail and enjoy the scenery. You eventually get bored and start sailing back to shore. A police boat sees you and thinks you are weaving. He makes you take a breathalizer test and you spend the night in prison for a D.U.I "

	when "Scuba_Dive"
	@title = "Weekend Vacation"
	@choice_1 = "Partially_fill_up_tank"
	@choice_2 = "Fully_fill_up_tank"
	erb :index

when "Partially_fill_up_tank"
	@title = "Weekend Vacation"
	@story = "You go for a brief but cool dive. You resurface with no issues and enjoy the rest of your weekend."

when "Fully_fill_up_tank"
	@title = "Weekend Vacation"
	@story = "Wow, you are underwater for a pretty long time. You see a black tip shark who looks pretty chill. You take out the hot dog in your back pocket and attempt to feed him. The shark eats the hot dog and descides that it wants another nibble. R.I.P he bites you right in the face."


	when "Wisconsin"
		@title = "Weekend Vacation"	
		@choice_1 = "Go_on_a_Jet_Ski"
		@choice_2 = "Go_Fishing_on_a_Boat"
		erb :index

	when "Go_on_a_Jet_Ski"
		@title = "Weekend Vacation"
		@story = "You enjoy yourself, but run into a dock causing severe property damage. The owner of the dock isn't having it, and calls the lake police on you. You decide to make a run for it, but your boat is clow. You spend the night in jail"

	when "Go_Fishing_on_a_Boat"
		@title = "Weekend Vacation"
		@story = "You enjoy yourself, but forgot to buy a fishing license. You are jailed and forced to spend the night in prison. "
		end
	end
