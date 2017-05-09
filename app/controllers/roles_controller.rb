class RolesController < ApplicationController
  def index
    render json: Role.where({actor: params[:actor_id]}).as_json({
      only: [:id],
      include: {
        actor: {only: [:name] },
        film: {only: [:title] }
      }
    })
  end
end