class MoviesController < ApplicationController
	def index
		if params[:q]
			@movies = Movie.search(params[:q])
		else
			@movies = []
		end
	end
end