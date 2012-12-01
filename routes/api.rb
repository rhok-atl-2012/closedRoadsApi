# Sample Sinatra route handler, see Sinatra docs for more info.

get '/?' do
	'Hello World'
end

# Single event
get '/event/:id/?' do
	@event = Event.get(params[:id])
end

post '/event/:id/?' do
	event = Event.create(name: params[:name], start_date: params[:start_date], end_date: params[:end_date])
	event.saved? ? 'Event succesfully created.' : 'Event creation failed.'
end

put '/event/:id/?' do
	event = Event.update(name: params[:name], start_date: params[:start_date], end_date: params[:end_date])
	event ? 'Event succesfully saved.' : 'Event update failed.'
end

delete '/event/:id/?' do 
	event = Event.destroy(params[:id])
	event ? 'Event succesfully deleted.' : 'Event update deletion failed.'
end

# multiple events

get '/events/:start/:end/?' do
	@events = Event.all(:start_date.gt => params[:start], :edn_date.lt => params[:end])
end
