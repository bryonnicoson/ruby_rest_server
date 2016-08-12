require 'sinatra/base'

require './controller/home'
require './controller/idea'
require './controller/note'
require './model/idea'
require './model/note'

map('/')		{ run HomeController }
map('/idea') 	{ run IdeaController }
map('/note')	{ run NoteController }