class ActorsController < ApplicationController

  def index
    @actor_rows = Actor.all
    render(template: "actor_templates/list")
  end

  def details
    actor_id = params.fetch("id")
    @actor = Actor.all.where(id: actor_id).first
    @actor_roles = Character.all.where(actor_id: actor_id)
    @movies = Movie.all
    @directors = Director.all

  render(template: "actor_templates/bio")
  end

end
