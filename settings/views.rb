set :views, ['views']

if Dir.exist?("./middleare")
	Dir.entries("./middleware").each do |directory|
		settings.views << "./middleware/#{directory}/views"
	end
end