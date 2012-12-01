# Uses rubygems.org as the default gem repo
source :rubygems

# Used for accessing documents over HTTP
require 'net/http'

# Just used for load paths
gem 'chassis', '~> 1.0.0.rc2'

# Used for easy date/time parsing
gem 'chronic', '~> 0.6.7'

# Converts .coffee scripts into .js scripts
gem 'coffee-script', '~> 2.2.0'

# DataMapper is the default ORM
#   Be sure to comment/uncomment the adapters you plan on using
#   See also: ./settings/datamapper.rb
gem 'data_mapper', '~> 1.2.0'
gem 'dm-sqlite-adapter', '~> 1.2.0'
# gem 'dm-mysql-adapter', '~> 1.2.0'
# gem 'dm-postgres-adapter', '~> 1.2.0'

# Used for parsing JSON to and from Ruby objects
gem 'json', '~> 1.7.4'

# Used for converting .less stylesheets into .css stylesheets
gem 'less', '~> 2.2.1'

# Used for sending emails
gem 'pony', '~> 1.4'

# Used for temporary flash messages
gem 'rack-flash3', '~> 1.0.1', require: 'rack-flash'

# Used for parsing markdown into html
gem 'redcarpet', '~> 2.1.1'

# Used for converting .scss and .sass stylesheets into .css stylesheets
gem 'sass', '~> 3.2.1'

# Used for route handling, view rendering, helpers, etc.
gem 'sinatra', '~> 1.3.3'
gem 'sinatra-contrib', '~> 1.3.1'
require 'sinatra/namespace'

# Used for asset packaging
gem 'sprockets', '~> 2.0'

# Embeds the V8 JavaScript runtime in Ruby
gem 'therubyracer', '~> 0.10.2'

# Requires gems from vendor templates
#   Be careful - this can easily cause conflicts
Dir.glob(File.join(File.dirname(__FILE__), 'middleware', '**', 'Gemfile')) { |gemfile| eval(IO.read(gemfile), binding) }