class NoteController < HomeController

	get '/' do
		# read all notes
		#binding.pry
		Note.all.to_json
	end

	get '/:id' do
		# read note by id
		Note.find(params[:id]).to_json
	end

	post '/' do
		# create an note
		Note.create(
			:message => params[:message],
			:author => params[:author]
			).to_json
	end

	patch '/' do
		# update an idea by id
		@note = Note.find(params[:id])
		@note.message = params[:message]
		@note.author = params[:author]
		@note.save
	end

	delete '/' do
		# delete an idea by id
		Note.find(params[:id]).destroy.to_json
	end

end