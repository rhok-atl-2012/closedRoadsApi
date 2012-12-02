class Street
	include DataMapper::Resource

	property :id, Serial

	property :street_id, Integer, required: true
	# long, lat
	property :geo_array, DecimalArray, required: true, scale: 10, precision: 13
	
end