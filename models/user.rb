# Sample DataMapper model, see DataMapper docs for more info.

class User
	include DataMapper::Resource

	timestamps :at, :on
	property   :deleted_at, ParanoidDateTime
	
	property :id, Serial
	
	property :email, String
	property :password, BCryptHash

end