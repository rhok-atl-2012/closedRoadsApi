# Sets up a route handler for each asset type (./settings/assets.rb) and using the proper content type

settings.asset_types.each do |asset|
	get "/#{asset[:path]}/?" do
		content_type asset[:content_type]
		settings.sprockets["#{params[:splat].first}.#{asset[:extension]}"]
	end
end