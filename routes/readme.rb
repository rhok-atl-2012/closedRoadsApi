# Sample Sinatra route handler, see Sinatra docs for more info.

get '/?' do
	
	@readme = ''
	
	File.open('./README.md') do |file|
		file.each_line { |line| @readme << line }
	end
	
	erb :readme
end