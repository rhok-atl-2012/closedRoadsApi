class Event
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
		
	property :name, String, length: 100, required: true
	property :start_date, String, required: true
	property :end_date, String, required: true
	property :street_ids, DecimalArray, required: true, scale: 1, precision: 13
	
end