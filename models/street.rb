class Street
	include DataMapper::Resource

	property :id, Serial
	
	property :streets, String, required: true
end