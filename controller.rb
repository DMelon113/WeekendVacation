require 'sinatra'

get '/'  do
	"Weekend Vacation"
	erb :index
end

post '/guess' do
	if params[:trip] == "Miami"
		erb :miami
	elsif params[:trip] == "Wisconsin"

		end
	end
post '/guess/miami' do
			if params[:activity] == "Scuba"
			erb :scuba
		end
	end


