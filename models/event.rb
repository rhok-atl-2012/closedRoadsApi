class Event
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
		
	property :name, String, length: 100, required: true
	property :start_date, DateTime, required: true
	property :end_date, DateTime, required: true
	property :street_ids, Array, required: true
	
end