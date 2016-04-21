require 'sinatra'

get '/'  do
	"Weekend Vacation"
	erb :index
end

post '/guess' do
	if params[:trip] == "Miami"
