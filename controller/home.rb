class HomeController < Sinatra::Base

	# load gems
	require 'bundler'
	Bundler.require

	set :views, File.expand_path('../../view', __FILE__)
	set :public_folder, File.expand_path('../../public', __FILE__)

	#CREATE TABLE ideas (id INTEGER AUTOINCREMENT PRIMARY KEY, content TEXT);

	ActiveRecord::Base.establish_connection(
		:adapter => "sqlite3",
		:database => "Ideas.rb"
	)

	not_found do 
		{message => 'not found',
			status => 404}.to_json
	end

	get '/' do
		erb :hello
	end

end