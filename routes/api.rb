helpers do 
	def nearby center_lat, center_long, radius, lat, long
    unless center_lat.to_f == nil || center_long.to_f == nil
      arr = Array.new                         
      lat.to_f > center_lat.to_f ? lat_diff = lat.to_f - center_lat.to_f.to_f.to_f : lat_diff = center_lat.to_f.to_f - lat.to_f
      long.to_f > center_long.to_f ? long_diff = long.to_f - center_long.to_f.to_f : long_diff = center_long.to_f.to_f - long.to_f
      if lat_diff == 0 && long_diff == 0
        dist_miles = 0
      elsif lat_diff == 0 || long_diff == 0
        dist_miles = (lat_diff + long_diff)*69.04799998422561 
      else
        dist_miles = Math.sqrt(lat_diff**2 + long_diff**2)*69.04799998422561
      end
      dist_miles < radius.to_f ? result = true : result = false
    else
      result = false
    end
    result
  end
end

get '/new/event/:name/:start_date/:end_date/:street_ids/?' do
	arr = params[:street_ids].split("+")
	streets = []
	arr.each {|str| streets << str.to_f }
	event = Event.create(name: params[:name], start_date: params[:start_date], end_date: params[:end_date], street_ids: streets)
	event.saved? ? response = 'Event succesfully created.' : response = 'Event creation failed.'
	return response.to_json	
end

get '/events/:start_date/:end_date/:center_long/:center_lat/:radius/?' do
		events = Event.all(:start_date.gt => params[:start_date], :end_date.lt => params[:end_date])
		results =[]
		unless events.nil? || events.empty?
			events.each do |e|
				street_ids = e.street_ids
				street_ids.each do |street|
					if street.street_id > 1015 && street.street_id < 3110
						st = Street.first(street_id: street.to_i)
						geos = st.geo_array
						count = geos.count/2
						i1 = 0
						i2 = 1
						count.times do 
							within_radius = nearby( params[:center_lat], params[:center_long], params[:radius], geos[i2], geos[i1])
							results << e if within_radius
							i1 += 1
							i2 += 1
						end
					end
				end
			end
			og = results.uniq!
			return results.to_json
		end
end

# testing

get '/?' do
	'Hello World'
end

# Single event
get '/event/:id/?' do
	event = Event.get(params[:id])
	return event.to_json
end