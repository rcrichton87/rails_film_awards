class ActorsController < ApplicationController
  def index
    render json: Actor.all
  end
end