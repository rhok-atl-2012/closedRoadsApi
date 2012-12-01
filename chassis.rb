# Uses ./Gemfile for gem management
require 'bundler'
Bundler.require

# Sets environment, defaults to development
#   ~: rake app:server env=production
set :environment, ENV['RACK_ENV'] || ENV['env'] || :development

# Requires the necessary files, in order, for the app
Chassis.load_path 'settings', 'libraries', 'models', 'routes'

# Catches all routes and attempts to match them to a view file
#   This must load AFTER all other routes
#   Otherwise it catches all incoming GET requests
# get('/*/?') { erb :"#{params[:splat].first}" }

# Finalizes the models
DataMapper.finalize