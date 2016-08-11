require 'sinatra/base'

require './controller/home'
require './controller/idea'
require './model/idea'

map('/')		{ run HomeController }
map('/idea') 	{ run IdeaController }