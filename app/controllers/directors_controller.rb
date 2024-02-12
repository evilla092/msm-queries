class DirectorsController < ApplicationController

  def index
    @director_rows = Director.all

    render(template: "director_templates/list")
  end

  def details
    director_id = params.fetch("id")
    @director = Director.all.where(id: director_id).first
    @director_films = Movie.all.where(director_id: director_id)

    render(template: "director_templates/bio")
  end

  def youngest
    @young_director = Director.all.order(dob: :desc).where.not(dob: nil).first
    render(template: "director_templates/youngest")
  end

  def eldest
    @old_director = Director.all.order(dob: :asc).where.not(dob: nil).first
    render(template: "director_templates/eldest")
  end
end
