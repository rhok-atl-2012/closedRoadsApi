class Street
	include DataMapper::Resource

	property :id, Serial

	property :street_id, Integer, required: true	
	property :geo_array, DecimalArray, required: true, precision: 10
	
end