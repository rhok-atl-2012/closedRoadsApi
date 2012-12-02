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
	@events = Event.all(:start_date.gt => params[:start], :end_date.lt => params[:end])
end

get '/load/csv/?' do	
	File.foreach("data/streets.csv", 'r') do |line|
  		arr = []
  		line_arr = line.split(",") 
  		count = line_arr.count
  		count = count - 1  		
  		
  		File.open('data/data.txt', 'w+') do |f1|  
  			f1.write(line_arr)
  		end
  		
  end
end


get '/test/?' do
		Street.create(street_id: 830662386292 , geo_array: [-84.3671011, 33.7734538, -84.3670325, 33.773625, -84.367064, 33.775468] )
end

