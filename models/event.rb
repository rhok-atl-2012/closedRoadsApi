class Event
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
	
	property :name, String, required: true
	property :start_date, Datetime, required: true
	property :end_date, Datetime, required: true
	
end