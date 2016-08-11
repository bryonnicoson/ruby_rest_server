class IdeaController < HomeController

	get '/' do
		# read all ideas
		#binding.pry
		Idea.all.to_json
	end

	get '/:id' do
		# read idea by id
		Idea.find(params[:id]).to_json
	end

	post '/' do
		# create an idea
		Idea.create(:content => params[:content]).to_json
	end

	patch '/' do
		# update an idea by id
		@idea = Idea.find(params[:id])
		@idea.content = params[:content]
		@idea.save
	end

	delete '/' do
		# delete an idea by id
		Idea.find(params[:id]).destroy.to_json
	end

end