class MoviesController < ApplicationController

  def index
    @movie_rows = Movie.all
    @directors = Director.all
    render(template: "movie_templates/list")
  end

  def details
    movie_id = params.fetch("id")
    @movie = Movie.all.where(id: movie_id).first
    @director = Director.all


    render(template: "movie_templates/description")
  end
end
