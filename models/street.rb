class Street
	include DataMapper::Resource

	property :id, Serial
	
	property :street_ids, String, required: true
end